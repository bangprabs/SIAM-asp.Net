<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="arsip-kegiatan.aspx.vb" Inherits="akademik.arsip_kegiatan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Sistem Informasi Akademik</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link rel="shortcut icon" href="../../backend/assets/images/fav-ico-owl.jpg" />
    <link href="../../frontend/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="../../frontend/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
    <link href="../../frontend/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../frontend/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="../../frontend/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="../../frontend/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="../../frontend/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="../../frontend/assets/css/style.css" rel="stylesheet">

    <!-- =======================================================
  * Template Name: Eterna - v4.0.1
  * Template URL: https://bootstrapmade.com/eterna-free-multipurpose-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<body>
    <form id="form1" runat="server">
        <!-- ======= Top Bar ======= -->
        <section id="topbar" class="d-flex align-items-center">
            <div class="container d-flex justify-content-center justify-content-md-between">
                <div class="contact-info d-flex align-items-center">
                    <i class="bi bi-envelope d-flex align-items-center"><a href="mailto:contact@example.com">ari3.gunawan@gmail.com</a></i>
                    <i class="bi bi-phone d-flex align-items-center ms-4"><span>08177 08510</span></i>
                </div>
                <div class="social-links d-none d-md-flex align-items-center">
                    <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
                    <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
                    <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
                    <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
                </div>
            </div>
        </section>

        <!-- ======= Header ======= -->
        <header id="header" class="d-flex align-items-center">
            <div class="container d-flex justify-content-between align-items-center">

                <div class="logo">
                    <h1><a href="../../../default.aspx">Sistem Informasi Akademik</a></h1>
                    <!-- Uncomment below if you prefer to use an image logo -->
                    <!-- <a href="../../../default.aspx"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
                </div>

                <nav id="navbar" class="navbar">
                    <ul>
                        <li><a href="../../../default.aspx">Beranda</a></li>
                        <li class="dropdown"><a href="#"><span>Tentang</span> <i class="bi bi-chevron-down"></i></a>
                            <ul>
                                <li><a href="../../../frontend/profil.aspx">Profil</a></li>
                                <li><a href="../../../frontend/sejarah.aspx">Sejarah</a></li>
                                <li><a href="../../../frontend/visi-misi.aspx">Visi Misi</a></li>
                                <li><a href="../../../frontend/pimpinan.aspx">Pimpinan</a></li>
                            </ul>
                        </li>
                        <li class="dropdown"><a href="#"><span>Akademik</span> <i class="bi bi-chevron-down"></i></a>
                            <ul>
                                <li><a href="../../../frontend/kalender.aspx">Kalender</a></li>
                                <li><a href="../../../frontend/jenjang-akademik.aspx">Jenjang Akademik</a></li>
                                <li><a href="../../../frontend/akreditasi.aspx">Akreditasi</a></li>
                            </ul>
                        </li>
                        <li class="dropdown"><a href="#"><span>Kemahasiswaan</span> <i class="bi bi-chevron-down"></i></a>
                            <ul>
                                <li><a href="../../../frontend/beasiswa.aspx">Beasiswa</a></li>
                                <li><a href="../../../frontend/alumni.aspx">Alumni</a></li>
                                <li><a href="../../../frontend/plba.aspx">PLBA</a></li>
                            </ul>
                        </li>
                        <li class="dropdown"><a class="active" href="#"><span>Arsip</span> <i class="bi bi-chevron-down"></i></a>
                            <ul>
                                <li><a href="../../../frontend/arsip-berita.aspx">Arsip Berita</a></li>
                                <li><a href="../../../frontend/arsip-kegiatan.aspx">Arsip Kegiatan</a></li>
                                <li><a href="../../../frontend/arsip-pengumuman.aspx">Arsip Pengumuman</a></li>
                            </ul>
                        </li>
                        <li><a href="../../../kontak.aspx">Kontak</a></li>
                        <li><a href="../../backend/form-user/login.aspx" class="getstarted">Login</a></li>
                    </ul>
                    <i class="bi bi-list mobile-nav-toggle"></i>
                </nav>
                <!-- .navbar -->

            </div>
        </header>
        <!-- End Header -->

        <div id="main">

            <!-- ======= Breadcrumbs ======= -->
            <section id="breadcrumbs" class="breadcrumbs">
                <div class="container">

                    <ol>
                        <li><a href="../../../default.aspx">Beranda</a></li>
                        <li>Arsip</li>
                    </ol>
                    <h2>Arsip Kegiatan
                    </h2>

                </div>
            </section>
            <!-- End Breadcrumbs -->

            <!-- ======= About Section ======= -->
            <section id="about" class="about">
                <div class="container">

                    <div class="row content">
                        <%--<div class="col-lg-6">
            <h2>Eum ipsam laborum deleniti velitena</h2>
            <h3>Voluptatem dignissimos provident quasi corporis voluptates sit assum perenda sruen jonee trave</h3>
          </div>--%>
                        <div class="col-lg-12">
                            <p>
                                Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
              velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
              culpa qui officia deserunt mollit anim id est laborum
           
                            </p>
                            <ul>
                                <li><i class="ri-check-double-line"></i>Ullamco laboris nisi ut aliquip ex ea commodo consequa</li>
                                <li><i class="ri-check-double-line"></i>Duis aute irure dolor in reprehenderit in voluptate velit</li>
                                <li><i class="ri-check-double-line"></i>Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in</li>
                            </ul>
                            <p class="font-italic">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
              magna aliqua.
           
                            </p>
                        </div>
                    </div>

                </div>
            </section>
            <!-- End About Section -->

        </div>
        <!-- End #main -->

        <!-- ======= Footer ======= -->
        <footer id="footer">

            <!--
    <div class="footer-newsletter">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <h4>Our Newsletter</h4>
            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
          </div>
          <div class="col-lg-6">
            <form action="" method="post">
              <input type="email" name="email"><input type="submit" value="Subscribe">
            </form>
          </div>
        </div>
      </div>
    </div>
	-->

            <div class="footer-top">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-3 col-md-6 footer-links">
                            <h4>Links</h4>
                            <ul>
                                <li><i class="bx bx-chevron-right"></i><a href="#">Beranda</a></li>
                                <li><i class="bx bx-chevron-right"></i><a href="#">Tentang Kami</a></li>
                                <li><i class="bx bx-chevron-right"></i><a href="#">Terms of service</a></li>
                                <li><i class="bx bx-chevron-right"></i><a href="#">Privacy policy</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-3 col-md-6 footer-links">
                            <h4>Pelayanan</h4>
                            <ul>
                                <li><i class="bx bx-chevron-right"></i><a href="#">Pembuatan Kartu Anggota </br> Perpustakaan</a></li>
                                <li><i class="bx bx-chevron-right"></i><a href="#">Peminjaman Buku</a></li>
                                <li><i class="bx bx-chevron-right"></i><a href="#">Pengembalian Buku</a></li>
                                <li><i class="bx bx-chevron-right"></i><a href="#">Pengurusan Bebas </br> Perpustakaan</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-3 col-md-6 footer-contact">
                            <h4>Hubungi Kami</h4>
                            <p>
                                Jl. Tanah Merdeka VII,<br>
                                Rambutan Ciracas 13830<br>
                                Jakarta Timur
                                <br>
                                <br>
                                <strong>Phone:</strong> 08177 08510<br>
                                <strong>Email:</strong> ari3.gunawan@gmail.com<br>
                            </p>

                        </div>

                        <div class="col-lg-3 col-md-6 footer-info">
                            <h3>Tentang SIAK</h3>
                            <p>Cras fermentum odio eu feugiat lide par naso tierra. Justo eget nada terra videa magna derita valies darta donna mare fermentum iaculis eu non diam phasellus.</p>
                            <div class="social-links mt-3">
                                <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                                <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                                <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                                <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                                <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="container">
                <div class="copyright">
                    &copy; Copyright <strong><span>SIAK</span></strong>. All Rights Reserved
     
                </div>
                <div class="credits">
                    <!-- All the links in the footer should remain intact. -->
                    <!-- You can delete the links only if you purchased the pro version. -->
                    <!-- Licensing information: https://bootstrapmade.com/license/ -->
                    <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/eterna-free-multipurpose-bootstrap-template/ -->
                    Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                </div>
            </div>
        </footer>
        <!-- End Footer -->

        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script type="text/javascript" src="../../frontend/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script type="text/javascript" src="../../frontend/assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script type="text/javascript" src="../../frontend/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
        <script type="text/javascript" src="../../frontend/assets/vendor/php-email-form/validate.js"></script>
        <script type="text/javascript" src="../../frontend/assets/vendor/purecounter/purecounter.js"></script>
        <script type="text/javascript" src="../../frontend/assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script type="text/javascript" src="../../frontend/assets/vendor/waypoints/noframework.waypoints.js"></script>

        <!-- Template Main JS File -->
        <script type="text/javascript" src="../../frontend/assets/js/main.js"></script>
    </form>
</body>
</html>
