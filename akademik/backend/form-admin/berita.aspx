<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="berita.aspx.vb" Inherits="akademik.berita1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor" TagPrefix="cc2" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Plus Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../../assets/vendors/mdi/css/materialdesignicons.min.css" />
    <link rel="stylesheet" href="../../assets/vendors/flag-icon-css/css/flag-icon.min.css" />
    <link rel="stylesheet" href="../../assets/vendors/css/vendor.bundle.base.css" />
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="../../assets/vendors/jquery-bar-rating/css-stars.css" />
    <link rel="stylesheet" href="../../assets/vendors/font-awesome/css/font-awesome.min.css" />
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="../../assets/css/demo_1/style.css" />
    <!-- End layout styles -->
    <link rel="shortcut icon" href="../../assets/images/icon1.png" />
    <script type="text/javascript">
        window.onload = function () {
            setInterval(function () {
                if (!navigator.onLine) {
                    alert("You are not connected to Internet, ensure you're not in airplane mode. \n\nYour internet signal may be week. \n\nPlease connect to internet and try again.");
                }
            }, 500);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <cc1:ToolkitScriptManager runat="server"></cc1:ToolkitScriptManager>
        <div class="container-scroller">
            <!-- partial:../../partials/_sidebar.html -->
            <nav class="sidebar sidebar-offcanvas" id="sidebar">
                <ul class="nav">
                    <li class="nav-item nav-profile border-bottom">
                        <a href="#" class="nav-link flex-column">
                            <%--              <div class="nav-profile-image">
                <img src="assets/images/viki.jpeg" alt="profile" />
                <!--change to offline or busy as needed-->
              </div>--%>
                            <img src="/assets/images/unas.png" alt="profile" width="150px" />
                            <h6>Sistem Informasi Akademik</h6>
                            <%--<div class="nav-profile-text d-flex ml-0 mb-3 flex-column">
                <span class="font-weight-semibold mb-1 mt-2 text-center"><asp:Label ID="lblNamaLengkap" runat="server" Text="Label"></asp:Label> </span>
                <span class="text-secondary icon-sm text-center"><asp:Label ID="lblNIM" runat="server" Text="Label"></asp:Label></span>
              </div>--%>
                        </a>
                    </li>

                    <li class="pt-2 pb-1">
                        <span class="nav-item-head">Menu Admin</span>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="dashboard.aspx">
                            <i class="mdi mdi-compass-outline menu-icon"></i>
                            <span class="menu-title">Dashboard</span>
                        </a>
                    </li>
                    <asp:PlaceHolder ID="plhSatu" runat="server">
                        <li class="nav-item">
                            <a class="nav-link" href="aktivasi-anggota.aspx">
                                <i class="mdi mdi-account menu-icon"></i>
                                <span class="menu-title">Aktivasi Anggota</span>
                            </a>
                        </li>
                    </asp:PlaceHolder>
                    <asp:PlaceHolder ID="plhDua" runat="server">
                        <li class="nav-item">
                            <a class="nav-link" href="berita.aspx">
                                <i class="mdi mdi-newspaper menu-icon"></i>
                                <span class="menu-title">Berita</span>
                            </a>
                        </li>
                    </asp:PlaceHolder>
                    <asp:PlaceHolder ID="plhTiga" runat="server">
                        <li class="nav-item">
                            <a class="nav-link" href="kalender.aspx">
                                <i class="mdi mdi-calendar-outline menu-icon"></i>
                                <span class="menu-title">Kalender Akademik</span>
                            </a>
                        </li>
                    </asp:PlaceHolder>
                    <asp:PlaceHolder ID="plhEmpat" runat="server">
                        <li class="nav-item">
                            <a class="nav-link" href="registrasi-user.aspx">
                                <i class="mdi mdi-account-check menu-icon"></i>
                                <span class="menu-title">Registrasi User</span>
                            </a>
                        </li>
                    </asp:PlaceHolder>
                    <asp:PlaceHolder ID="plhLima" runat="server">
                        <li class="nav-item">
                            <a class="nav-link" href="mata-kuliah.aspx">
                                <i class="mdi mdi-collage menu-icon"></i>
                                <span class="menu-title">Mata Kuliah</span>
                            </a>
                        </li>
                    </asp:PlaceHolder>
                    <asp:PlaceHolder ID="plhEnam" runat="server">
                        <li class="nav-item">
                            <a class="nav-link" href="rencanastudi.aspx">
                                <i class="mdi mdi-file-document menu-icon"></i>
                                <span class="menu-title">Rencana Studi</span>
                            </a>
                        </li>
                    </asp:PlaceHolder>
                    <asp:PlaceHolder ID="plhTujuh" runat="server">
                        <li class="nav-item">
                            <a class="nav-link" href="pembayaran.aspx">
                                <i class="mdi mdi-cash-multiple menu-icon"></i>
                                <span class="menu-title">Pembayaran</span>
                            </a>
                        </li>
                    </asp:PlaceHolder>
                    <asp:PlaceHolder ID="plhDelapan" runat="server">
                        <li class="nav-item">
                            <a class="nav-link" href="perkuliahan.aspx">
                                <i class="mdi mdi-book-open-page-variant menu-icon"></i>
                                <span class="menu-title">Perkuliahan</span>
                            </a>
                        </li>
                    </asp:PlaceHolder>
                    <asp:PlaceHolder ID="plhSembilan" runat="server">
                        <li class="nav-item">
                            <a class="nav-link" href="dosen.aspx">
                                <i class="mdi mdi-account-box menu-icon"></i>
                                <span class="menu-title">Dosen</span>
                            </a>
                        </li>
                    </asp:PlaceHolder>
                    <asp:PlaceHolder ID="plhSepuluh" runat="server">
                        <li class="nav-item">
                            <a class="nav-link" href="jadwal-kuliah.aspx">
                                <i class="mdi mdi-content-duplicate menu-icon"></i>
                                <span class="menu-title">Jadwal Kuliah</span>
                            </a>
                        </li>
                    </asp:PlaceHolder>
                    <asp:PlaceHolder ID="plhSebelas" runat="server">
                        <li class="nav-item">
                            <a class="nav-link" href="hak-akses.aspx">
                                <i class="mdi mdi-account-key menu-icon"></i>
                                <span class="menu-title">Hak Akses</span>
                            </a>
                        </li>
                    </asp:PlaceHolder>
                </ul>
            </nav>
            <!-- partial -->
            <div class="container-fluid page-body-wrapper">
                <!-- partial:../../partials/_settings-panel.html -->
                <!-- partial -->
                <!-- partial:../../partials/_navbar.html -->
                <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
                    <div class="navbar-menu-wrapper d-flex align-items-stretch">
                        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                            <span class="mdi mdi-chevron-double-left"></span>
                        </button>
                        <ul class="navbar-nav navbar-nav-right">
                            <li class="nav-item nav-profile dropdown d-none d-md-block">
                                <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                                    <div class="nav-profile-text">
                                        <asp:Label ID="lblNamaDua" runat="server" Text="Label"></asp:Label>
                                    </div>
                                </a>
                                <div class="dropdown-menu center navbar-dropdown" aria-labelledby="profileDropdown">
                                    <a class="dropdown-item" href="ubah-sandi.aspx">
                                        <i class="mdi mdi mdi-lock-open-outline"></i>Ubah Kata Sandi </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#" onclick="Logout" id="lnkLogout" runat="server">
                                        <i class="mdi mdi mdi-logout"></i>Keluar </a>
                                </div>
                            </li>
                            <li class="nav-item nav-logout d-none d-lg-block">
                                <a class="nav-link" href="beranda.aspx">
                                    <i class="mdi mdi-home-circle"></i>
                                </a>
                            </li>
                        </ul>
                        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                            <span class="mdi mdi-menu"></span>
                        </button>
                    </div>
                </nav>
                <!-- partial -->
                <div class="main-panel">
                    <div class="content-wrapper">
                        <div class="page-header">
                            <h3 class="page-title">Berita</h3>
                            <%--<nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">Forms</a></li>
                  <li class="breadcrumb-item active" aria-current="page"> Form elements </li>
                </ol>
              </nav>--%>
                        </div>
                        <div class="row">
                            <div class="col-12 grid-margin stretch-card">
                                <div class="card">
                                    <div class="card-body">
                                        <asp:PlaceHolder ID="plhUtama" runat="server" Visible="true">
                                            <div class="content-body">
                                                <section>
                                                    <div class="row">
                                                        <div class="col-md-12 pad-profile">
                                                            <div class="card rounded-0">
                                                                <div class="card-body">
                                                                    <div class="row">
                                                                        <div class="col-md-12">
                                                                            <h5 class="content-header-title">Pencarian</h5>
                                                                            <hr />
                                                                        </div>
                                                                        <div class="col-md-6" style="margin-bottom: 12px;">
                                                                            <label>Tanggal Artikel</label>
                                                                            <input type="text" class="form-control form-control-line" id="txtTanggal" runat="server">
                                                                        </div>
                                                                        <div class="col-md-6" style="margin-bottom: 12px;">
                                                                            <label>Judul Artikel</label>
                                                                            <input type="text" class="form-control form-control-line" id="txtJudul" runat="server">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="card-footer">
                                                                    <div class="float-left">
                                                                        <asp:Button ID="btnCari" runat="server" Text="Cari" CssClass="btn btn-block btn-lg btn-info" Font-Size="Small" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </section>
                                            </div>

                                            <div class="content-body">
                                                <section>
                                                    <div class="row">
                                                        <div class="col-md-12 pad-profile">
                                                            <div class="card rounded-0">
                                                                <div class="card-body">
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <div class="table-responsive">
                                                                                <asp:Repeater ID="rptData" runat="server">
                                                                                    <HeaderTemplate>
                                                                                        <table class="table table-striped table-bordered" style="margin-bottom: 0px;">
                                                                                            <tr>
                                                                                                <th scope="row" style="width: 5px">No.</th>
                                                                                                <th scope="row" style="width: 5px">Tanggal
                                                                                                </th>
                                                                                                <th scope="row">Pembuat
                                                                                                </th>
                                                                                                <th scope="row">Judul
                                                                                                </th>
                                                                                                <%--<th scope="row" style="width:5px">
                                                                    
                                                                            </th>--%>
                                                                                                <th scope="row" style="width: 5px"></th>
                                                                                            </tr>
                                                                                    </HeaderTemplate>
                                                                                    <ItemTemplate>
                                                                                        <tr>
                                                                                            <td><%#Container.ItemIndex + 1 %></td>
                                                                                            <td>
                                                                                                <asp:Label ID="lblTanggal" runat="server" Text='<%# Eval("tanggal_berita", "{0:dd-MM-yyyy HH:mm:ss}") %>' />
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("pembuat_berita") %>' />
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:LinkButton runat="server" ID="lnkRinci" Text='<%#Eval("judul_berita") %>'
                                                                                                    ForeColor="Blue" Font-Bold="true" CommandArgument='<%# Eval("id_berita") %>'>
                                                                                                </asp:LinkButton>
                                                                                            </td>
                                                                                            <%--<td>
                                                                            <asp:LinkButton runat="server" ID="lnkUbah" Text="Ubah" 
                                                                                OnClick="UbahBerita" ForeColor="Blue" Font-Bold="true" CommandArgument = '<%# Eval("id_berita") %>'>
                                                                            </asp:LinkButton>
                                                                        </td>--%>
                                                                                            <td>
                                                                                                <asp:LinkButton runat="server" ID="lnkHapus" Text="Hapus"
                                                                                                    ForeColor="Blue" Font-Bold="true" CommandArgument='<%# Eval("id_berita") %>'>
                                                                                                </asp:LinkButton>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </ItemTemplate>
                                                                                    <FooterTemplate>
                                                                                        </table>
                                                               
                                                                                    </FooterTemplate>
                                                                                </asp:Repeater>
                                                                            </div>

                                                                            <table width="100%" border="0" class="mt-2">
                                                                                <tr>
                                                                                    <td style="padding-left: 15px">
                                                                                        <%--<asp:Label ID="lblPaging" runat="server" BackColor="Yellow"BorderColor="Yellow" Font-Bold="True"
                                                                        ForeColor="#FF3300"></asp:Label>--%>
                                                                                        <asp:Label ID="lblPaging" runat="server"></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td style="padding-left: 15px; padding-bottom: 20px;">
                                                                                        <asp:Button ID="btnPrevious" runat="server" Text="Previous" Width="80px"></asp:Button>
                                                                                        <asp:Button ID="btnNext" runat="server" Text="Next" Width="80px"></asp:Button>
                                                                                        <div class="float-right">
                                                                                            <button type="button" class="btn btn-info mr-1" id="btnTambah" runat="server">
                                                                                                <i class="la la-check-square-o"></i>Tambah
                                                                       
                                                                                            </button>
                                                                                        </div>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </section>
                                            </div>
                                        </asp:PlaceHolder>
                                        <asp:PlaceHolder ID="plhRinci" runat="server" Visible="false">
                                            <div class="content-body">
                                                <section>
                                                    <div class="row">
                                                        <div class="col-md-12 pad-profile">
                                                            <div class="card rounded-0">
                                                                <div class="card-body">
                                                                    <div class="row">
                                                                        <div class="form-group col-md-12" style="margin-bottom: 12px;">
                                                                            <label>Judul</label>
                                                                            <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control form-control-line"></asp:TextBox>
                                                                        </div>
                                                                        <%--<div class="form-group col-md-6" style="margin-bottom:12px;">
                                                        <label>Nama Pembuat</label>
                                                        <asp:TextBox ID="txtNamaPembuat" runat="server" CssClass="form-control form-control-line"></asp:TextBox>
                                                    </div>--%>
                                                                        <div class="form-group col-md-12" style="margin-bottom: 12px;">
                                                                            <label>Gambar</label><br />
                                                                            <asp:FileUpload ID="fuGambar" runat="server" /><br />
                                                                        </div>
                                                                        <div class="form-group col-md-12" style="margin-bottom: 12px;">
                                                                            <label>Isi Artikel</label>
                                                                            <div class="form-group" style="margin-bottom: 12px;">
                                                                                <cc2:Editor ID="editBerita" runat="server" />
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="card-footer">
                                                                    <div class="float-right">
                                                                        <button type="button" class="btn btn-warning mr-1" id="btnBatal" runat="server">
                                                                            Batal
                                                   
                                                                        </button>
                                                                        <button type="submit" class="btn btn-primary" id="btnSimpan" runat="server">
                                                                            <i class="la la-check-square-o"></i>Simpan
                                                   
                                                                        </button>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </section>
                                            </div>
                                        </asp:PlaceHolder>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <!-- content-wrapper ends -->
                    <!-- partial:../../partials/_footer.html -->
                    <footer class="footer">
                        <div class="d-sm-flex justify-content-center justify-content-sm-between">
                            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2020 <a href="https://www.bootstrapdash.com/" target="_blank">BootstrapDash</a>. All rights reserved.</span>
                            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="mdi mdi-heart text-danger"></i></span>
                        </div>
                    </footer>
                    <!-- partial -->
                </div>
                <!-- main-panel ends -->
            </div>
            <!-- page-body-wrapper ends -->
        </div>
        <!-- container-scroller -->
        <!-- plugins:js -->
        <script type="text/javascript" src="../../assets/vendors/js/vendor.bundle.base.js"></script>
        <!-- endinject -->
        <!-- Plugin js for this page -->
        <script type="text/javascript" src="../../assets/vendors/select2/select2.min.js"></script>
        <script type="text/javascript" src="../../assets/vendors/typeahead.js/typeahead.bundle.min.js"></script>
        <!-- End plugin js for this page -->
        <!-- inject:js -->
        <script type="text/javascript" src="../../assets/js/off-canvas.js"></script>
        <script type="text/javascript" src="../../backend/assets/js/hoverable-collapse.js"></script>
        <script type="text/javascript" src="../../assets/js/misc.js"></script>
        <script type="text/javascript" src="../../assets/js/settings.js"></script>
        <script type="text/javascript" src="../../backend/assets/js/todolist.js"></script>
        <!-- endinject -->
        <!-- Custom js for this page -->
        <script type="text/javascript" src="../../assets/js/file-upload.js"></script>
        <script type="text/javascript" src="../../assets/js/typeahead.js"></script>
        <script type="text/javascript" src="../../assets/js/select2.js"></script>
        <!-- End custom js for this page -->
    </form>
</body>
</html>
