<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

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
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </div>

        <div class="mainbg">
            <div class="container">
                <div class="abc">
                    <div class="mainbox">
                        <div class="mainboxbor">
                            <div class="">
                                <h1 class="pb-2">
                                    Roj ka Budget
                                </h1>
                            </div>
                           
                            <div class="t4Clear"></div>
                            <div class="mainbor p-3">
                                <div class="row pb-4">
                                    <div class="col-xl">
                                        <b>S. No.</b>
                                    </div>
                                    <div class="col-xl">
                                        <b>Items</b> 
                                    </div>
                                    <div class="col-xl">
                                        <b>Amount</b> 
                                    </div>
                                    <div class="col-xl">
                                        <b>Divide Into</b> 
                                    </div>
                                </div>

                                <div class="row pb-2">
                                    <div class="col-xl">
                                        1. 
                                    </div>
                                    <div class="col-xl">
                                        Rent 
                                    </div>
                                    <div class="col-xl">
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-xl">
                                        <div class="col-xl">
                                            <asp:CheckBoxList ID="CheckBoxList1" runat="server" 
                                                DataSourceID="SqlDataSource1" DataTextField="session" DataValueField="session">
                                            </asp:CheckBoxList>
                                        </div>
                                    </div>
                                </div>

                                <div class="row pb-2">
                                    <div class="col-xl">
                                        2. 
                                    </div>
                                    <div class="col-xl">
                                        Wifi 
                                    </div>
                                    <div class="col-xl">
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-xl">
                                        <div class="col-xl">
                                            <asp:CheckBoxList ID="CheckBoxList2" runat="server" 
                                                DataSourceID="SqlDataSource1" DataTextField="session" DataValueField="session">
                                            </asp:CheckBoxList>
                                        </div>
                                    </div>
                                </div>

                                <div class="row pb-2">
                                    <div class="col-xl">
                                        3. 
                                    </div>
                                    <div class="col-xl">
                                        Party 
                                    </div>
                                    <div class="col-xl">
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-xl">
                                        <asp:CheckBoxList ID="CheckBoxList3" runat="server" 
                                            DataSourceID="SqlDataSource1" DataTextField="session" DataValueField="session">
                                        </asp:CheckBoxList>
                                    </div>
                                </div>

                                <div class="row pb-2">
                                    <div class="col-xl">
                                        4. 
                                    </div>
                                    <div class="col-xl">
                                        Food 
                                    </div>
                                    <div class="col-xl">
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-xl">
                                        <asp:CheckBoxList ID="CheckBoxList4" runat="server" 
                                            DataSourceID="SqlDataSource1" DataTextField="session" DataValueField="session">
                                        </asp:CheckBoxList>
                                    </div>
                                </div>

                                <div class="row pb-2">
                                    <div class="col-xl">
                                        5. 
                                    </div>
                                    <div class="col-xl">
                                        Electricity 
                                    </div>
                                    <div class="col-xl">
                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-xl">
                                        <asp:CheckBoxList ID="CheckBoxList6" runat="server" 
                                            DataSourceID="SqlDataSource1" DataTextField="session" DataValueField="session">
                                        </asp:CheckBoxList>
                                    </div>
                                </div>

                                <div class="row pb-2">
                                    <div class="col-xl">
                                        6. 
                                    </div>
                                    <div class="col-xl">
                                        Gas 
                                    </div>
                                    <div class="col-xl">
                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-xl">
                                        <asp:CheckBoxList ID="CheckBoxList5" runat="server" 
                                            DataSourceID="SqlDataSource1" DataTextField="session" DataValueField="session">
                                        </asp:CheckBoxList>
                                    </div>
                                </div>

                                <div class="row pb-4">
                                    <div class="col-xl">
                                        7. 
                                    </div>
                                    <div class="col-xl">
                                        Other 
                                    </div>
                                    <div class="col-xl">
                                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-xl">
                                        <asp:CheckBoxList ID="CheckBoxList7" runat="server" 
                                            DataSourceID="SqlDataSource1" DataTextField="session" DataValueField="session">
                                        </asp:CheckBoxList>
                                    </div>
                                </div>
                                <asp:Button ID="Button1" runat="server" Text="Submit" 
                                    class="bg-dark text-white" onclick="Button1_Click"/>
                            </div>
                        </div>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [session] FROM [room]"></asp:SqlDataSource>
    </form>
</body>
</html>
