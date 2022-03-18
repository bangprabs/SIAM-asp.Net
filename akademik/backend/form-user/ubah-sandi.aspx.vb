Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Net.Mail
Imports System.Web.Configuration
Imports System.Security.Cryptography
Imports System.Collections.Generic
Imports System.IO
Imports System.Net
Imports System.Web.Services


Public Class ubah_sandi
    Inherits System.Web.UI.Page

    Dim myConnection As SqlConnection
    Dim sqlString As String
    Dim myCommand As SqlCommand
    Dim myReader As SqlDataReader
    Dim oldPassword As String
    Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("conn").ConnectionString)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If con.State = ConnectionState.Closed Then
            con.Open()
        End If

        If Not Page.IsPostBack Then
            If Session("BlnLoggedIn") = False Then
                Response.Redirect("login.aspx")
            Else
                Call InfoUser()
            End If
        End If
    End Sub

    Protected Sub InfoUser()
        myConnection = New SqlConnection(WebConfigurationManager.ConnectionStrings("conn").ConnectionString)
        myConnection.Open()

        sqlString = "select * from m_user_login" & Chr(10)
        sqlString = sqlString & "where nim = '" & Session("UserAuthentication") & "'"

        myCommand = New SqlCommand(sqlString, myConnection)
        myCommand.CommandTimeout = 0

        myReader = myCommand.ExecuteReader()
        If myReader.Read = True Then
            'lblNamaLengkap.Text = myReader("nama_lengkap").ToString
            'lblNIM.Text = myReader("nim").ToString
            lblNamaDua.Text = myReader("nama_lengkap").ToString
        End If
    End Sub

    Const passphrase As String = "PassW0rd"

    Public Shared Function DecryptString(ByVal Message As String) As String
        Dim Results() As Byte
        Dim UTF8 As System.Text.UTF8Encoding = New System.Text.UTF8Encoding()
        Dim HashProvider As MD5CryptoServiceProvider = New MD5CryptoServiceProvider()
        Dim TDESKey() As Byte = HashProvider.ComputeHash(UTF8.GetBytes(passphrase))
        Dim TDESAlgorithm As TripleDESCryptoServiceProvider = New TripleDESCryptoServiceProvider()
        TDESAlgorithm.Key = TDESKey
        TDESAlgorithm.Mode = CipherMode.ECB
        TDESAlgorithm.Padding = PaddingMode.PKCS7
        Dim DataToDecrypt() As Byte = Convert.FromBase64String(Message)
        Try
            Dim Decryptor As ICryptoTransform = TDESAlgorithm.CreateDecryptor()
            Results = Decryptor.TransformFinalBlock(DataToDecrypt, 0, DataToDecrypt.Length)
        Finally
            TDESAlgorithm.Clear()
            HashProvider.Clear()
        End Try
        Return UTF8.GetString(Results)
    End Function

    Public Shared Function EncryptData(ByVal Message As String) As String
        Dim Results() As Byte
        Dim UTF8 As System.Text.UTF8Encoding = New System.Text.UTF8Encoding()
        Dim HashProvider As MD5CryptoServiceProvider = New MD5CryptoServiceProvider()
        Dim TDESKey() As Byte = HashProvider.ComputeHash(UTF8.GetBytes(passphrase))
        Dim TDESAlgorithm As TripleDESCryptoServiceProvider = New TripleDESCryptoServiceProvider()
        TDESAlgorithm.Key = TDESKey
        TDESAlgorithm.Mode = CipherMode.ECB
        TDESAlgorithm.Padding = PaddingMode.PKCS7
        Dim DataToEncrypt() As Byte = UTF8.GetBytes(Message)
        Try
            Dim Encryptor As ICryptoTransform = TDESAlgorithm.CreateEncryptor()
            Results = Encryptor.TransformFinalBlock(DataToEncrypt, 0, DataToEncrypt.Length)
        Finally
            TDESAlgorithm.Clear()
            HashProvider.Clear()
        End Try
        Return Convert.ToBase64String(Results)
    End Function

    Private Sub Messagebox(ByVal Message As String)
        Dim lblMessageBox As New Label()

        lblMessageBox.Text = "<script language='javascript'>" + Environment.NewLine & "window.alert('" & Message & "')</script>"
        Page.Controls.Add(lblMessageBox)
    End Sub

    Private Sub lnkLogout_ServerClick(sender As Object, e As System.EventArgs) Handles lnkLogout.ServerClick
        Session("BlnLoggedIn") = False
        Session("UserAuthentication") = ""
        Response.Write("<script> window.open('login.aspx', '_self'); </script>")
    End Sub

    Private Sub btnUbah_ServerClick(sender As Object, e As EventArgs) Handles btnUbah.ServerClick
        myConnection = New SqlConnection(WebConfigurationManager.ConnectionStrings("conn").ConnectionString)
        myConnection.Open()

        sqlString = String.Empty
        sqlString = "select sandi from m_user_login where nim = '" & Session("UserAuthentication") & "'"

        myCommand = New SqlCommand(sqlString, myConnection)
        myCommand.CommandTimeout = 0

        myReader = myCommand.ExecuteReader()

        If myReader.Read = True Then
            oldPassword = myReader("sandi").ToString
        End If

        If txtLama.Value <> DecryptString(oldPassword) Then
            Messagebox("Kata Sandi lama tidak sama dengan Kata Sandi Baru !")
            Return
        End If

        If Len(Trim(txtBaru.Value)) < 6 Then
            Messagebox("Panjang minimun Kata Sandi adalah 6 karakter !")
            Return
        End If

        If txtBaru.Value <> txtUlangi.Value Then
            Messagebox("Konfirmasi Kata Sandi tidak sama dengan Kata Sandi baru !")
            Return
        End If
        myConnection.Close()

        sqlString = String.Empty
        sqlString = "update m_user_login set sandi = '" & EncryptData(txtUlangi.Value) & "'" & Chr(10)
        sqlString = sqlString & "where nim = '" & Session("UserAuthentication") & "'"

        myConnection = New SqlConnection(WebConfigurationManager.ConnectionStrings("conn").ConnectionString)
        myConnection.Open()

        myCommand = New SqlCommand(sqlString, myConnection)
        myCommand.CommandTimeout = 0
        myCommand.CommandType = CommandType.Text
        myCommand.ExecuteNonQuery()
        myConnection.Close()

        Messagebox("Kata sandi telah berubah.")
        txtLama.Value = String.Empty
        txtBaru.Value = String.Empty
        txtUlangi.Value = String.Empty
    End Sub
End Class