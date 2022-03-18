<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="akademik.login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
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
            margin-top: 30px;
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
        button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

            button:hover {
                opacity: 0.8;
            }

        .cancelbtn {
            width: auto;
            padding: 10px 18px;
            background-color: #f44336;
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

        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }

        img.avatar {
            width: 20%;
            border-radius: 50%;
        }
    </style>
    <link rel="shortcut icon" href="../../assets/images/favicon.png" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Login Admin</h1>
            <hr>
            <div class="imgcontainer">
                <img src="../../../assets/images/brand_icons/oval-copy.jpg" class="avatar" alt="profile" />
            </div>
            <label for="uname"><b>Username</b></label>
            <input type="text" placeholder="Username" name="nim" required="" id="txtNIM" runat="server">

            <label for="psw"><b>Kata Sandi</b></label>
            <input type="password" placeholder="Kata Sandi" name="psw" required="" id="txtPassword" runat="server">

            <button type="submit" id="btnMasuk" runat="server">Masuk</button>
        </div>
    </form>
</body>
</html>

