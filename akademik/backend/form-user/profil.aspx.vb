Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Globalization
Imports System.Drawing.Imaging
Imports System.Drawing.Drawing2D
Imports System.Drawing
Imports System.IO

Public Class profil
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
                Call FillFakultas()
                Call FillProdi()
                Call FillJenisKelamin()
                Call ViewBiodata()
                Call ImageFoto()
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
            'txtNamaLengkap.Value = myReader("nama_lengkap").ToString
            lblNIM.Text = myReader("nim").ToString
            lblNamaDua.Text = myReader("nama_lengkap").ToString
            lblEmail.Text = myReader("email").ToString
            lblNamaLengkap.Text = myReader("nama_lengkap").ToString
        End If
    End Sub

    Private Sub drpFakultas_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles drpFakultas.SelectedIndexChanged
        Call FillProdi()
    End Sub

    Private Sub FillFakultas()
        Try
            Dim cmd As SqlCommand = New SqlCommand("up_apl_fill_fakultas", New SqlConnection(WebConfigurationManager.ConnectionStrings("conn").ConnectionString))
            cmd.CommandType = CommandType.StoredProcedure
            cmd.CommandTimeout = 0
            cmd.Connection.Open()

            Dim mySqlAdapter As New SqlDataAdapter(cmd)
            Dim myDataSet As New DataSet()
            mySqlAdapter.Fill(myDataSet)

            Dim myDataView As New DataView()
            myDataView = myDataSet.Tables(0).DefaultView

            Me.drpFakultas.DataSource = myDataView
            Me.drpFakultas.DataTextField = "nama_fakultas"
            Me.drpFakultas.DataValueField = "kode_fakultas"
            Me.drpFakultas.DataBind()
            'Me.drppendidikan.Items.Insert(0, New ListItem("PILIH STATUS", String.Empty))

            cmd.Connection.Close()
            cmd.Connection.Dispose()

        Catch ex As Exception
            'lblStatus.Text = ex.Message
        End Try
    End Sub



    Private Sub FillJenisKelamin()
        Try
            Dim cmd As SqlCommand = New SqlCommand("up_apl_fill_kelamin", New SqlConnection(WebConfigurationManager.ConnectionStrings("conn").ConnectionString))
            cmd.CommandType = CommandType.StoredProcedure
            cmd.CommandTimeout = 0
            cmd.Connection.Open()

            Dim mySqlAdapter As New SqlDataAdapter(cmd)
            Dim myDataSet As New DataSet()
            mySqlAdapter.Fill(myDataSet)

            Dim myDataView As New DataView()
            myDataView = myDataSet.Tables(0).DefaultView

            Me.drpKelamin.DataSource = myDataView
            Me.drpKelamin.DataTextField = "jenis_kelamin"
            Me.drpKelamin.DataValueField = "kode_kelamin"
            Me.drpKelamin.DataBind()
            'Me.drppendidikan.Items.Insert(0, New ListItem("PILIH STATUS", String.Empty))

            cmd.Connection.Close()
            cmd.Connection.Dispose()

        Catch ex As Exception
            'lblStatus.Text = ex.Message
        End Try
    End Sub

    Private Sub FillProdi()
        Try
            Dim cmd As SqlCommand = New SqlCommand("up_apl_fill_prodi", New SqlConnection(WebConfigurationManager.ConnectionStrings("conn").ConnectionString))
            cmd.CommandType = CommandType.StoredProcedure
            cmd.CommandTimeout = 0
            cmd.Parameters.AddWithValue("@f_kode_fakultas", drpFakultas.SelectedItem.Value)
            cmd.Connection.Open()

            Dim mySqlAdapter As New SqlDataAdapter(cmd)
            Dim myDataSet As New DataSet()
            mySqlAdapter.Fill(myDataSet)

            Dim myDataView As New DataView()
            myDataView = myDataSet.Tables(0).DefaultView

            Me.drpProdi.DataSource = myDataView
            Me.drpProdi.DataTextField = "nama_prodi"
            Me.drpProdi.DataValueField = "kode_prodi"
            Me.drpProdi.DataBind()
            'Me.drppendidikan.Items.Insert(0, New ListItem("PILIH STATUS", String.Empty))

            cmd.Connection.Close()
            cmd.Connection.Dispose()

        Catch ex As Exception
            'lblStatus.Text = ex.Message
        End Try
    End Sub

    Private Sub UpdateBiodata()
        Dim DateString As String = txtTanggal.Value
        Dim tanggal As DateTime = Convert.ToDateTime(DateString, System.Globalization.CultureInfo.GetCultureInfo("hi-IN").DateTimeFormat)

        Try
            Dim cmd As SqlCommand = New SqlCommand("up_apl_update_biodata", con)
            cmd.CommandType = CommandType.StoredProcedure
            cmd.CommandTimeout = 0

            cmd.Parameters.AddWithValue("@f_nim", lblNIM.Text)
            cmd.Parameters.AddWithValue("@f_no_hp", txtNoHp.Value)
            cmd.Parameters.AddWithValue("@f_kode_fakultas", drpFakultas.SelectedItem.Value)
            cmd.Parameters.AddWithValue("@f_kode_prodi", drpProdi.SelectedItem.Value)
            cmd.Parameters.AddWithValue("@f_alamat_rumah", txtAlamatRumah.Value)
            cmd.Parameters.AddWithValue("@f_kode_pos", txtKodePos.Value)
            cmd.Parameters.AddWithValue("@f_tempat_lahir", txtTempatLahir.Value)
            cmd.Parameters.AddWithValue("@f_tanggal_lahir", tanggal)
            cmd.Parameters.AddWithValue("@f_jenis_kelamin", drpKelamin.SelectedItem.Value)
            cmd.ExecuteNonQuery()
            cmd.Dispose()

            Call ViewBiodata()

            Response.Write("<script>alert('Berhasil, Data Telah Disimpan !')</script>")
        Catch ex As Exception
            Console.WriteLine("An Error Occurred : '{0}'", ex)
        End Try
    End Sub

    Private Sub lnkLogout_ServerClick(sender As Object, e As System.EventArgs) Handles lnkLogout.ServerClick
        Session("BlnLoggedIn") = False
        Session("UserAuthentication") = ""
        Response.Write("<script> window.open('login.aspx', '_self'); </script>")
    End Sub

    Private Sub Messagebox(ByVal Message As String)
        Dim lblMessageBox As New Label()

        lblMessageBox.Text = "<script language='javascript'>" + Environment.NewLine & "window.alert('" & Message & "')</script>"
        Page.Controls.Add(lblMessageBox)
    End Sub


    Private Sub ViewBiodata()

        myConnection = New SqlConnection(WebConfigurationManager.ConnectionStrings("conn").ConnectionString)
        myConnection.Open()

        sqlString = "select * from v_biodata" & Chr(10)
        sqlString = sqlString & "where nim = '" & Session("UserAuthentication") & "'"

        myCommand = New SqlCommand(sqlString, myConnection)
        myCommand.CommandTimeout = 0

        myReader = myCommand.ExecuteReader()
        If myReader.Read = True Then
            drpFakultas.SelectedItem.Text = myReader("nama_fakultas").ToString
            drpProdi.SelectedItem.Text = myReader("nama_prodi").ToString
            txtAlamatRumah.Value = myReader("alamat_rumah").ToString
            txtNoHp.Value = myReader("no_hp").ToString
            txtKodePos.Value = myReader("kode_pos").ToString
            txtTempatLahir.Value = myReader("tempat_lahir").ToString
            If myReader("tanggal_lahir").ToString = System.DBNull.Value.ToString Then
                txtTanggal.Value = "dd/MM/yyyy"
            Else
                txtTanggal.Value = DateTime.Parse(myReader("tanggal_lahir").ToString).ToString("dd/MM/yyyy")
            End If
            drpKelamin.SelectedItem.Text = myReader("jenis_kelamin").ToString
        End If
    End Sub

    Private Sub btnSubmitProfile_ServerClick(sender As Object, e As EventArgs) Handles btnSubmitProfile.ServerClick
        If Len(Trim(txtAlamatRumah.Value)) = 0 Then
            Messagebox("Kolom Alamat Rumah Belum Diisi !")
            txtAlamatRumah.Focus()
            Return
        End If
        If Len(Trim(txtKodePos.Value)) = 0 Then
            Messagebox("Kolom Kode Pos Belum Diisi !")
            txtKodePos.Focus()
            Return
        End If
        If Len(Trim(txtNoHp.Value)) = 0 Then
            Messagebox("Kolom Nomor HP Belum Diisi !")
            txtNoHp.Focus()
            Return
        End If

        If Len(Trim(txtTanggal.Value)) = 0 Or txtTanggal.Value = "dd/mm/yyyy" Then
            Messagebox("Kolom Tanggal Belum Diisi !")
            txtTanggal.Focus()
            Return
        End If

        If Len(Trim(txtTempatLahir.Value)) = 0 Then
            Messagebox("Kolom Tempat Lahir Belum Diisi !")
            txtTempatLahir.Focus()
            Return
        End If

        Call UpdateBiodata()
    End Sub

    Private Sub ImageFoto()
        Dim gambar As String

        myConnection = New SqlConnection(WebConfigurationManager.ConnectionStrings("conn").ConnectionString)
        myConnection.Open()

        sqlString = "select foto = isnull(foto, 'KOSONG') from m_biodata where nim = '" & lblNIM.Text & "'"

        myCommand = New SqlCommand(sqlString, myConnection)
        myCommand.CommandTimeout = 0

        myReader = myCommand.ExecuteReader()
        If myReader.Read = True Then
            gambar = myReader("foto").ToString

            If gambar = "KOSONG" Then
                imgDiri.ImageUrl = "../../../backend/images/profile/no_image.png"
            Else
                imgDiri.ImageUrl = "../../../backend/images/profile/" & gambar
            End If
        End If
    End Sub

    Private Sub btnUpload_Click(sender As Object, e As System.EventArgs) Handles btnUpload.Click
        mpeRinci.Show()
    End Sub

    Private Sub btnSimpan_ServerClick(sender As Object, e As System.EventArgs) Handles btnSimpan.ServerClick
        If fuGambar.HasFile = False Then
            Messagebox("Gambar Belum Diupload.")
            fuGambar.Focus()
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
                Dim savePath As String = Server.MapPath("~/backend/images/profile/")
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
                Dim cmd As SqlCommand = New SqlCommand("up_apl_upload_foto", con)
                cmd.CommandType = Data.CommandType.StoredProcedure
                cmd.CommandTimeout = 0

                cmd.Parameters.AddWithValue("@f_nim", lblNIM.Text)
                cmd.Parameters.AddWithValue("@f_foto", FileName)
                cmd.ExecuteNonQuery()
                Messagebox("Data Telah Disimpan.")
                cmd.Dispose()

                Call ImageFoto()
            End If
        End If
    End Sub
End Class