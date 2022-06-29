<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sharing Mates</title>
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/logo1.png" />
    <link href="assets/css/style.css" type="text/css" rel="stylesheet"/>
    <link href="assets/bootstrap-5.1.3-dist/css/bootstrap.css" type="text/css" rel="stylesheet"/>
    <link href="assets/fontawesome-free-6.0.0-web/css/all.css" type="text/css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div class="mx-5 my-3">
            <div class="t4Left">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/assets/img/logi.png" class="w-25"/>
            </div>
            <div class="t4Right mt-4 loginbtn">
                <a href="login.aspx" class="text-decoration-none text-dark"><i class="fa-solid fa-user"></i> Login</a>
            </div>
            <div class="t4Clear"></div>
        </div>
        <div  class="loginbg">
            <div class="">
                <div class="text-white indexpg">
                   <center>
                        <h1 class="fw-bold">Welcome to Sharing Mates</h1>
                        <p>A Perfect Sharing between Flatmates</p>
                   </center> 
                </div>
                <asp:Image ID="Image2" runat="server" class="w-100" 
                    ImageUrl="~/assets/img/abc.png" Height="430px" />
            </div>
        </div> 
    </form>
</body>
</html>
