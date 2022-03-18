Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.IO
Imports System.Text
Imports System.Security.Cryptography

Public Class verifikasi
    Inherits System.Web.UI.Page

    Dim connectionString As String = WebConfigurationManager.ConnectionStrings("conn").ConnectionString
    Dim myConnection As SqlConnection
    Dim sqlString As String
    Dim myCommand As SqlCommand
    Dim myReader As SqlDataReader
    Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("conn").ToString())
    Private USERID As String, USERNAME As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Decrypt(HttpUtility.UrlDecode(Request.QueryString("USER_ID"))) IsNot Nothing Then
            USERID = Decrypt(HttpUtility.UrlDecode(Request.QueryString("USER_ID")))
            Dim cmd As New SqlCommand("Update m_user_login set aktivasi = 1 where id_user=@USER_ID", con)
            cmd.Parameters.AddWithValue("@USER_ID", USERID)
            con.Open()
            cmd.ExecuteNonQuery()

            myConnection = New SqlConnection(WebConfigurationManager.ConnectionStrings("conn").ConnectionString)
            myConnection.Open()

            sqlString = "select nama_lengkap from m_user_login" & Chr(10)
            sqlString = sqlString & "where id_user = '" & USERID & "'"

            myCommand = New SqlCommand(sqlString, myConnection)
            myCommand.CommandTimeout = 0

            myReader = myCommand.ExecuteReader()
            If myReader.Read = True Then
                lblAktivasi.Text = "Hai " & myReader("nama_lengkap").ToString
            End If

        End If
    End Sub

    Private Function Decrypt(cipherText As String) As String
        Dim EncryptionKey As String = "MAKV2SPBNI99212"
        cipherText = cipherText.Replace(" ", "+")
        Dim cipherBytes As Byte() = Convert.FromBase64String(cipherText)
        Using encryptor As Aes = Aes.Create()
            Dim pdb As New Rfc2898DeriveBytes(EncryptionKey, New Byte() {&H49, &H76, &H61, &H6E, &H20, &H4D,
             &H65, &H64, &H76, &H65, &H64, &H65,
             &H76})
            encryptor.Key = pdb.GetBytes(32)
            encryptor.IV = pdb.GetBytes(16)
            Using ms As New MemoryStream()
                Using cs As New CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write)
                    cs.Write(cipherBytes, 0, cipherBytes.Length)
                    cs.Close()
                End Using
                cipherText = Encoding.Unicode.GetString(ms.ToArray())
            End Using
        End Using
        Return cipherText
    End Function

End Class