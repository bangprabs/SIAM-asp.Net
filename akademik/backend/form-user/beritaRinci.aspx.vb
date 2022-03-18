Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Globalization
Imports System.Drawing.Imaging
Imports System.Drawing.Drawing2D
Imports System.Drawing
Imports System.IO

Public Class beritaRinci
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
                Call ViewData()
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

    Private Sub ViewData()
        Dim cmd As SqlCommand = New SqlCommand("up_apl_view_dtl_berita", New SqlConnection(WebConfigurationManager.ConnectionStrings("conn").ConnectionString))
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandTimeout = 0

        cmd.Parameters.AddWithValue("@f_id_berita", Convert.ToInt32(Request.QueryString("id_berita")))
        cmd.Connection.Open()
        myReader = cmd.ExecuteReader()

        If myReader.Read = True Then
            'gambar.Src = "../../../images/news/" & myReader("gambar_berita").ToString
            imgBerita.ImageUrl = "../../backend/images/news/" & myReader("gambar_berita").ToString
            lblJudul.Text = myReader("judul_berita").ToString
            lblNamaPembuat.Text = "Oleh : " & myReader("pembuat_berita").ToString
            lblTanggal.Text = "Pada : " & DateTime.Parse(myReader("tanggal_berita").ToString).ToString("dd-MMM-yyy hh:mm:ss tt")
            ltlBerita.Text = myReader("isi_berita").ToString
        End If
    End Sub


End Class