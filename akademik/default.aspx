<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="akademik._default1" %>

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
                    <i class="bi bi-envelope d-flex align-items-center"><a href="mailto:contact@example.com">bangprabs@gmail.com</a></i>
                    <i class="bi bi-phone d-flex align-items-center ms-4"><span>0821 1098 4618</span></i>
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
                    <h1><a href="default.aspx">Sistem Informasi Akademik</a></h1>
                    <!-- Uncomment below if you prefer to use an image logo -->
                    <!-- <a href="default.aspx"><img src="../../frontend/assets/img/logo.png" alt="" class="img-fluid"></a>-->
                </div>

                <nav id="navbar" class="navbar">
                    <ul>
                        <li><a class="active" href="default.aspx">Beranda</a></li>
                        <%--<li><a href="tentang.aspx">Tentang</a></li>--%>
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
                        <%--<li><a href="tim.aspx">Tim</a></li>--%>
                        <li><a href="kontak.aspx">Kontak</a></li>
                        <li><a href="../../backend/form-user/login.aspx" class="getstarted">Login</a></li>
                    </ul>
                    <i class="bi bi-list mobile-nav-toggle"></i>
                </nav>
                <!-- .navbar -->

            </div>
        </header>
        <!-- End Header -->

        <!-- ======= Hero Section ======= -->
        <section id="hero">
            <div class="hero-container">
                <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">

                    <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

                    <div class="carousel-inner" role="listbox">

                        <!-- Slide 1 -->
                        <div class="carousel-item active" style="background: url(../../frontend/assets/img/background/perpus-01.jpg)">
                            <div class="carousel-container">
                                <div class="carousel-content">
                                    <h2 class="animate_animated animate_fadeInDown">Selamat Datang di<span><br />
                                        Sistem Informasi Akademik</span></h2>
                                </div>
                            </div>
                        </div>

                        <!-- Slide 2 -->
                        <div class="carousel-item" style="background: url(../../frontend/assets/img/background/perpus-02.jpg)">
                            <div class="carousel-container">
                                <div class="carousel-content">
                                    <%--<h2 class="animate_animated fanimate_adeInDown">Jelajahi Dunia <span>Perpustakaan Digital</span></h2>
                <p class="animate_animated animate_fadeInUp">Membaca buku dapat merubah hidupmu selamanya.</p>--%>
                                    <!-- <a href="" class="btn-get-started animate_animated animate_fadeInUp">Read More</a> -->
                                </div>
                            </div>
                        </div>

                        <!-- Slide 3 -->
                        <div class="carousel-item" style="background: url(../../frontend/assets/img/background/perpus-03.jpg)">
                            <div class="carousel-container">
                                <div class="carousel-content">
                                    <%--<h2 class="animate_animated animate_fadeInDown">Jelajahi Dunia <span>Perpustakaan Digital</span></h2>
                <p class="animate_animated animate_fadeInUp">Semua orang adalah pembaca, namun sebagian orang mungkin belum mendapatkan buku kesukaannya</p>--%>
                                    <!-- <a href="" class="btn-get-started animate_animated animate_fadeInUp">Read More</a> -->
                                </div>
                            </div>
                        </div>

                    </div>

                    <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
                    </a>

                    <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
                        <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
                    </a>

                </div>
            </div>
        </section>
        <!-- End Hero -->

        <div id="main">
            <!-- ======= Blog Section ======= -->
            <section id="blog" class="blog">
                <div class="container" data-aos="fade-up">

                    <div class="row">

                        <div class="col-lg-8 entries">

                            <article class="entry">
                                <div class="section-title">
                                    <h2>Berita</h2>
                                </div>

                                <div class="entry-img">
                                    <img src="../../frontend/assets/img/blog/blog-1.jpg" alt="" class="img-fluid">
                                </div>

                                <h2 class="entry-title">
                                    <a href="blog-single.html">Dolorum optio tempore voluptas dignissimos cumque fuga qui quibusdam quia</a>
                                </h2>

                                <div class="entry-meta">
                                    <ul>
                                        <li class="d-flex align-items-center"><i class="bi bi-person"></i><a href="blog-single.html">John Doe</a></li>
                                        <li class="d-flex align-items-center"><i class="bi bi-clock"></i><a href="blog-single.html"><time datetime="2020-01-01">Jan 1, 2020</time></a></li>
                                        <li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i><a href="blog-single.html">12 Comments</a></li>
                                    </ul>
                                </div>

                                <div class="entry-content">
                                    <p>
                                        Similique neque nam consequuntur ad non maxime aliquam quas. Quibusdam animi praesentium. Aliquam et laboriosam eius aut nostrum quidem aliquid dicta.
                  Et eveniet enim. Qui velit est ea dolorem doloremque deleniti aperiam unde soluta. Est cum et quod quos aut ut et sit sunt. Voluptate porro consequatur assumenda perferendis dolore.
               
                                    </p>
                                    <div class="read-more">
                                        <a href="blog-single.html">Read More</a>
                                    </div>
                                </div>

                            </article>
                            <!-- End blog entry -->

                            <article class="entry">
                                <div class="section-title">
                                    <h2>Kegiatan</h2>
                                </div>
                                <div class="entry-img">
                                    <img src="../../frontend/assets/img/blog/blog-2.jpg" alt="" class="img-fluid">
                                </div>

                                <h2 class="entry-title">
                                    <a href="blog-single.html">Nisi magni odit consequatur autem nulla dolorem</a>
                                </h2>

                                <div class="entry-meta">
                                    <ul>
                                        <li class="d-flex align-items-center"><i class="bi bi-person"></i><a href="blog-single.html">John Doe</a></li>
                                        <li class="d-flex align-items-center"><i class="bi bi-clock"></i><a href="blog-single.html"><time datetime="2020-01-01">Jan 1, 2020</time></a></li>
                                        <li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i><a href="blog-single.html">12 Comments</a></li>
                                    </ul>
                                </div>

                                <div class="entry-content">
                                    <p>
                                        Incidunt voluptate sit temporibus aperiam. Quia vitae aut sint ullam quis illum voluptatum et. Quo libero rerum voluptatem pariatur nam.
                  Ad impedit qui officiis est in non aliquid veniam laborum. Id ipsum qui aut. Sit aliquam et quia molestias laboriosam. Tempora nam odit omnis eum corrupti qui aliquid excepturi molestiae. Facilis et sint quos sed voluptas. Maxime sed tempore enim omnis non alias odio quos distinctio.
               
                                    </p>
                                    <div class="read-more">
                                        <a href="blog-single.html">Read More</a>
                                    </div>
                                </div>

                            </article>
                            <!-- End blog entry -->

                            <article class="entry">
                                <div class="section-title">
                                    <h2>Pengumuman</h2>
                                </div>
                                <div class="entry-img">
                                    <img src="../../frontend/assets/img/blog/blog-3.jpg" alt="" class="img-fluid">
                                </div>

                                <h2 class="entry-title">
                                    <a href="blog-single.html">Possimus soluta ut id suscipit ea ut. In quo quia et soluta libero sit sint.</a>
                                </h2>

                                <div class="entry-meta">
                                    <ul>
                                        <li class="d-flex align-items-center"><i class="bi bi-person"></i><a href="blog-single.html">John Doe</a></li>
                                        <li class="d-flex align-items-center"><i class="bi bi-clock"></i><a href="blog-single.html"><time datetime="2020-01-01">Jan 1, 2020</time></a></li>
                                        <li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i><a href="blog-single.html">12 Comments</a></li>
                                    </ul>
                                </div>

                                <div class="entry-content">
                                    <p>
                                        Aut iste neque ut illum qui perspiciatis similique recusandae non. Fugit autem dolorem labore omnis et. Eum temporibus fugiat voluptate enim tenetur sunt omnis.
                  Doloremque est saepe laborum aut. Ipsa cupiditate ex harum at recusandae nesciunt. Ut dolores velit.
               
                                    </p>
                                    <div class="read-more">
                                        <a href="blog-single.html">Read More</a>
                                    </div>
                                </div>

                            </article>
                            <!-- End blog entry -->

                        </div>
                        <!-- End blog entries list -->

                        <div class="col-lg-4">

                            <div class="sidebar">

                                <h3 class="sidebar-title">Info Mahasiswa</h3>
                                <div class="sidebar-item categories">
                                    <ul>
                                        <li><i class="bi bi-bar-chart"></i><a href="#">Info Penerimaan Mahasiswa Baru </a></li>
                                        <li><i class="bi bi-bar-chart"></i><a href="#">Pengumuman Calon Mahasiswa Baru </a></li>
                                        <li><i class="bi bi-bar-chart"></i><a href="#">Biaya Perkuliahan </a></li>
                                    </ul>
                                </div>
                                <!-- End sidebar categories-->

                                <h3 class="sidebar-title">Info Pendaftaran</h3>
                                <div class="sidebar-item categories">
                                    <ul>
                                        <li><i class="bi bi-card-checklist"></i><a href="#">Pendaftaran Mahasiswa Baru </a></li>
                                        <li><i class="bi bi-card-checklist"></i><a href="#">Jadwal Test Mahasiswa Baru </a></li>
                                    </ul>
                                </div>
                                <!-- End sidebar categories-->

                                <h3 class="sidebar-title">Kuisioner Alumni</h3>
                                <div class="sidebar-item categories">
                                    <ul>
                                        <li><i class="bi bi-calendar4-week"></i><a href="#">Form Kuisioner Alumni </a></li>
                                        <li><i class="bi bi-calendar4-week"></i><a href="#">Form Kuisioner Pengguna Alumni </a></li>
                                    </ul>
                                </div>
                                <!-- End sidebar categories-->

                            </div>
                            <!-- End sidebar -->

                        </div>
                        <!-- End blog sidebar -->

                    </div>

                </div>
            </section>
            <!-- End Blog Section -->

            <!-- ======= Clients Section =======
    <section id="clients" class="clients">
      <div class="container">

        <div class="section-title">
          <h2>Clients</h2>
          <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
        </div>

        <div class="clients-slider swiper-container">
          <div class="swiper-wrapper align-items-center">
            <div class="swiper-slide"><img src="../../frontend/assets/img/clients/client-1.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="../../frontend/assets/img/clients/client-2.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="../../frontend/assets/img/clients/client-3.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="../../frontend/assets/img/clients/client-4.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="../../frontend/assets/img/clients/client-5.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="../../frontend/assets/img/clients/client-6.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="../../frontend/assets/img/clients/client-7.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="../../frontend/assets/img/clients/client-8.png" class="img-fluid" alt=""></div>
          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section> End Clients Section -->

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
                                <li><i class="bx bx-chevron-right"></i><a href="#">Pembuatan Kartu Anggota
                                    <br>
                                    Perpustakaan</a></li>
                                <li><i class="bx bx-chevron-right"></i><a href="#">Peminjaman Buku</a></li>
                                <li><i class="bx bx-chevron-right"></i><a href="#">Pengembalian Buku</a></li>
                                <li><i class="bx bx-chevron-right"></i><a href="#">Pengurusan Bebas
                                    <br>
                                    Perpustakaan</a></li>
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
