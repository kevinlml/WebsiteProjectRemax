<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Message.aspx.cs" Inherits="Message" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" />
    <link href="../styles/style.css" rel="stylesheet" />
    <style>
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
    <div>
        <br />
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2";  style="background-image:url(/images/remax_logo.png); background-position:left; background-size:contain; background-repeat: no-repeat">&nbsp;</td>
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
            <td class="border2";><a class="aborder2"; href="Search.aspx"> Search House </a></td>
            <td class="imagesLogin"><a class="aborder2"; href="Login.aspx">Login</a></td>
        </tr>
    </table>
        <div>
            
        </div>
            <section class="message">
            <h1 class="text-center"><strong>Message an Agent</strong></h1>
            <table class="auto-style3" align="center">
                <tr>
                    <td colspan="2"><hr /></td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>
                        <asp:Label ID="lblFrom" runat="server" Text="From :"></asp:Label>
                        </strong></td>
                    <td>
                        <asp:TextBox ID="txtFrom" runat="server" Width="489px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>
                        <asp:Label ID="lblTo" runat="server" Text="To :"></asp:Label>
                        </strong></td>
                    <td>
                         <asp:TextBox ID="txtRecipient" runat="server" Width="489px" ReadOnly="True" Visible="False"></asp:TextBox>
                        <asp:DropDownList ID="cboAgents" runat="server" Width="489px" AutoPostBack="True">
                            <asp:ListItem Text="Select Agent Name" Value="-1"></asp:ListItem>
                        </asp:DropDownList>
                
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>
                        <asp:Label ID="lblSubject" runat="server" Text="Subject:"></asp:Label>
                        </strong></td>
                    <td>
                        <asp:TextBox ID="txtSubject" runat="server" Width="489px"></asp:TextBox>
                    </td>
                </tr> 
                <tr>
                    <td class="auto-style2">
                        <strong>
                        <asp:Label ID="lblMessage" runat="server" Text="Message :"></asp:Label>
                        </strong>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMessage" runat="server" Width="489px" Height="61px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><hr /></td>
                </tr>
                <tr>
                      <td class="text-left">
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" Cssclass="btn btn-color btn-size" style="background-color: rgb(229, 48, 48); border-color: rgb(229, 48, 48); color: #ffffff;"/>
                      </td> <td class="text-right">  <asp:Button ID="btnSend" runat="server" Text="Send" Cssclass="btn btn-color btn-size" style="background-color: rgb(229, 48, 48); border-color: rgb(229, 48, 48); color: #ffffff;" OnClick="btnSend_Click"  />
                    </td>
                </tr>
            </table>

        </section>
    </form>
</body>
</html>
