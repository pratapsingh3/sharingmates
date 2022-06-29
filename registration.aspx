<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

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
            <div class="row">
                <div class="col-xl-4 mainbg1">
                    <div class="transbox">
                        <center class="logreg text-white">
                            <h1 class="mb-4">
                            Welcome Back
                            </h1>
                            <p>To keep connected with us please<br />login with your personal info</p>
                            <asp:Button ID="Button1" runat="server" Text="Sign Up" 
                                class="bg-white1 px-3 py-2" Font-Bold="True" Font-Size="Large" 
                                BackColor="White" ForeColor="Black" Font-Overline="False" 
                                onclick="Button1_Click" />
                        </center>
                    </div>                   
                </div>
                <div class="col-xl-8 loginbox">
                    <div class="loginbox">
                        <h1 class="text-center mb-5">
                            Create Account
                        </h1>
                        <form>
                            <div class="row mb-2">
                                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                                <div class="col-xl-2">  
                                    Full Name
                                </div>
                                <div class="col-xl">
                                    <asp:TextBox ID="TextBox1" runat="server" class="w-100 py-2"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ErrorMessage="Please enter your Name" ControlToValidate="TextBox1" 
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-xl-2">
                                    E-mail
                                </div>
                                <div class="col-xl">
                                    <asp:TextBox ID="TextBox2" runat="server" class="w-100 py-2"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ErrorMessage="Enter e-mail address" ControlToValidate="TextBox2" 
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter valid e-mail address" ControlToValidate="TextBox2" EnableClientScript="False" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-xl-2">
                                    Contact No.
                                </div>
                                <div class="col-xl">
                                    <asp:TextBox ID="TextBox3" runat="server" class="w-100 py-2"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" runat="server" ErrorMessage="Please enter Contact number" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ForeColor="Red" ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please enter valid contact number" ControlToValidate="TextBox3" ValidationExpression="^[7-9][0-9]{9}$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="row mb-4">
                                <div class="col-xl-2">
                                    Password
                                </div>
                                <div class="col-xl">
                                    <asp:TextBox ID="TextBox4" runat="server" class="w-100 py-2"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" runat="server" ErrorMessage="Please enter Password" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div>
                                <asp:Button ID="Button3" runat="server" Text="Sign In" 
                                    class="text-white1 px-5 py-3 regbtn" onclick="Button3_Click"/>
                            </div>
                        
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
