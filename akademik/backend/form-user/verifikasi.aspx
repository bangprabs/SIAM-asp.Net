<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="verifikasi.aspx.vb" Inherits="akademik.verifikasi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblAktivasi" runat="server" ForeColor="Red" Font-Size="Small" />
            <br />
            <br />
            Akun Anda telah berhasil diaktifkan. Silahkan Login : <a href="../../backend/form-user/login.aspx">Klik Disini</a>
        </div>
    </form>
</body>
</html>
