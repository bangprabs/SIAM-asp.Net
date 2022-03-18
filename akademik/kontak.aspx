<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="kontak.aspx.vb" Inherits="akademik.kontak" %>

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
                    <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
                </div>
            </div>
        </section>

        <!-- ======= Header ======= -->
        <header id="header" class="d-flex align-items-center">
            <div class="container d-flex justify-content-between align-items-center">

                <div class="logo">
                    <h1><a href="default.aspx">Sistem Informasi Akademik</a></h1>
                    <!-- Uncomment below if you prefer to use an image logo -->
                    <!-- <a href="default.aspx"><img src="../../frontend/assets/img/logo.png" alt="" class="img-fluid"></a>-->
                </div>

                <nav id="navbar" class="navbar">
                    <ul>
                        <li><a href="default.aspx">Beranda</a></li>
                        <%--<li><a href="tentang.aspx">Tentang</a></li>
              <li><a href="tim.aspx">Tim</a></li>--%>
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
                        <li class="dropdown"><a href="#"><span>Arsip</span> <i class="bi bi-chevron-down"></i></a>
                            <ul>
                                <li><a href="../../../frontend/arsip-berita.aspx">Arsip Berita</a></li>
                                <li><a href="../../../frontend/arsip-kegiatan.aspx">Arsip Kegiatan</a></li>
                                <li><a href="../../../frontend/arsip-pengumuman.aspx">Arsip Pengumuman</a></li>
                            </ul>
                        </li>
                        <li><a class="active" href="kontak.aspx">Kontak</a></li>
                        <li><a href="../../backend/form-user/login.aspx" class="getstarted">Login</a></li>
                    </ul>
                    <i class="bi bi-list mobile-nav-toggle"></i>
                </nav>
                <!-- .navbar -->

            </div>
        </header>
        <!-- End Header -->

        <main id="main">

            <!-- ======= Breadcrumbs ======= -->
            <section id="breadcrumbs" class="breadcrumbs">
                <div class="container">

                    <ol>
                        <li><a href="default.aspx">Beranda</a></li>
                        <li>Kontak</li>
                    </ol>
                    <h2>Kontak</h2>

                </div>
            </section>
            <!-- End Breadcrumbs -->

            <!-- ======= Contact Section ======= -->
            <section id="contact" class="contact">
                <div class="container">

                    <div class="row">
                        <div class="col-lg-6">
                            <div class="info-box mb-4">
                                <i class="bx bx-map"></i>
                                <h3>Alamat Kami</h3>
                                <p>Jl. Bedahan, Kp. Bedahan 16916 Cibinong</p>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6">
                            <div class="info-box  mb-4">
                                <i class="bx bx-envelope"></i>
                                <h3>Email Kami</h3>
                                <p>bangprabs@gmail.com</p>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6">
                            <div class="info-box  mb-4">
                                <i class="bx bx-phone-call"></i>
                                <h3>Hubungi Kami</h3>
                                <p>0821 1098 4618</p>
                            </div>
                        </div>

                    </div>

                    <div class="row">

                        <div class="col-lg-6 ">
                            <iframe class="mb-4 mb-lg-0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3964.647845165595!2d106.84469241486244!3d-6.4392510953413185!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69eb91fc25fba7%3A0x3d0dbf2d5e9e887e!2sBerkah%20Lis%20Profil%20Beton!5e0!3m2!1sid!2sid!4v1614052617221!5m2!1sid!2sid" frameborder="0" style="border: 0; width: 100%; height: 384px;" allowfullscreen></iframe>
                        </div>

                        <div class="col-lg-6">
                            <form action="forms/contact.php" method="post" role="form" class="php-email-form">
                                <div class="row">
                                    <div class="col-md-6 form-group">
                                        <input type="text" name="name" class="form-control" id="name" placeholder="Nama Lengkap" required>
                                    </div>
                                    <div class="col-md-6 form-group mt-3 mt-md-0">
                                        <input type="email" class="form-control" name="email" id="email" placeholder="Alamat Email" required>
                                    </div>
                                </div>
                                <div class="form-group mt-3">
                                    <input type="text" class="form-control" name="subject" id="subject" placeholder="Subjek" required>
                                </div>
                                <div class="form-group mt-3">
                                    <textarea class="form-control" name="message" rows="5" placeholder="Pesan" required></textarea>
                                </div>
                                <div class="my-3">
                                    <div class="loading">Loading</div>
                                    <div class="error-message"></div>
                                    <div class="sent-message">Your message has been sent. Thank you!</div>
                                </div>
                                <div class="text-center">
                                    <button type="submit">Kirim Pesan</button>
                                </div>
                            </form>
                        </div>

                    </div>

                </div>
            </section>
            <!-- End Contact Section -->

        </main><!-- End #main -->

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
