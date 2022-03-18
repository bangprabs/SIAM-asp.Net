Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Globalization
Imports System.Security.Cryptography


Public Class register
    Inherits System.Web.UI.Page

    Dim myConnection As SqlConnection
    Dim sqlString As String
    Dim myCommand As SqlCommand
    Dim myReader As SqlDataReader
    Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("conn").ConnectionString)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If con.State = ConnectionState.Closed Then
            con.Open()
        End If
    End Sub

    Const passphrase As String = "PassW0rd"

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

    Private Sub btnDaftar_ServerClick(sender As Object, e As EventArgs) Handles btnDaftar.ServerClick
        If Len(Trim(txtNIM.Value)) = 0 Then
            Messagebox("Kolom NIM Belum Diisi !")
            txtNIM.Focus()
            Return
        End If
        If Len(Trim(txtNamaLengkap.Value)) = 0 Then
            Messagebox("Kolom Nama Belum Diisi !")
            txtNamaLengkap.Focus()
            Return
        End If
        If Len(Trim(txtEmail.Value)) = 0 Then
            Messagebox("Kolom Email Belum Diisi !")
            txtEmail.Focus()
            Return
        End If

        If Len(Trim(txtPassword.Value)) = 0 Then
            Messagebox("Kolom Password Belum Diisi !")
            txtPassword.Focus()
            Return
        End If

        If txtPassword.Value <> txtKonfirmasi.Value Then
            Messagebox("Kolom Ulangi Kata Sandi Tidak Sama Dengan Kata Sandi !")
            txtKonfirmasi.Focus()
            Return
        End If

        Try
            Dim cmd As SqlCommand = New SqlCommand("up_apl_insert_user", con)
            cmd.CommandType = CommandType.StoredProcedure
            cmd.CommandTimeout = 0

            cmd.Parameters.AddWithValue("@f_nim", txtNIM.Value)
            cmd.Parameters.AddWithValue("@f_nama_lengkap", txtNamaLengkap.Value)
            cmd.Parameters.AddWithValue("@f_email", txtEmail.Value)
            cmd.Parameters.AddWithValue("@f_sandi", EncryptData(txtPassword.Value))
            cmd.ExecuteNonQuery()
            cmd.Dispose()

            Response.Write("<script>alert('Pendaftaran Telah Berhasil, Tunggu Hingga Pihak Kami Melakukan Persetujuan !')</script>")
            Response.Write("<script> window.open('login.aspx', '_self'); </script>")
        Catch ex As Exception
            Console.WriteLine("An Error Occurred : '{0}'", ex)
        End Try

    End Sub
End Class