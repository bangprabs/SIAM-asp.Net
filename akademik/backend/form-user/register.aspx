<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="register.aspx.vb" Inherits="akademik.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Registrasi</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <style>
    body {
      font-family: Arial, Helvetica, sans-serif;
      background-color: #808080;
    }

    * {
      box-sizing: border-box;
    }

    /* Add padding to containers */
    .container {
      padding: 16px;
      background-color: white;
      max-width: 500px;
      margin: auto;
      padding: 10px;
      margin-top:10px;
    }

    /* Full-width input fields */
    input[type=text], input[type=password] {
      width: 100%;
      padding: 15px;
      margin: 5px 0 22px 0;
      display: inline-block;
      border: none;
      background: #f1f1f1;
    }

    input[type=text]:focus, input[type=password]:focus {
      background-color: #ddd;
      outline: none;
    }

    /* Overwrite default styles of hr */
    hr {
      border: 1px solid #f1f1f1;
      margin-bottom: 25px;
    }

    /* Set a style for the submit button */
    .registerbtn {
      background-color: #4CAF50;
      color: white;
      padding: 16px 20px;
      margin: 8px 0;
      border: none;
      cursor: pointer;
      width: 100%;
      opacity: 0.9;
    }

    .registerbtn:hover {
      opacity: 1;
    }

    /* Add a blue text color to links */
    a {
      color: dodgerblue;
    }

    /* Set a grey background color and center the text of the "sign in" section */
    .signin {
      background-color: #f1f1f1;
      text-align: center;
    }
    </style>
    <link rel="shortcut icon" href="../../../../assets/images/favicon.png" />
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
</head>

<body>
     <form id="form1" runat="server">
       <div class="container">
        <h1>Daftar Anggota</h1>
        <p>Silakan isi formulir ini untuk membuat akun.</p>
        <hr>

        <label for="text"><b>NIM</b></label>
        <input type="text" placeholder="NIM" name="nim" id="txtNIM"  runat="server" onkeypress="CheckNumeric(event);"/>

        <label for="text"><b>Nama Lengkap</b></label>
        <input type="text" placeholder="Nama Lengkap" name="nama lengkap" id="txtNamaLengkap"  runat="server"/>

        <label for="text"><b>Email</b></label>
        <input type="text" placeholder="Alamat Email" name="email" id="txtEmail"  runat="server"/>

        <label for="psw"><b>Password</b></label>
        <input type="password" placeholder="Kata Sandi" name="psw" id="txtPassword"  runat="server"/>

        <label for="psw-repeat"><b>Repeat Password</b></label>
        <input type="password" placeholder="Ulangi Kata Sandi" name="psw-repeat" id="txtKonfirmasi"  runat="server"/>
        <hr>
        <p>Dengan membuat akun, Anda menyetujui  <a href="#">Persyaratan & Privasi kami</a>.</p>

        <button type="submit" class="registerbtn" id="btnDaftar" runat="server">Daftar</button>
      </div>
  
      <div class="container signin" style="margin-top:0px;">
        <p>Sudah memiliki akun? <a href="login.aspx">Masuk</a>.</p>
      </div>
    </form>
</body>
</html>
