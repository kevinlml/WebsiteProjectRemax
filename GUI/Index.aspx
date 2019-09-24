<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 50px;
        }
        .auto-style2 {
            width: 800px;
        }
        .auto-style3 {
            width: 200px;
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
       .divisioncenter
       {
           height:700px;
           width:100%;
           background-image:url(/images/centerdivision.jpg);
          background-repeat:no-repeat;
          background-size:cover;
          position:relative;
       }
        .auto-style5 {
            width: 40%;
            background-color:white;
            border-radius: 15px;
            text-align:center;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            height:100px;
        }
        .txtboxround
        {
            border-radius: 10px;
            border-color:white;
            border-style: solid;
            background-color:#4570c2;
            color:white;
            padding: 10px 30px;
            
           
        }
        .bttnboxround
        {
            border-radius: 5px;
            border-color:red;
            border-style: solid;
            background-color:#b30b30;
            font-family:"Open Sans","Helvetica Neue",Arial,Verdana,Geneva,sans-serif;
            font-weight:bold;
            color:white;
            padding: 10px 30px;
           
        }
        .bottom-left {
  position: absolute;
  bottom: 1px;
  left: 450px;
  background-color: white;
  padding:20px;
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
                <td class="border2"><a class="aborder2"; href="Search.aspx"> Search House</a></td>
                <td class="border2"><a class="aborder2"; href="SearchAgent.aspx"> Search Agent </a></td>
                <td class="border2";><a class="aborder2"; href="Message.aspx"> Message </a></td>
                <td class="imagesLogin"><a class="aborder2"; href="Login.aspx">Login</a></td>
            </tr>
        </table>
    <div >
        <section class="divisioncenter">
        <table class="auto-style5">
            <tr>
                <td colspan="2" >Start your perfect house search here!</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtSearch" runat="server" Text="Search by city" OnClick="this.value=''" CssClass="txtboxround" Width="271px" Height="20px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="bttnSearch" runat="server" Text="Let's Go" CssClass="bttnboxround" Width="142px" Height="40px" />
                </td>
            </tr>
        </table>
        </section>
    </div>
        <div style="background-color:white">
            <h1 class="bottom-left">New listings daily, right at your fingertips.</h1>
        </div>
    </form>
    </body>
</html>
