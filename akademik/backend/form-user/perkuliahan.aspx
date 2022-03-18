<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="perkuliahan.aspx.vb" Inherits="akademik.perkuliahan" %>

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
            <!-- partial:partials/_sidebar.html -->
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
                            <%--<div class="nav-profile-text d-flex ml-0 mb-3 flex-column">
                                <span class="font-weight-semibold mb-1 mt-2 text-center">
                                    <asp:Label ID="lblNamaLengkap" runat="server" Text="Label"></asp:Label>
                                </span>
                                <span class="text-secondary icon-sm text-center">
                                    <asp:Label ID="lblNIM" runat="server" Text="Label"></asp:Label></span>
                            </div>--%>
                        </a>
                    </li>
                    <li class="pt-2 pb-1">
                        <span class="nav-item-head">Menu</span>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="beranda.aspx">
                            <i class="mdi mdi-home-variant menu-icon"></i>
                            <span class="menu-title">Beranda</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="dashboard.aspx">
                            <i class="mdi mdi-compass-outline menu-icon"></i>
                            <span class="menu-title">Dashboard</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="berita.aspx">
                            <i class="mdi mdi-newspaper menu-icon"></i>
                            <span class="menu-title">Berita</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="kalender.aspx">
                            <i class="mdi mdi-calendar-outline menu-icon"></i>
                            <span class="menu-title">Kalender Akademik</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="form.aspx">
                            <i class="mdi mdi-format-list-bulleted menu-icon"></i>
                            <span class="menu-title">Forms</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="profil.aspx">
                            <i class="mdi mdi-account menu-icon"></i>
                            <span class="menu-title">Profil</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="rencanastudi.aspx">
                            <i class="mdi mdi-file-document menu-icon"></i>
                            <span class="menu-title">Rencana Studi</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="hasilstudi.aspx">
                            <i class="mdi mdi-boombox menu-icon"></i>
                            <span class="menu-title">Hasil Studi</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="pembayaran.aspx">
                            <i class="mdi mdi-cash-multiple menu-icon"></i>
                            <span class="menu-title">Pembayaran</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="perkuliahan.aspx">
                            <i class="mdi mdi-book-open-page-variant menu-icon"></i>
                            <span class="menu-title">Perkuliahan</span>
                        </a>
                    </li>
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
                            <h3 class="page-title">Perkuliahan</h3>
                        </div>
                        <div class="row">
                            <div class="col-12 grid-margin stretch-card">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="forms-sample">
                                            <div class="form-group">
                                                <label>Kata Sandi Lama</label>
                                                <input type="password" class="form-control" id="txtLama" placeholder="Kata Sandi Lama" runat="server" />
                                            </div>
                                            <div class="form-group">
                                                <label>Kata Sandi Baru</label>
                                                <input type="password" class="form-control" id="txtBaru" placeholder="Kata Sandi Baru" runat="server" />
                                            </div>
                                            <div class="form-group">
                                                <label>Ulangi Kata Sandi Baru</label>
                                                <input type="password" class="form-control" id="txtUlangi" placeholder="Ulangi Kata Sandi Baru" runat="server" />
                                            </div>
                                            <button type="submit" class="btn btn-primary mr-2" id="btnUbah" runat="server">Ubah Sandi </button>
                                            <%--<button class="btn btn-light">Cancel</button>--%>
                                        </div>
                                    </div>
                                </div>
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
                <!-- page-body-wrapper ends -->
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
