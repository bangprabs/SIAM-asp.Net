Imports System.Data.SqlClient

Public Class _default1
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

        Call BindBerita()
    End Sub

    Private Sub BindBerita()
        Dim conString As String = ConfigurationManager.ConnectionStrings("conn").ConnectionString
        Using con As New SqlConnection(conString)
            Dim sqlString As String

            sqlString = "select id_berita, tanggal_berita, pembuat_berita, judul_berita, gambar_berita, isi_berita from t_berita order by tanggal_berita desc" & Chr(10)

            Using cmd As New SqlCommand(sqlString)
                Using sda As New SqlDataAdapter()
                    cmd.Connection = con
                    sda.SelectCommand = cmd
                    Using dt As New DataTable()
                        sda.Fill(dt)
                        'lvBerita.DataSource = dt
                        'lvBerita.DataBind()
                    End Using
                End Using
            End Using
        End Using
    End Sub

End Class