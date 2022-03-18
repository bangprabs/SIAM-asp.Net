<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="kalender.aspx.vb" Inherits="akademik.kalender" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Plus Admin</title>
    <link rel="stylesheet" href="../../assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../../assets/vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="../../assets/vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="../../assets/vendors/jquery-bar-rating/css-stars.css" />
    <link rel="stylesheet" href="../../assets/vendors/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" href="../../assets/css/demo_1/style.css" />
    <link rel="shortcut icon" href="../../assets/images/favicon.png" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-scroller">
            <nav class="sidebar sidebar-offcanvas" id="sidebar">
                <ul class="nav">
                    <li class="nav-item nav-profile border-bottom">
                        <a href="#" class="nav-link flex-column">
                            <%--<div class="nav-profile-image">
                                <img src="../../assets/images/faces/img-profile.JPG" alt="profile" />
                                <!--change to offline or busy as needed-->
                            </div>--%>
                            <img src="/assets/images/unas.png" alt="profile" width="150px" style="margin-bottom: 10px;" />
                            <h6 style="margin-bottom: 20px;">Sistem Informasi Akademik</h6>
                            <div class="nav-profile-text d-flex ml-0 mb-3 flex-column">
                                <span class="font-weight-semibold mb-1 mt-2 text-center">
                                    <asp:Label ID="lblNamaLengkap" runat="server" Text="Label"></asp:Label>
                                </span>
                                <span class="text-secondary icon-sm text-center">
                                    <asp:Label ID="lblNIM" runat="server" Text="Label"></asp:Label></span>
                            </div>
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
                <!-- partial:partials/_settings-panel.html -->
                <div id="settings-trigger"><i class="mdi mdi-settings"></i></div>
                <div id="theme-settings" class="settings-panel">
                    <i class="settings-close mdi mdi-close"></i>
                    <p class="settings-heading">SIDEBAR SKINS</p>
                    <div class="sidebar-bg-options selected" id="sidebar-default-theme">
                        <div class="img-ss rounded-circle bg-light border mr-3"></div>
                        Default
                    </div>
                    <div class="sidebar-bg-options" id="sidebar-dark-theme">
                        <div class="img-ss rounded-circle bg-dark border mr-3"></div>
                        Dark
                    </div>
                    <p class="settings-heading mt-2">HEADER SKINS</p>
                    <div class="color-tiles mx-0 px-4">
                        <div class="tiles default primary"></div>
                        <div class="tiles success"></div>
                        <div class="tiles warning"></div>
                        <div class="tiles danger"></div>
                        <div class="tiles info"></div>
                        <div class="tiles dark"></div>
                        <div class="tiles light"></div>
                    </div>
                </div>
                <!-- partial -->
                <!-- partial:partials/_navbar.html -->
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
                <div class="main-panel">
                    <div class="content-wrapper pb-0">
                        <div class="page-header">
                            <h3 class="page-title"><i class="mdi mdi-home-outline">Kalender Akademik</i></h3>
                        </div>
                        <div class="row">
                            <div class="col-12 grid-margin stretch-card">
                                <asp:PlaceHolder ID="plhList" runat="server" Visible="true">
                                    <div class="content-body">
                                        <section>
                                            <div class="row">
                                                <div class="col-md-12 pad-profile">
                                                    <div class="card rounded-0">
                                                        <div class="card-body">
                                                            <div class="table-responsive">
                                                                <asp:Repeater ID="rptData" runat="server">
                                                                    <HeaderTemplate>
                                                                        <table class="table table-striped table-bordered" style="margin-bottom: 0px;">
                                                                            <tr>
                                                                                <th style="text-align: center; width: 5px;">No.</th>
                                                                                <th scope="row">Semester
                                                                                </th>
                                                                                <th scope="row">Kegiatan
                                                                                </th>
                                                                                <th scope="row">Tanggal
                                                                                </th>
                                                                                <th scope="row">Jumlah Hari
                                                                                </th>
                                                                                <th scope="row" style="width: 5px">Action</th>
                                                                            </tr>
                                                                    </HeaderTemplate>
                                                                    <ItemTemplate>
                                                                        <tr>
                                                                            <td><%#Container.ItemIndex + 1 %></td>
                                                                            <td>
                                                                                <asp:Label ID="lblNama" runat="server" Text='<%# Eval("semester") %>' />
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="lblPilihan" runat="server" Text='<%# Eval("kegiatan") %>' />
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="lblWaktu" runat="server" Text='<%# Eval("tanggal") %>' />
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("jumlah_hari") %>' />
                                                                            </td>
                                                                            <td>
                                                                                <asp:Button ID="btnUbahRinci" Text="Ubah" runat="server" CommandArgument='<%#Eval("nomor") %>' OnClick="UbahRinci" />
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
                                                                            <button type="button" class="btn btn-warning mr-1" id="btnTambah" runat="server">
                                                                                <i class="la la-clone"></i>Tambah
                                                               
                                                                            </button>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
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
                                                    <asp:Label ID="lblNomor" runat="server" Text="0" Visible="false"></asp:Label>
                                                    <div class="card rounded-0">
                                                        <div class="card-body">
                                                            <div class="row">
                                                                <div class="form-group col-md-6" style="margin-bottom: 12px;">
                                                                    <label>Semester</label>
                                                                    <asp:TextBox ID="txtSemester" runat="server" CssClass="form-control form-control-line"></asp:TextBox>
                                                                </div>
                                                                <div class="form-group col-md-6" style="margin-bottom: 12px;">
                                                                    <label>Kegiatan</label>
                                                                    <asp:TextBox ID="txtKegiatan" runat="server" CssClass="form-control form-control-line"></asp:TextBox>
                                                                </div>
                                                                <div class="form-group col-md-6" style="margin-bottom: 12px;">
                                                                    <label>Tanggal</label>
                                                                    <asp:TextBox ID="txtTanggal" runat="server" CssClass="form-control form-control-line"></asp:TextBox>
                                                                </div>
                                                                <div class="form-group col-md-6" style="margin-bottom: 12px;">
                                                                    <label>Jumlah Hari</label>
                                                                    <asp:TextBox ID="txtJumHari" runat="server" CssClass="form-control form-control-line"></asp:TextBox>
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
                    <footer class="footer">
                        <div class="d-sm-flex justify-content-center justify-content-sm-between">
                            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2020 <a href="https://www.bootstrapdash.com/" target="_blank">BootstrapDash</a>. All rights reserved.</span>
                            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="mdi mdi-heart text-danger"></i></span>
                        </div>
                    </footer>
                </div>
            </div>
        </div>
        <script src="../../assets/vendors/js/vendor.bundle.base.js"></script>
        <!-- endinject -->
        <!-- Plugin js for this page -->
        <script type="text/javascript" src="../../assets/vendors/jquery-bar-rating/jquery.barrating.min.js"></script>
        <script type="text/javascript" src="../../assets/vendors/chart.js/Chart.min.js"></script>
        <script type="text/javascript" src="../../assets/vendors/flot/jquery.flot.js"></script>
        <script type="text/javascript" src="../../assets/vendors/flot/jquery.flot.resize.js"></script>
        <script type="text/javascript" src="../../assets/vendors/flot/jquery.flot.categories.js"></script>
        <script type="text/javascript" src="../../assets/vendors/flot/jquery.flot.fillbetween.js"></script>
        <script type="text/javascript" src="../../assets/vendors/flot/jquery.flot.stack.js"></script>
        <!-- End plugin js for this page -->
        <!-- inject:js -->
        <script type="text/javascript" src="../../assets/js/off-canvas.js"></script>
        <script type="text/javascript" src="../../assets/js/hoverable-collapse.js"></script>
        <script type="text/javascript" src="../../assets/js/misc.js"></script>
        <script type="text/javascript" src="../../assets/js/settings.js"></script>
        <script type="text/javascript" src="../../assets/js/todolist.js"></script>
        <!-- endinject -->
        <!-- Custom js for this page -->
        <script src="../../assets/js/dashboard.js"></script>
    </form>
</body>
</html>


