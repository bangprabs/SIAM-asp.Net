Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Net.Mail
Imports System.Web.Configuration
Imports System.Security.Cryptography
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Globalization
Imports System.IO
Imports System.Text
Imports System.Net
Imports System.Web.Services


Public Class registerEmail
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
            Sendemail()
            cmd.Dispose()

            'Response.Write("<script>alert('Pendaftaran Telah Berhasil, Tunggu Hingga Pihak Kami Melakukan Persetujuan !')</script>")
            Response.Write("<script>alert('Pendaftaran Telah Berhasil, Silahkan cek Email Anda untuk aktivasi !')</script>")
            'Response.Write("<script> window.open('login.aspx', '_self'); </script>")
        Catch ex As Exception
            Console.WriteLine("An Error Occurred : '{0}'", ex)
        End Try

    End Sub

    Private Function Encrypt(clearText As String) As String
        Dim EncryptionKey As String = "MAKV2SPBNI99212"
        Dim clearBytes As Byte() = Encoding.Unicode.GetBytes(clearText)
        Using encryptor As Aes = Aes.Create()
            Dim pdb As New Rfc2898DeriveBytes(EncryptionKey, New Byte() {&H49, &H76, &H61, &H6E, &H20, &H4D,
             &H65, &H64, &H76, &H65, &H64, &H65,
             &H76})
            encryptor.Key = pdb.GetBytes(32)
            encryptor.IV = pdb.GetBytes(16)
            Using ms As New MemoryStream()
                Using cs As New CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write)
                    cs.Write(clearBytes, 0, clearBytes.Length)
                    cs.Close()
                End Using
                clearText = Convert.ToBase64String(ms.ToArray())
            End Using
        End Using
        Return clearText
    End Function

    Public Sub Sendemail()
        Dim idUSER As String
        Dim ActivationUrl As String
        Try
            Dim message As New MailMessage()
            message.From = New MailAddress("jamesbongngoding@gmail.com", "Admin")
            message.[To].Add(txtEmail.Value)
            message.Subject = "Email Verifikasi"
            idUSER = HttpUtility.UrlEncode(Encrypt(GetUserID(txtEmail.Value)))
            '-- buat lokal
            'ActivationUrl = Server.HtmlEncode("http://localhost:29299/member/activation/verification.aspx?USER_ID=" & GetUserID(txtEmail.Text))
            '-- yg diencrypt
            'ActivationUrl = Server.HtmlEncode("http://localhost:25145/member/activation/verification.aspx?USER_ID=" & idUSER)

            ActivationUrl = Server.HtmlEncode("http://localhost:64709/backend/form-user/verifikasi.aspx?USER_ID=" & idUSER)

            Dim body As String = "Halo " + txtNamaLengkap.Value.Trim() + ","
            body += "<br /><br />Silahkan klik link berikut untuk mengaktifkan akun anda"
            body += "<br /><a href = '" + ActivationUrl + "'>Klik di sini untuk mengaktifkan akun Anda.</a>"
            body += "<br /><br />Terima kasih."
            body += "<br /><br />"
            body += "<br /><br />Email ini dikirim otomatis melalui website AkuPadamu.com"
            message.Body = body

            message.IsBodyHtml = True
            Dim smtp As New SmtpClient()
            smtp.Host = "smtp.gmail.com"
            smtp.Port = 587
            smtp.Credentials = New System.Net.NetworkCredential("jamesbongngoding@gmail.com", "joki12345")
            smtp.EnableSsl = True
            smtp.Send(message)
        Catch ex As Exception
        End Try
    End Sub

    Private Function GetUserID(ByVal Email As String) As String
        'If con.State = ConnectionState.Closed Then
        '    con.Open()
        'End If

        Dim cmd As New SqlCommand("SELECT id_user FROM m_user_login WHERE email=@EMAIL", con)
        cmd.Parameters.AddWithValue("@EMAIL", txtEmail.Value)
        Dim UserID As String = cmd.ExecuteScalar().ToString()
        Return UserID
    End Function

End Class