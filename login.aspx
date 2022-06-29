<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

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
            <div>
                <div>
                    <div class="row">
                        <div class="col-xl-8 loginbox">
                            <div class="loginbox">
                                <h1 class="text-center mb-5">
                                    Login to Your Account
                                </h1>
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                <form>
                                    <div class="mb-3">
                                        <label for="exampleInputEmail1" class="form-label">Email address</label>
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                                        <div id="emailHelp" class="form-text">
                                            We'll never share your email with anyone else.
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <label for="exampleInputPassword1" class="form-label">Password</label>
                                        <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
                                    </div>
                                    <div class="row">
                                        <div class="col-xl-9">
                                            <asp:Button ID="Button1" runat="server" Text="Sign In" 
                                                class="text-white1 px-3 py-2" onclick="Button1_Click"/>
                                        </div>
                                        <div class="col-xl">
                                            <a href="#" class="text-decoration-none">Forgot Password?</a>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-xl-4 mainbg1">
                            <div class="transbox">
                                <center class="logreg ">
                                    <h1 class="mb-4 text-white">
                                    New Here?
                                    </h1>
                                    <p class="text-white">Sign up and discover a great<br /> amount of new opportunity</p>
                                    <asp:Button ID="Button3" runat="server" Text="Sign Up" 
                                        class="bg-white1 px-3 py-2" Font-Bold="True" Font-Size="Large" 
                                        BackColor="White" ForeColor="Black" Font-Overline="False" 
                                        onclick="Button3_Click" />
                                </center>
                            </div>
                        </div>
                    </div>
                </div>  
            </div>
        </form>
    </body>
</html>
