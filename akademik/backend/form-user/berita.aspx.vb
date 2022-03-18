Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Globalization
Imports System.Drawing.Imaging
Imports System.Drawing.Drawing2D
Imports System.Drawing
Imports System.IO


Public Class berita
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

        If Not Page.IsPostBack Then
            If Session("BlnLoggedIn") = False Then
                Response.Redirect("login.aspx")
            Else
                Call InfoUser()
                Call BindBerita()
            End If
        End If
    End Sub

    Protected Sub InfoUser()
        myConnection = New SqlConnection(WebConfigurationManager.ConnectionStrings("conn").ConnectionString)
        myConnection.Open()

        sqlString = "select * from m_admin_login" & Chr(10)
        sqlString = sqlString & "where nama_user = '" & Session("UserAuthentication") & "'"

        myCommand = New SqlCommand(sqlString, myConnection)
        myCommand.CommandTimeout = 0

        myReader = myCommand.ExecuteReader()
        If myReader.Read = True Then
            lblNamaDua.Text = myReader("nama_lengkap").ToString
        End If
    End Sub

    Private Sub lnkLogout_ServerClick(sender As Object, e As System.EventArgs) Handles lnkLogout.ServerClick
        Session("BlnLoggedIn") = False
        Session("UserAuthentication") = ""
        Response.Write("<script> window.open('login.aspx', '_self'); </script>")
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
                        lvBerita.DataSource = dt
                        lvBerita.DataBind()
                    End Using
                End Using
            End Using
        End Using
    End Sub

    Protected Sub RinciBerita(ByVal sender As Object, ByVal e As EventArgs)
        'Dim lnkNomor As LinkButton = TryCast(sender, LinkButton)
        'Dim noBerita As String = lnkNomor.Text

        Dim btn As LinkButton = CType((sender), LinkButton)
        Dim noBerita As String = btn.CommandArgument

        Response.Redirect("beritaRinci.aspx?id_berita=" + noBerita)
    End Sub

End Class