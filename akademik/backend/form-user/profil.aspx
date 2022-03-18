<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="profil.aspx.vb" Inherits="akademik.profil" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

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
    <script language="javascript" type="text/javascript">
        function CheckNumeric(e) {

            if (window.event) // IE 
            {
                if ((e.keyCode < 48 || e.keyCode > 57) & e.keyCode != 8) {
                    event.returnValue = false;
                    return false;
                }
            }
            else { // Fire Fox
                if ((e.which < 48 || e.which > 57) & e.which != 8) {
                    e.preventDefault();
                    return false;
                }
            }
        }

    </script>
    <style type="text/css">
        .modalBackground {
            background-color: Black;
            filter: alpha(opacity=90);
            opacity: 0.9;
        }

        .modalPopup {
            background-color: #FFFFFF;
            width: 300px;
            border: 1px solid #f44336;
            border-radius: 12px;
            padding: 0
        }

            .modalPopup .header {
                background-color: #f44336;
                height: 45px;
                color: White;
                line-height: 30px;
                text-align: center;
                font-weight: bold;
                border-top-left-radius: 6px;
                border-top-right-radius: 6px;
                padding-top: 10px;
                padding-bottom: 5px;
            }

            .modalPopup .body {
                min-height: 50px;
                line-height: 30px;
                text-align: center;
                font-weight: bold;
            }

            .modalPopup .footer {
                padding: 6px;
            }

            .modalPopup .yes, .modalPopup .no {
                height: 23px;
                color: White;
                line-height: 23px;
                text-align: center;
                font-weight: bold;
                cursor: pointer;
                border-radius: 4px;
            }

            .modalPopup .yes {
                background-color: #2FBDF1;
                border: 1px solid #0DA9D0;
            }

            .modalPopup .no {
                background-color: #9F9F9F;
                border: 1px solid #5C5C5C;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
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
                    <div class="content-wrapper">
                        <div class="page-header">
                            <h3 class="page-title">Profile</h3>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="p-image text-center">
                                            <!-- User Profile Image -->
                                            <%--<img class="img rounded-circle mb-3" src="../../assets/images/img-profile.JPG" height="200px" alt="profile">--%>
                                            <asp:Image CssClass="biodata-pic rounded-circle" ID="imgDiri" runat="server" ImageUrl="../../backend/images/profile/no_image.png" Height="200px" alt="profile" /><br />
                                            <br />

                                            <!-- Default Image -->
                                            <%--<i class="fa fa-user fa-5x"></i>--%>
                                            <h6 class="card-title m-t-10">
                                                <asp:Label ID="lblNIM" runat="server" Text=""></asp:Label></h6>
                                            <h6 class="card-subtitle">Nomor Induk Mahasiswa</h6>
                                            <br />
                                            <asp:Button ID="btnUpload" runat="server" Text="Upload Foto" CssClass="form-control " />
                                        </div>
                                    </div>
                                    <div>
                                        <hr />
                                    </div>
                                    <div class="card-body">
                                        <small class="text-muted p-t-30 db">Nama Anda</small>
                                        <h6>
                                            <asp:Label ID="lblNamaLengkap" runat="server" Text="Label" ForeColor="Maroon"></asp:Label></h6>
                                        <small class="text-muted">Alamat Email</small>
                                        <h6>
                                            <asp:Label ID="lblEmail" runat="server" Text="Label" ForeColor="Blue"></asp:Label></h6>

                                    </div>

                                </div>
                            </div>
                            <div class="col-md-8 grid-margin stretch-card">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Biodata</h4>
                                        <div class="forms-sample">
                                            <div class="form-group row">
                                                <label for="exampleInputUsername2" class="col-sm-3 col-form-label">Fakultas</label>
                                                <div class="col-sm-9">
                                                    <asp:DropDownList CssClass="form-control" ID="drpFakultas" runat="server" AutoPostBack="true" />
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="exampleInputEmail2" class="col-sm-3 col-form-label">Program Studi</label>
                                                <div class="col-sm-9">
                                                    <asp:DropDownList CssClass="form-control" ID="drpProdi" runat="server" />
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="exampleInputMobile" class="col-sm-3 col-form-label">Alamat Rumah</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" id="txtAlamatRumah" runat="server" placeholder="Alamat Rumah" />
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="exampleInputUsername2" class="col-sm-3 col-form-label">Nomor Handphone</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" id="txtNoHp" placeholder="Nomor Handphone" runat="server" onkeypress="CheckNumeric(event)" />
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="exampleInputPassword2" class="col-sm-3 col-form-label">Kode Pos</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" id="txtKodePos" runat="server" placeholder="Kode Pos" onkeypress="CheckNumeric(event)" />
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="exampleInputConfirmPassword2" class="col-sm-3 col-form-label">Tempat Lahir</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" id="txtTempatLahir" runat="server" placeholder="Tempat Lahir" />
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="exampleInputConfirmPassword2" class="col-sm-3 col-form-label">Tanggal Lahir</label>
                                                <div class="col-sm-9">
                                                    <input type="text" runat="server" placeholder="dd/mm/yyyy" class="form-control" id="txtTanggal" />
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="exampleInputConfirmPassword2" class="col-sm-3 col-form-label">Jenis Kelamin</label>
                                                <div class="col-sm-9">
                                                    <asp:DropDownList CssClass="form-control" ID="drpKelamin" runat="server" />
                                                </div>
                                            </div>
                                            <button runat="server" type="submit" id="btnSubmitProfile" class="btn btn-primary mr-2">Submit </button>
                                        </div>
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
                <!-- page-body-wrapper ends -->
            </div>
            <!-- popup form -->
            <asp:Panel ID="pnlRinci" runat="server" CssClass="modalPopup" Style="display: none;">
                <div class="header">
                    Upload Foto
       
                </div>

                <div class="modal-body">
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Masukkan Foto</label>
                                    <asp:FileUpload ID="fuGambar" runat="server" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div align="center" class="modal-footer">
                    <div class="row">
                        <div class="col-md-12">
                            <button id="btnSimpan" runat="server" class="btn btn-danger">Simpan</button>
                            <button id="btnTutup" runat="server" class="btn btn-danger">Batal</button>
                        </div>
                    </div>
                </div>
            </asp:Panel>

            <%--lnkFake Link Button for mpeDeleteEmployee ModalPopup as TargetControlID--%>
            <asp:LinkButton ID="lnkPalsu" runat="server"></asp:LinkButton>

            <asp:ModalPopupExtender ID="mpeRinci" runat="server" PopupControlID="pnlRinci"
                TargetControlID="lnkPalsu" BehaviorID="mpeDua" CancelControlID="btnTutup"
                BackgroundCssClass="modalBackground">
            </asp:ModalPopupExtender>
            <script src="../../assets/vendors/js/vendor.bundle.base.js"></script>
            <script>
               <%-- $(function () {
                    $("#<%= txtTanggal.ClientID%>").datepicker();
                });--%>
</script>
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
