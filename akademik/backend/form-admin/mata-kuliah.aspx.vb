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

Public Class mata_kuliah
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
                Call BindData()
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

    Private Sub BindData()
        Dim constr As String = ConfigurationManager.ConnectionStrings("conn").ConnectionString
        Using con As New SqlConnection(constr)
            Dim sqlString As String
            sqlString = "select * from m_mata_kuliah" & Chr(10)
            sqlString = sqlString & "order by nama_mk desc"
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

    Protected Sub UbahRinci(ByVal sender As Object, ByVal e As EventArgs)
        'Get the reference of the clicked button.
        Dim namaUser As Button = CType(sender, Button)

        'Get the command argument
        Dim commandArgument As String = namaUser.CommandArgument

        plhList.Visible = False
        plhRinci.Visible = True
        txtKode.ReadOnly = True
        txtNama.Focus()
        txtKode.Text = commandArgument

        myConnection = New SqlConnection(WebConfigurationManager.ConnectionStrings("conn").ConnectionString)
        myConnection.Open()

        sqlString = "select * from m_mata_kuliah" & Chr(10)
        sqlString = sqlString & "where kode_mk = '" & commandArgument & "'"

        myCommand = New SqlCommand(sqlString, myConnection)
        myCommand.CommandTimeout = 0

        myReader = myCommand.ExecuteReader()
        If myReader.Read = True Then
            txtKode.Text = myReader("kode_mk").ToString
            txtNama.Text = myReader("nama_mk").ToString
            txtSKS.Text = myReader("sks").ToString
            txtSemester.Text = myReader("semester").ToString
        End If
    End Sub

    Private Sub btnTambah_ServerClick(sender As Object, e As System.EventArgs) Handles btnTambah.ServerClick
        plhList.Visible = False
        plhRinci.Visible = True
        txtKode.ReadOnly = False
        txtKode.Focus()

        txtKode.Text = String.Empty
        txtNama.Text = String.Empty
        txtSKS.Text = String.Empty
        txtSemester.Text = String.Empty
    End Sub

    Private Sub btnBatal_ServerClick(sender As Object, e As System.EventArgs) Handles btnBatal.ServerClick
        plhList.Visible = True
        plhRinci.Visible = False
    End Sub

    Private Sub Messagebox(ByVal Message As String)
        Dim lblMessageBox As New Label()

        lblMessageBox.Text = "<script language='javascript'>" + Environment.NewLine & "window.alert('" & Message & "')</script>"
        Page.Controls.Add(lblMessageBox)
    End Sub

    Private Function IsKodeExist() As Boolean
        Dim sqlString As String

        sqlString = "select * from m_mata_kuliah where kode_mk = '" & txtKode.Text & "'"

        Dim cmd As New SqlCommand(sqlString, con)
        cmd.ExecuteNonQuery()
        Dim dt As New DataTable()
        Dim adp As New SqlDataAdapter(cmd)
        adp.Fill(dt)
        If dt.Rows.Count > 0 Then
            Return True
        Else
            Return False
        End If
    End Function

    Private Sub btnSimpan_ServerClick(sender As Object, e As System.EventArgs) Handles btnSimpan.ServerClick
        If txtKode.ReadOnly = False Then
            If Len(Trim(txtKode.Text)) = 0 Then
                Messagebox("Kolom Kode MK Belum Diisi !")
                txtKode.Focus()
                Return
            End If

            If IsKodeExist() Then
                Messagebox("Kode Mata Kuliah Sudah Ada. Silahkan Coba Yang Lain.")
                Return
            End If

            If Len(Trim(txtNama.Text)) = 0 Then
                Messagebox("Kolom Nama MK Belum Diisi !")
                txtNama.Focus()
                Return
            End If

            If Len(Trim(txtSKS.Text)) = 0 Then
                Messagebox("Kolom SKS Belum Diisi !")
                txtSKS.Focus()
                Return
            End If
            If Len(Trim(txtSemester.Text)) = 0 Then
                Messagebox("Kolom Semester Belum Diisi !")
                txtSemester.Focus()
                Return
            End If
            Call SimpanData()
        Else
            If Len(Trim(txtNama.Text)) = 0 Then
                Messagebox("Kolom Nama MK Belum Diisi !")
                txtNama.Focus()
                Return
            End If

            If Len(Trim(txtSKS.Text)) = 0 Then
                Messagebox("Kolom SKS Belum Diisi !")
                txtSKS.Focus()
                Return
            End If
            If Len(Trim(txtSemester.Text)) = 0 Then
                Messagebox("Kolom Semester Belum Diisi !")
                txtSemester.Focus()
                Return
            End If

            Call UbahData()
        End If
        plhList.Visible = True
        plhRinci.Visible = False
        Call BindData()
    End Sub

    Private Sub SimpanData()
        Try
            Dim cmd As SqlCommand = New SqlCommand("up_apl_insert_mata_kuliah", con)
            cmd.CommandType = CommandType.StoredProcedure
            cmd.CommandTimeout = 0

            cmd.Parameters.AddWithValue("@f_kode_mk", txtKode.Text)
            cmd.Parameters.AddWithValue("@f_nama_mk", txtNama.Text)
            cmd.Parameters.AddWithValue("@f_sks", txtSKS.Text)
            cmd.Parameters.AddWithValue("@f_semester", txtSemester.Text)

            cmd.ExecuteNonQuery()
            cmd.Dispose()
        Catch ex As Exception
            Console.WriteLine("An Error Occurred : '{0}'", ex)
        End Try
    End Sub

    Private Sub UbahData()
        Try
            Dim cmd As SqlCommand = New SqlCommand("up_apl_update_mata_kuliah", con)
            cmd.CommandType = CommandType.StoredProcedure
            cmd.CommandTimeout = 0

            cmd.Parameters.AddWithValue("@f_kode_mk", txtKode.Text)
            cmd.Parameters.AddWithValue("@f_nama_mk", txtNama.Text)
            cmd.Parameters.AddWithValue("@f_sks", txtSKS.Text)
            cmd.Parameters.AddWithValue("@f_semester", txtSemester.Text)
            cmd.ExecuteNonQuery()
            cmd.Dispose()
        Catch ex As Exception
            Console.WriteLine("An Error Occurred : '{0}'", ex)
        End Try
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
            lblNIM.Text = myReader("grup").ToString
        End If
    End Sub

    Private Sub lnkLogout_ServerClick(sender As Object, e As System.EventArgs) Handles lnkLogout.ServerClick
        Session("BlnLoggedIn") = False
        Session("UserAuthentication") = ""
        Response.Write("<script> window.open('/backend/form-admin/login.aspx', '_self'); </script>")
    End Sub

End Class