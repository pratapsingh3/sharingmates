<%@ Page Language="C#" AutoEventWireup="true" CodeFile="joinroom.aspx.cs" Inherits="joinroom" %>

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
        <div class="mainbg3">
            <div class="abc">
                <div class="container">
                    <div class="roombox">
                        <form>
                            <h1>Join Room</h1>
                            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                            <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Room Id</label>
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                            <asp:Label ID="Label1" runat="server" Text="" ForeColor="#FF3300"></asp:Label>
                            </div>
                            <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label">Password</label>
                            <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
                            </div> 
                            <asp:Button ID="Button1" runat="server" Text="Join Room" 
                                class="btn btn-primary" onclick="Button1_Click"/>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
