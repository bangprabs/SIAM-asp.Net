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

Public Class WebForm1
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
                Call BindData()
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

    Private Sub lnkLogout_ServerClick(sender As Object, e As System.EventArgs) Handles lnkLogout.ServerClick
        Session("BlnLoggedIn") = False
        Session("UserAuthentication") = ""
        Response.Write("<script> window.open('login.aspx', '_self'); </script>")
    End Sub

    Private Sub BindData()
        Dim constr As String = ConfigurationManager.ConnectionStrings("conn").ConnectionString
        Using con As New SqlConnection(constr)
            Dim sqlString As String
            sqlString = "select * from m_kalender_akademik"
            Using cmd As New SqlCommand(sqlString)
                Using sda As New SqlDataAdapter()
                    cmd.Connection = con
                    sda.SelectCommand = cmd
                    Using dt As New DataSet
                        sda.Fill(dt)
                        Dim Pds1 As New PagedDataSource()
                        Pds1.DataSource = dt.Tables(0).DefaultView
                        Pds1.AllowPaging = True
                        Pds1.PageSize = 10
                        Pds1.CurrentPageIndex = CurrentPage
                        lblPaging.Text = "Showing Page: " & (CurrentPage + 1).ToString() & " of " & Pds1.PageCount.ToString()
                        btnPrevious.Enabled = Not Pds1.IsFirstPage
                        btnNext.Enabled = Not Pds1.IsLastPage

                        rptData.DataSource = Pds1
                        rptData.DataBind()
                    End Using
                End Using
            End Using
        End Using
    End Sub

    Public Property CurrentPage() As Integer
        Get
            Dim s1 As Object = Me.ViewState("CurrentPage")
            If s1 Is Nothing Then
                Return 0
            Else
                Return CInt(s1)
            End If
        End Get
        Set(ByVal value As Integer)
            Me.ViewState("CurrentPage") = value
        End Set
    End Property

    Private Sub btnNext_Click1(sender As Object, e As System.EventArgs) Handles btnNext.Click
        CurrentPage += 1
        BindData()
    End Sub

    Private Sub btnPrevious_Click1(sender As Object, e As System.EventArgs) Handles btnPrevious.Click
        CurrentPage -= 1
        BindData()
    End Sub

End Class