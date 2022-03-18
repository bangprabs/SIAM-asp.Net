Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Globalization
Imports System.Drawing.Imaging
Imports System.Drawing.Drawing2D
Imports System.Drawing
Imports System.IO

Public Class berita1
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

    Private Sub BindData()
        Dim constr As String = ConfigurationManager.ConnectionStrings("conn").ConnectionString
        Using con As New SqlConnection(constr)
            Dim sqlString As String
            sqlString = "select * from t_berita" & Chr(10)
            sqlString = sqlString & "where id_berita is not null" & Chr(10)
            If txtTanggal.Value <> "" Then
                sqlString = sqlString & "and tanggal_berita = '" & txtTanggal.Value & "'" & Chr(10)
            End If
            If txtJudul.Value <> "" Then
                sqlString = sqlString & "and judul_berita = '" & txtJudul.Value & "'" & Chr(10)
            End If
            sqlString = sqlString & "order by tanggal_berita desc"
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

    Private Sub lnkLogout_ServerClick(sender As Object, e As System.EventArgs) Handles lnkLogout.ServerClick
        Session("BlnLoggedIn") = False
        Session("UserAuthentication") = ""
        Response.Write("<script> window.open('/backend/form-admin/login.aspx', '_self'); </script>")
    End Sub

    Protected Sub RinciBerita(ByVal sender As Object, ByVal e As EventArgs)
        Dim btn As LinkButton = CType((sender), LinkButton)
        Dim nomor As String = btn.CommandArgument

        plhUtama.Visible = False
        plhRinci.Visible = True
        btnSimpan.Visible = False

        myConnection = New SqlConnection(WebConfigurationManager.ConnectionStrings("conn").ConnectionString)
        myConnection.Open()

        sqlString = "select * from t_berita" & Chr(10)
        sqlString = sqlString & "where id_berita = " & nomor

        myCommand = New SqlCommand(sqlString, myConnection)
        myCommand.CommandTimeout = 0

        myReader = myCommand.ExecuteReader()
        If myReader.Read = True Then
            txtTitle.Text = myReader("judul_berita").ToString
            editBerita.Content = myReader("isi_berita").ToString
            'fuGambar
        End If
    End Sub

    Private Sub btnCari_Click(sender As Object, e As System.EventArgs) Handles btnCari.Click
        Call BindData()
    End Sub

    Private Sub btnTambah_ServerClick(sender As Object, e As System.EventArgs) Handles btnTambah.ServerClick
        plhUtama.Visible = False
        plhRinci.Visible = True
        btnSimpan.Visible = True

        txtTitle.Text = String.Empty
        editBerita.Content = String.Empty
    End Sub

    Private Sub btnBatal_ServerClick(sender As Object, e As System.EventArgs) Handles btnBatal.ServerClick
        plhUtama.Visible = True
        plhRinci.Visible = False
    End Sub

    Private Sub Messagebox(ByVal Message As String)
        Dim lblMessageBox As New Label()

        lblMessageBox.Text = "<script language='javascript'>" + Environment.NewLine & "window.alert('" & Message & "')</script>"
        Page.Controls.Add(lblMessageBox)
    End Sub

    Private Sub btnSimpan_ServerClick(sender As Object, e As System.EventArgs) Handles btnSimpan.ServerClick
        If Len(Trim(txtTitle.Text)) = 0 Then
            Messagebox("Judul Belum Diisi.")
            Return
        End If
        'If Len(Trim(txtNamaPembuat.Text)) = 0 Then
        '    Messagebox("Nama Pembuat Belum Diisi.")
        '    Return
        'End If
        'If Len(Trim(txtTanggal.Text)) = 0 Then
        '    Messagebox("Tanggal Berita Belum Diisi.")
        '    Return
        'End If
        If fuGambar.HasFile = False Then
            Messagebox("Gambar Belum Diupload.")
            fuGambar.Focus()
            Return
        End If
        If Len(Trim(editBerita.Content)) = 0 Then
            Messagebox("Isi Berita Belum Diisi.")
            Return
        End If

        If fuGambar.PostedFile IsNot Nothing AndAlso fuGambar.PostedFile.FileName <> "" Then
            Dim strExtension As String = System.IO.Path.GetExtension(fuGambar.FileName)
            If (strExtension.ToUpper() = ".JPG") Or (strExtension.ToUpper() = ".JPEG") Or (strExtension.ToUpper() = ".PNG") Then
                '-- buat resize image
                Dim imageToBeResized As System.Drawing.Image = System.Drawing.Image.FromStream(fuGambar.PostedFile.InputStream)
                Dim imageHeight As Integer = imageToBeResized.Height
                Dim imageWidth As Integer = imageToBeResized.Width
                Dim maxHeight As Integer = 600
                Dim maxWidth As Integer = 800
                imageHeight = (imageHeight * maxWidth) / imageWidth
                imageWidth = maxWidth

                If imageHeight > maxHeight Then
                    imageWidth = (imageWidth * maxHeight) / imageHeight
                    imageHeight = maxHeight
                End If
                '-- setting path
                Dim savePath As String = Server.MapPath("~/backend/images/news/")
                'Dim savePath As String = ConfigurationManager.AppSettings("UPLOAD_PATH").ToString

                Dim bitmap As Bitmap = New Bitmap(imageToBeResized, imageWidth, imageHeight)
                Dim stream As System.IO.MemoryStream = New MemoryStream()
                stream.Position = 0
                Dim image As Byte() = New Byte(stream.Length + 1 - 1) {}
                stream.Read(image, 0, image.Length)
                Dim FileName As String = Path.GetFileName(fuGambar.PostedFile.FileName)
                'Dim extension As String = Path.GetExtension(fuAttachment.PostedFile.FileName)
                'bitmap.Save(Server.MapPath("~/uploadGambar/") & FileName)

                Dim pathToCheck As String = savePath & FileName
                Dim tempfileName As String = ""

                '-- cek apakah nama file sama
                If System.IO.File.Exists(pathToCheck) Then
                    Dim counter As Integer = 2

                    While System.IO.File.Exists(pathToCheck)
                        tempfileName = counter.ToString() & FileName
                        pathToCheck = savePath & tempfileName
                        counter += 1
                    End While

                    FileName = tempfileName
                    'Label37.Text = "A file with the same name already exists." & "<br />Your file was saved as " & FileName
                Else
                    'Label37.Text = "Your file was uploaded successfully."
                End If
                '-- simpan file
                savePath += FileName
                bitmap.Save(savePath)
                '----

                ' Create SQL Command 
                Dim cmd As SqlCommand = New SqlCommand("up_apl_insert_berita", con)
                cmd.CommandType = Data.CommandType.StoredProcedure
                cmd.CommandTimeout = 0

                cmd.Parameters.AddWithValue("@f_pembuat_berita", Session("UserAuthentication"))
                cmd.Parameters.AddWithValue("@f_judul_berita", txtTitle.Text)
                cmd.Parameters.AddWithValue("@f_gambar_berita", FileName)
                cmd.Parameters.AddWithValue("@f_isi_berita", editBerita.Content)
                cmd.ExecuteNonQuery()
                Messagebox("Data Telah Disimpan.")
                cmd.Dispose()
            End If
        End If

        Call BindData()
        plhUtama.Visible = True
        plhRinci.Visible = False
    End Sub

    Protected Sub HapusBerita(ByVal sender As Object, ByVal e As EventArgs)
        Dim btn As LinkButton = CType((sender), LinkButton)
        Dim nomor As String = btn.CommandArgument

        Dim cmd As SqlCommand = New SqlCommand("up_apl_delete_berita", con)
        cmd.CommandType = Data.CommandType.StoredProcedure
        cmd.CommandTimeout = 0

        cmd.Parameters.AddWithValue("@f_id_berita", nomor)
        cmd.ExecuteNonQuery()
        Messagebox("Data Telah Dihapus.")
        cmd.Dispose()

        Call BindData()
    End Sub

End Class