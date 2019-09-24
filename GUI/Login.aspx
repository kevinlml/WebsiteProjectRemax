<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    .auto-style1 {
            width: 100%;
            height: 50px;
        }
        .auto-style2 {
           width: 40%;
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
            <td class="border2"><a class="aborder2"; href="Search.aspx"> Search House</a></td>
            <td class="border2"><a class="aborder2"; href="SearchAgent.aspx"> Search Agent </a></td>
            <td class="border2";><a class="aborder2"; href=""> Message </a></td>
            <td class="imagesHome"><a class="aborder2"; href="Index.aspx">Home</a></td>
        </tr>
    </table>
        <div>
            
        </div>
    </form>
</body>
</html>
