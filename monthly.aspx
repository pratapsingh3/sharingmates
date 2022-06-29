<%@ Page Language="C#" AutoEventWireup="true" CodeFile="monthly.aspx.cs" Inherits="monthly" %>

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
            <div class="bg-light">
            <div class="container">
                <nav class="navbar navbar-expand-lg">
                    <div class="container-fluid">
                        <a class="navbar-brand text-danger" href="#">
                            <asp:Image ID="Image1" runat="server" class="w-25" ImageUrl="~/assets/img/logi.png"></asp:Image>
                        </a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active text-info" aria-current="page" href="#">Budget Entry</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark" href="calculate.aspx">Expendure</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark" href="monthly.aspx">Divide Expenduture</a>
                            </li>
                        </ul>
                            <div>
                                <a href="createroom.aspx" class="text-decoration-none">Create Room</a>
                                <label>|</label>
                                <a href="joinroom.aspx" class="text-decoration-none">Join Room</a>
                                <label>|</label>
                                <label><i class="fa-solid fa-user"></i></label>
                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </div>

            <div class="mainbg2">
                <div class="container">
                    <div class="abc">
                        <div class="mainbox">
                            <center>
                                
                                <asp:Label ID="Label25" runat="server" Text="Total Expense : " Font-Size="Larger" Font-Bold="True" ForeColor="Red"></asp:Label>
                                <asp:Label ID="Label2" runat="server" Text="" Font-Bold="True" Font-Size="Larger"></asp:Label>
                           
                                <div class="pt-5">
                                    <asp:Label ID="Label4" runat="server" Text="Rent : " Font-Size="Larger"></asp:Label> 
                                    <asp:Label ID="Label5" runat="server" Text="" Font-Size="Larger"></asp:Label>
                                    <asp:Label ID="Label6" runat="server" Text="|" Font-Size="Larger"></asp:Label>
                                    <asp:Label ID="Label7" runat="server" Text="Wi-Fi : " Font-Size="Larger"></asp:Label>
                                    <asp:Label ID="Label8" runat="server" Text="" Font-Size="Larger"></asp:Label>
                                    <asp:Label ID="Label9" runat="server" Text="|" Font-Size="Larger"></asp:Label>
                                    <asp:Label ID="Label10" runat="server" Text="Party : " Font-Size="Larger"></asp:Label>
                                    <asp:Label ID="Label11" runat="server" Text="" Font-Size="Larger"></asp:Label>
                                    <asp:Label ID="Label12" runat="server" Text="|" Font-Size="Larger"></asp:Label>
                                    <asp:Label ID="Label13" runat="server" Text="Food : " Font-Size="Larger"></asp:Label>
                                    <asp:Label ID="Label14" runat="server" Text="" Font-Size="Larger"></asp:Label>
                                    <asp:Label ID="Label15" runat="server" Text="|" Font-Size="Larger"></asp:Label>
                                    <asp:Label ID="Label16" runat="server" Text="Electricity : " Font-Size="Larger"></asp:Label>
                                    <asp:Label ID="Label17" runat="server" Text="" Font-Size="Larger"></asp:Label>
                                    <asp:Label ID="Label18" runat="server" Text="|" Font-Size="Larger"></asp:Label>
                                    <asp:Label ID="Label19" runat="server" Text="Gas : " Font-Size="Larger"></asp:Label>
                                    <asp:Label ID="Label20" runat="server" Text="" Font-Size="Larger"></asp:Label>
                                    <asp:Label ID="Label21" runat="server" Text="|" Font-Size="Larger"></asp:Label>
                                    <asp:Label ID="Label22" runat="server" Text="Other" Font-Size="Larger"></asp:Label>
                                    <asp:Label ID="Label23" runat="server" Text="" Font-Size="Larger"></asp:Label>
                                </div>
                                <asp:Button ID="Button1" runat="server" Text="Divide Expenduture" 
                                     onclick="Button1_Click" />
                             </center>
                            <asp:Panel ID="Panel1" runat="server">
                                <asp:Label ID="Label24" runat="server" Text=""></asp:Label>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </asp:Panel>
                                
                        </div>
                    </div>
                </div>
            </div>

            <div class="bg-dark text-white pt-3 pb-1 ">
			    <div class="container">
				    <div class="t4Left">
				    &copy; Copyright 2021 sharingmates.com
			    </div>
			    <div class="t4Right">
				    <ul class="footline">
					    <li><i class="fa-brands fa-instagram"></i></li>
					    <li><i class="fa-brands fa-facebook-f"></i></li>
					    <li><i class="fa-brands fa-twitter"></i></li>
					    <li><i class="fa-solid fa-at"></i></li>
				    </ul>
			    </div>
			    <div class="t4Clear"></div>
			    </div>
		    </div> 
        </div>
    </form>
</body>
</html>
