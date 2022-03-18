Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Globalization
Imports System.Security.Cryptography

Public Class login
    Inherits System.Web.UI.Page

    Dim myConnection As SqlConnection
    Dim sqlString As String
    Dim myCommand As SqlCommand
    Dim myReader As SqlDataReader
    Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("conn").ConnectionString)
    Dim namauser As String
    Dim pwd As String
    Dim pName As String
    Dim adaUser As Integer
    Dim sdhValid As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If con.State = ConnectionState.Closed Then
            con.Open()
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

    Private Sub Messagebox(ByVal Message As String)
        Dim lblMessageBox As New Label()

        lblMessageBox.Text = "<script language='javascript'>" + Environment.NewLine & "window.alert('" & Message & "')</script>"
        Page.Controls.Add(lblMessageBox)
    End Sub

    Private Sub btnMasuk_ServerClick(sender As Object, e As EventArgs) Handles btnMasuk.ServerClick
        If Len(Trim(txtNIM.Value)) = 0 Then
            Messagebox("Kolom Nama User Belum Diisi !")
            txtNIM.Focus()
            Return
        End If

        If Len(Trim(txtPassword.Value)) = 0 Then
            Messagebox("Kolom Kata Sandi Belum Diisi !")
            txtPassword.Focus()
            Return
        End If

        namauser = txtNIM.Value
        pwd = txtPassword.Value
        pName = ""

        Dim hasilPass As String
        Dim aktivasi As String

        myConnection = New SqlConnection(WebConfigurationManager.ConnectionStrings("conn").ConnectionString)
        myConnection.Open()

        sqlString = "select aktivasi, sandi from m_user_login where nim = '" & namauser & "'"
        myCommand = New SqlCommand(sqlString, myConnection)
        myReader = myCommand.ExecuteReader()
        If myReader.Read = True Then
            hasilPass = myReader("sandi").ToString
            aktivasi = myReader("aktivasi").ToString
        Else
            hasilPass = ""
            aktivasi = "False"
        End If
        myConnection.Close()

        If hasilPass = "" Then
            Session("UserAuthentication") = ""
            Response.Write("<script>alert('Anda salah memasukkan Nama User / Nama User tidak ada.')</script>")
            Return
        ElseIf aktivasi = "False" Then
            Session("UserAuthentication") = ""
            Response.Write("<script>alert('User Anda belum diaktivasi.')</script>")
            Return
        ElseIf pwd = DecryptString(hasilPass) Then
            Session("UserAuthentication") = namauser
            Session("BlnLoggedIn") = True
            Response.Write("<script> window.open('beranda.aspx', '_self'); </script>")
            Return
        Else
            Session("UserAuthentication") = ""
            Response.Write("<script>alert('Login Anda tidak berhasil. Coba lagi!')</script>")
            Return
        End If
    End Sub

    Private Sub btnHome_ServerClick(sender As Object, e As EventArgs) Handles btnHome.ServerClick
        Response.Write("<script> window.open('../../../default.aspx', '_self'); </script>")
    End Sub
End Class