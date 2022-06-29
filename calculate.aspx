<%@ Page Language="C#" AutoEventWireup="true" CodeFile="calculate.aspx.cs" Inherits="calculate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sharing Mates</title>
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/logo1.png" />
    <link href="assets/css/style.css" type="text/css" rel="stylesheet"/>
    <link href="assets/bootstrap-5.1.3-dist/css/bootstrap.css" type="text/css" rel="stylesheet"/>
    <link href="assets/fontawesome-free-6.0.0-web/css/all.css" type="text/css" rel="stylesheet">
    <script src="bootstrap-5.0.0-beta2-dist/js/bootstrap.min.js" type="text/javascript"></script>
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
                                    <a class="nav-link text-dark" aria-current="page" href="#">Budget Entry</a>
                                </li>
                                <li class="nav-item">
                                <a class="nav-link active text-info" href="calculate.aspx">Expendure</a>
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

            <div class="mainbg2">
                <div class="row">
                    <div class="col-xl-3">
                        <div class="accordion" id="accordionExample">
                          <div class="accordion-item">
                            <h2 class="accordion-header" id="headingOne">
                              <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                Rent
                              </button>
                            </h2>
                            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                              <div class="accordion-body">
                                  <asp:Button ID="Button1" runat="server" Text="Show Expenduture" 
                                      onclick="Button1_Click" />
                              </div>
                            </div>
                          </div>
                          <div class="accordion-item">
                            <h2 class="accordion-header" id="headingTwo">
                              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                Wi-Fi
                              </button>
                            </h2>
                            <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                              <div class="accordion-body">
                                  <asp:Button ID="Button2" runat="server" Text="Show Expenduture" 
                                      onclick="Button2_Click" />
                              </div>
                            </div>
                          </div>
                          <div class="accordion-item">
                            <h2 class="accordion-header" id="headingThree">
                              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                Party
                              </button>
                            </h2>
                            <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                              <div class="accordion-body">
                                  <asp:Button ID="Button3" runat="server" Text="Show Expenduture" 
                                      onclick="Button3_Click" />
                              </div>
                            </div>
                          </div>
                          <div class="accordion-item">
                            <h2 class="accordion-header" id="headingFour">
                              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                Food
                              </button>
                            </h2>
                            <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
                              <div class="accordion-body">
                                  <asp:Button ID="Button4" runat="server" Text="Show Expenduture" 
                                      onclick="Button4_Click" />
                              </div>
                            </div>
                          </div>
                          <div class="accordion-item">
                            <h2 class="accordion-header" id="headingFive">
                              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                Electricity
                              </button>
                            </h2>
                            <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#accordionExample">
                              <div class="accordion-body">
                                  <asp:Button ID="Button5" runat="server" Text="Show Expenduture" 
                                      onclick="Button5_Click" />
                              </div>
                            </div>
                          </div>
                          <div class="accordion-item">
                            <h2 class="accordion-header" id="headingSix">
                              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                                Gas
                              </button>
                            </h2>
                            <div id="collapseSix" class="accordion-collapse collapse" aria-labelledby="headingSix" data-bs-parent="#accordionExample">
                              <div class="accordion-body">
                                  <asp:Button ID="Button6" runat="server" Text="Show Expenduture" 
                                      onclick="Button6_Click" />
                              </div>
                            </div>
                          </div>
                          <div class="accordion-item">
                            <h2 class="accordion-header" id="headingSeven">
                              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
                                Other
                              </button>
                            </h2>
                            <div id="collapseSeven" class="accordion-collapse collapse" aria-labelledby="headingSeven" data-bs-parent="#accordionExample">
                              <div class="accordion-body">
                                  <asp:Button ID="Button7" runat="server" Text="Show Expenduture" 
                                      onclick="Button7_Click" />
                              </div>
                            </div>
                          </div>
                        </div>       
                    </div>
                    <div class="col-xl-8">
                        <div class="abc">
                            <div class="mainbox">
                                <h1>Expenduture</h1>
                                <!-- Rent -->
                                <asp:Panel ID="Panel1" runat="server">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT [sessionid], [rent], [rentpayer] FROM [itemdet] WHERE ([status] = @status)">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="Active" Name="status" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
                                    </asp:GridView>
                                </asp:Panel>

                                <!-- Wi-Fi -->
                                <asp:Panel ID="Panel2" runat="server">
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT [sessionid], [wifi], [wifipayer] FROM [itemdet] WHERE ([status] = @status)">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="Active" Name="status" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                        DataSourceID="SqlDataSource2">
                                        <Columns>
                                            <asp:BoundField DataField="sessionid" HeaderText="sessionid" 
                                                SortExpression="sessionid" />
                                            <asp:BoundField DataField="wifi" HeaderText="wifi" SortExpression="wifi" />
                                            <asp:BoundField DataField="wifipayer" HeaderText="wifipayer" 
                                                SortExpression="wifipayer" />
                                        </Columns>
                                    </asp:GridView>
                                </asp:Panel>

                                <!-- Party -->
                                <asp:Panel ID="Panel3" runat="server">
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT [sessionid], [party], [partypayer] FROM [itemdet] WHERE ([status] = @status)">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="Active" Name="status" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                                        DataSourceID="SqlDataSource3">
                                        <Columns>
                                            <asp:BoundField DataField="sessionid" HeaderText="sessionid" 
                                                SortExpression="sessionid" />
                                            <asp:BoundField DataField="party" HeaderText="party" SortExpression="party" />
                                            <asp:BoundField DataField="partypayer" HeaderText="partypayer" 
                                                SortExpression="partypayer" />
                                        </Columns>
                                    </asp:GridView>
                                </asp:Panel>

                                <!-- Food -->
                                <asp:Panel ID="Panel4" runat="server">
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT [sessionid], [food], [foodpayer] FROM [itemdet] WHERE ([status] = @status)">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="Active" Name="status" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                                    DataSourceID="SqlDataSource4">
                                    <Columns>
                                        <asp:BoundField DataField="sessionid" HeaderText="sessionid" 
                                            SortExpression="sessionid" />
                                        <asp:BoundField DataField="food" HeaderText="food" SortExpression="food" />
                                        <asp:BoundField DataField="foodpayer" HeaderText="foodpayer" 
                                            SortExpression="foodpayer" />
                                    </Columns>
                                </asp:GridView>
                                </asp:Panel>
                                    
                                <!-- Electricity -->
                                <asp:Panel ID="Panel5" runat="server">
                                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT [sessionid], [electricity], [electricitypayer] FROM [itemdet] WHERE ([status] = @status)">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="Active" Name="status" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
                                    DataSourceID="SqlDataSource5">
                                    <Columns>
                                        <asp:BoundField DataField="sessionid" HeaderText="sessionid" 
                                            SortExpression="sessionid" />
                                        <asp:BoundField DataField="electricity" HeaderText="electricity" 
                                            SortExpression="electricity" />
                                        <asp:BoundField DataField="electricitypayer" HeaderText="electricitypayer" 
                                            SortExpression="electricitypayer" />
                                    </Columns>
                                </asp:GridView>
                                </asp:Panel>
                                    
                                <!-- Gas -->
                                <asp:Panel ID="Panel6" runat="server">
                                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT [sessionid], [gas], [gaspayer] FROM [itemdet] WHERE ([status] = @status)">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="Active" Name="status" Type="String" />
                                        </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
                                    DataSourceID="SqlDataSource6">
                                    <Columns>
                                        <asp:BoundField DataField="sessionid" HeaderText="sessionid" 
                                            SortExpression="sessionid" />
                                        <asp:BoundField DataField="gas" HeaderText="gas" SortExpression="gas" />
                                        <asp:BoundField DataField="gaspayer" HeaderText="gaspayer" 
                                            SortExpression="gaspayer" />
                                    </Columns>
                                </asp:GridView>
                                </asp:Panel>
                                    
                                <!-- Other -->
                                <asp:Panel ID="Panel7" runat="server">
                                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT [sessionid], [other], [otherpayer] FROM [itemdet] WHERE ([status] = @status)">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="Active" Name="status" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" 
                                    DataSourceID="SqlDataSource7">
                                    <Columns>
                                        <asp:BoundField DataField="sessionid" HeaderText="sessionid" 
                                            SortExpression="sessionid" />
                                        <asp:BoundField DataField="other" HeaderText="other" SortExpression="other" />
                                        <asp:BoundField DataField="otherpayer" HeaderText="otherpayer" 
                                            SortExpression="otherpayer" />
                                    </Columns>
                                </asp:GridView>
                                </asp:Panel>
                                
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

        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>
