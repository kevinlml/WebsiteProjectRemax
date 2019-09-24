<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" />
    <link href="../styles/style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 50px;
        }
        .auto-style2 {
           width: 40%;
        }
          .auto-style3 {
            width: 44%;
        }
          .auto-style4 {
            width: 100%;
            background-color:#1f355e;
            text-align:center;
            border:0px;
            color:white;
        }
          .border2{
            border-right:thin solid white;

        }
        .aborder2{
            color:white;
            text-decoration:none;
        }
        .imagesLogin
        {
            background-image:url(/images/loginbar.png), url(/images/loginbar.png); 
            background-position:left, right; background-size:contain ,contain; 
            background-repeat:no-repeat; 
            background-position:left, right;
        }
        .imagesHome
        {
            background-image:url(/images/home.jpg); 
            background-position:left; background-size:contain; 
            background-repeat:no-repeat; 
            background-position:left;
            color:white;
            text-decoration:none;
            border-right:thin solid white;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
     <div>
        <br />
    </div>
        <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2";  style="background-image:url(/images/remax_logo.png); background-position:left; background-size:contain; background-repeat: no-repeat; white-space:50px">&nbsp;</td>
                <td style="border-right: thin dotted blue; background-image:url(/images/REMAX_Collection_Horizontal_rgb_low.jpg); background-position: center; background-size:contain; background-repeat: no-repeat" class="auto-style3">&nbsp;</td>
                <td style="border-right: thin dotted blue; background-image:url(/images/R_Commercial_logo_RGB1.jpg); background-position: center; background-size:contain; background-repeat: no-repeat" class="auto-style3">&nbsp;</td>
                <td style="width:200px; text-align:center;"> global.remax.com ></td>
            </tr>
        </table>
    
    </div>
    <div>
        <br />
    </div>
    <table class="auto-style4">
        <tr>
            <td class="imagesHome"><a class="aborder2"; href="Index.aspx"> Home</a></td>
            <td class="border2"><a class="aborder2"; href="SearchAgent.aspx"> Search Agent </a></td>
            <td class="border2";><a class="aborder2"; href="Message.aspx"> Message </a></td>
            <td class="imagesLogin"><a class="aborder2"; href="Login.aspx">Login</a></td>
        </tr>
    </table>
        <div>
            
        </div>
      <section class="Search">
            <h1 class="text-center"><strong>Search a House</strong></h1>
            <table class="auto-style3" align="center">
                <tr>
                    <td colspan="2"><hr /></td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>
                        <asp:Label ID="lblFrom" runat="server" Text="Type of Residence :"></asp:Label>
                        </strong></td>
                    <td>
                                                <asp:DropDownList ID="cboTypeOfResidence" runat="server" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="cboTypeOfResidence_SelectedIndexChanged">
                                                    <asp:ListItem Text="Select Residence" Value="-1"></asp:ListItem>
                                                </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>
                        <asp:Label ID="lblTo" runat="server" Width="100%" Text="Location :"></asp:Label>
                        </strong></td>
                    <td>
                           
                
                        <asp:DropDownList ID="cboLocation" runat="server" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="cboLocation_SelectedIndexChanged">
                             <asp:ListItem Text="Select Location" Value="-1"></asp:ListItem>
                        </asp:DropDownList>
                           
                
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>
                        <asp:Label ID="lblSubject" runat="server" Text="Price :"></asp:Label>
                        </strong></td>
                    <td>
                            
                        <asp:DropDownList ID="cboPrice" runat="server" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="cboPrice_SelectedIndexChanged">
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>10000</asp:ListItem>
                            <asp:ListItem>20000</asp:ListItem>
                            <asp:ListItem>30000</asp:ListItem>
                            <asp:ListItem>50000</asp:ListItem>
                            <asp:ListItem>100000</asp:ListItem>
                            <asp:ListItem>200000</asp:ListItem>
                            <asp:ListItem>300000</asp:ListItem>
                            <asp:ListItem>500000</asp:ListItem>
                            <asp:ListItem>600000</asp:ListItem>
                            <asp:ListItem>70000</asp:ListItem>
                        </asp:DropDownList>
                            
                      </td>
                </tr> 
                <tr>
                    <td class="auto-style2">
                        <strong>
                        <asp:Label ID="lblMessage" runat="server" Text="Number of Rooms :"></asp:Label>
                        </strong>
                    </td>
                    <td>
                        <asp:DropDownList ID="cboNumberOfRooms" Width="100%" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cboNumberOfRooms_SelectedIndexChanged">
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>1 1/2</asp:ListItem>
                            <asp:ListItem>2 1/2</asp:ListItem>
                            <asp:ListItem>3 1/2</asp:ListItem>
                            <asp:ListItem>4 1/2</asp:ListItem>
                            <asp:ListItem>5 1/2</asp:ListItem>
                            <asp:ListItem>6 1/2</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                </tr>
                <tr>
                    <td colspan="2"><hr /></td>
                </tr>
                <tr>
                      <td class="text-left">
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" style="background-color: rgb(229, 48, 48); border-color: rgb(229, 48, 48); color: #ffffff;"/>
                      </td> <td class="text-right">  <asp:Button ID="btnSend" runat="server" Text="Search"  style="background-color: rgb(229, 48, 48); border-color: rgb(229, 48, 48); color: #ffffff;" OnClick="btnSend_Click"  />
                    </td>
                </tr>
            </table>

        </section>
        <table class="w-100">
            <tr>
                <td style="width: 10%;">&nbsp;</td>
                <td style="width: 85%;">
        <asp:Literal ID="litHouses" runat="server"></asp:Literal>
                </td>
                <td style="width: 5%;">&nbsp;</td>
            </tr>
        </table>
       <footer>
          <p class="footer-description" style="text-align:center">© 2019 Kevin Murillo</p>
    </footer>
    </form>
      </body>
</html>
