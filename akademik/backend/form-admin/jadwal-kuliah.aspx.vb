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

Public Class jadwal_kuliah
    Inherits System.Web.UI.Page

    Dim myConnection As SqlConnection
    Dim sqlString As String
    Dim myCommand As SqlCommand
    Dim myReader As SqlDataReader
    Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("conn").ConnectionString)

    Private Sub MenuSatu()
        myConnection = New SqlConnection(WebConfigurationManager.ConnectionStrings("conn").ConnectionString)
        myConnection.Open()

        sqlString = "select kode_modul from m_akses_modul" & Chr(10)
        sqlString = sqlString & "where nama_user = '" & Session("UserAuthentication") & "' and kode_modul = 1"

        myCommand = New SqlCommand(sqlString, myConnection)
        myCommand.CommandTimeout = 0

        myReader = myCommand.ExecuteReader()
        If myReader.Read = True Then
            plhSatu.Visible = True
        Else
            plhSatu.Visible = False
        End If
    End Sub

    Private Sub MenuDua()
        myConnection = New SqlConnection(WebConfigurationManager.ConnectionStrings("conn").ConnectionString)
        myConnection.Open()

        sqlString = "select kode_modul from m_akses_modul" & Chr(10)
        sqlString = sqlString & "where nama_user = '" & Session("UserAuthentication") & "' and kode_modul = 2"

        myCommand = New SqlCommand(sqlString, myConnection)
        myCommand.CommandTimeout = 0

        myReader = myCommand.ExecuteReader()
        If myReader.Read = True Then
            plhDua.Visible = True
        Else
            plhDua.Visible = False
        End If
    End Sub

    Private Sub MenuTiga()
        myConnection = New SqlConnection(WebConfigurationManager.ConnectionStrings("conn").ConnectionString)
        myConnection.Open()

        sqlString = "select kode_modul from m_akses_modul" & Chr(10)
        sqlString = sqlString & "where nama_user = '" & Session("UserAuthentication") & "' and kode_modul = 3"

        myCommand = New SqlCommand(sqlString, myConnection)
        myCommand.CommandTimeout = 0

        myReader = myCommand.ExecuteReader()
        If myReader.Read = True Then
            plhTiga.Visible = True
        Else
            plhTiga.Visible = False
        End If
    End Sub

    Private Sub MenuEmpat()
        myConnection = New SqlConnection(WebConfigurationManager.ConnectionStrings("conn").ConnectionString)
        myConnection.Open()

        sqlString = "select kode_modul from m_akses_modul" & Chr(10)
        sqlString = sqlString & "where nama_user = '" & Session("UserAuthentication") & "' and kode_modul = 4"

        myCommand = New SqlCommand(sqlString, myConnection)
        myCommand.CommandTimeout = 0

        myReader = myCommand.ExecuteReader()
        If myReader.Read = True Then
            plhEmpat.Visible = True
        Else
            plhEmpat.Visible = False
        End If
    End Sub

    Private Sub MenuLima()
        myConnection = New SqlConnection(WebConfigurationManager.ConnectionStrings("conn").ConnectionString)
        myConnection.Open()

        sqlString = "select kode_modul from m_akses_modul" & Chr(10)
        sqlString = sqlString & "where nama_user = '" & Session("UserAuthentication") & "' and kode_modul = 5"

        myCommand = New SqlCommand(sqlString, myConnection)
        myCommand.CommandTimeout = 0

        myReader = myCommand.ExecuteReader()
        If myReader.Read = True Then
            plhLima.Visible = True
        Else
            plhLima.Visible = False
        End If
    End Sub

    Private Sub MenuEnam()
        myConnection = New SqlConnection(WebConfigurationManager.ConnectionStrings("conn").ConnectionString)
        myConnection.Open()

        sqlString = "select kode_modul from m_akses_modul" & Chr(10)
        sqlString = sqlString & "where nama_user = '" & Session("UserAuthentication") & "' and kode_modul = 6"

        myCommand = New SqlCommand(sqlString, myConnection)
        myCommand.CommandTimeout = 0

        myReader = myCommand.ExecuteReader()
        If myReader.Read = True Then
            plhEnam.Visible = True
        Else
            plhEnam.Visible = False
        End If
    End Sub

    Private Sub MenuTujuh()
        myConnection = New SqlConnection(WebConfigurationManager.ConnectionStrings("conn").ConnectionString)
        myConnection.Open()

        sqlString = "select kode_modul from m_akses_modul" & Chr(10)
        sqlString = sqlString & "where nama_user = '" & Session("UserAuthentication") & "' and kode_modul = 7"

        myCommand = New SqlCommand(sqlString, myConnection)
        myCommand.CommandTimeout = 0

        myReader = myCommand.ExecuteReader()
        If myReader.Read = True Then
            plhTujuh.Visible = True
        Else
            plhTujuh.Visible = False
        End If
    End Sub

    Private Sub MenuDelapan()
        myConnection = New SqlConnection(WebConfigurationManager.ConnectionStrings("conn").ConnectionString)
        myConnection.Open()

        sqlString = "select kode_modul from m_akses_modul" & Chr(10)
        sqlString = sqlString & "where nama_user = '" & Session("UserAuthentication") & "' and kode_modul = 8"

        myCommand = New SqlCommand(sqlString, myConnection)
        myCommand.CommandTimeout = 0

        myReader = myCommand.ExecuteReader()
        If myReader.Read = True Then
            plhDelapan.Visible = True
        Else
            plhDelapan.Visible = False
        End If
    End Sub

    Private Sub MenuSembilan()
        myConnection = New SqlConnection(WebConfigurationManager.ConnectionStrings("conn").ConnectionString)
        myConnection.Open()

        sqlString = "select kode_modul from m_akses_modul" & Chr(10)
        sqlString = sqlString & "where nama_user = '" & Session("UserAuthentication") & "' and kode_modul = 9"

        myCommand = New SqlCommand(sqlString, myConnection)
        myCommand.CommandTimeout = 0

        myReader = myCommand.ExecuteReader()
        If myReader.Read = True Then
            plhSembilan.Visible = True
        Else
            plhSembilan.Visible = False
        End If
    End Sub

    Private Sub MenuSepuluh()
        myConnection = New SqlConnection(WebConfigurationManager.ConnectionStrings("conn").ConnectionString)
        myConnection.Open()

        sqlString = "select kode_modul from m_akses_modul" & Chr(10)
        sqlString = sqlString & "where nama_user = '" & Session("UserAuthentication") & "' and kode_modul = 10"

        myCommand = New SqlCommand(sqlString, myConnection)
        myCommand.CommandTimeout = 0

        myReader = myCommand.ExecuteReader()
        If myReader.Read = True Then
            plhSepuluh.Visible = True
        Else
            plhSepuluh.Visible = False
        End If
    End Sub

    Private Sub MenuSebelas()
        myConnection = New SqlConnection(WebConfigurationManager.ConnectionStrings("conn").ConnectionString)
        myConnection.Open()

        sqlString = "select kode_modul from m_akses_modul" & Chr(10)
        sqlString = sqlString & "where nama_user = '" & Session("UserAuthentication") & "' and kode_modul = 11"

        myCommand = New SqlCommand(sqlString, myConnection)
        myCommand.CommandTimeout = 0

        myReader = myCommand.ExecuteReader()
        If myReader.Read = True Then
            plhSebelas.Visible = True
        Else
            plhSebelas.Visible = False
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If con.State = ConnectionState.Closed Then
            con.Open()
        End If

        If Not Page.IsPostBack Then
            If Session("BlnLoggedIn") = False Then
                Response.Redirect("login.aspx")
            Else
                Call InfoUser()
                Call MenuSatu()
                Call MenuDua()
                Call MenuTiga()
                Call MenuEmpat()
                Call MenuLima()
                Call MenuEnam()
                Call MenuTujuh()
                Call MenuDelapan()
                Call MenuSembilan()
                Call MenuSepuluh()
                Call MenuSebelas()
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
            lblNamaLengkaps.Text = myReader("nama_lengkap").ToString
            lblNamaLengkap.Text = myReader("nama_lengkap").ToString
            lblNIM.Text = myReader("grup").ToString
        End If
    End Sub

    Private Sub lnkLogout_ServerClick(sender As Object, e As System.EventArgs) Handles lnkLogout.ServerClick
        Session("BlnLoggedIn") = False
        Session("UserAuthentication") = ""
        Response.Write("<script> window.open('/backend/form-admin/login.aspx', '_self'); </script>")
    End Sub

End Class