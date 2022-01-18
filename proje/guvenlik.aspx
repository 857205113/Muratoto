<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="guvenlik.aspx.cs" Inherits="proje.guvenlik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        *{
            margin:0;
            padding:0;
            border:0;
        }

        .auto-style2 {
            width: 367px;
        }
        .auto-style3 {
            width: 328px;
        }
        .textbox{
            box-shadow:1px 1px 45px #333;
            transition: 200ms all ease;
            border:none;
            padding: 5px 5px;
        }
        .textbox:hover{
            margin:-5px 0 0 -5px;
            height:29px;
            width:250px;
        }
        .auto-style4 {
            width: 312px;
            margin-left: 53px;
        }
        .a_demo_one {
	background-color:#ba2323;
	padding:10px;
	position:relative;
	font-family: 'Open Sans', sans-serif;
    font-weight:bold;
	font-size:12px;
	text-decoration:none;
	color:#fff;
	border: solid 1px #831212;
	background-image: linear-gradient(bottom, rgb(171,27,27) 0%, rgb(212,51,51) 100%);
	border-radius: 5px;
}

.a_demo_one:active {
	padding-bottom:9px;
	padding-left:10px;
	padding-right:10px;
	padding-top:11px;
	top:1px;
	background-image: linear-gradient(bottom, rgb(171,27,27) 100%, rgb(212,51,51) 0%);
}
    </style>
</head>
<body style="background-color:#e1e1e1;">
    <form id="form1" runat="server">
        <div style="height:100%;width:100%;">
            <img src="resimler/images.jpg" style="width:100%"/>
        <div style="height: 225px; background-color: #302222; color: #fff;width:350px;padding:20px;position:absolute;top:50%;left:50%;margin-left:-160px;margin-top:-90px;">
            <div style="margin-top: 20px;" class="auto-style2">Kullanici Adi:  <asp:TextBox ID="TextBox1" runat="server" Height="25px" CssClass="textbox"></asp:TextBox> <%--<asp:TextBox ID="TextBox1" runat="server" Height="25px" CssClass="textbox"></asp:TextBox>--%></div>
            <div style="margin-top: 20px;" class="auto-style4">Şifre :   <asp:TextBox ID="TextBox2" runat="server" Height="25px" CssClass="textbox" TextMode="Password"></asp:TextBox><%--<asp:TextBox ID="TextBox2" runat="server" Height="25px" TextMode="Password" CssClass="textbox"></asp:TextBox>--%></div>
            <div style="text-align: center; margin-top: 20px;" class="auto-style3">
                <asp:Button ID="Button1" runat="server" Text="GİRİS"  Width="80px" OnClick="Button1_Click" CssClass="a_demo_one" /></div>
            <div style="float: right; width: 300px; margin-top: 20px; text-align: right">
                <asp:Label ID="Label1" runat="server" Text="Yönetici Paneli" ForeColor="White"></asp:Label>
            </div>
        </div>
            </div>
    </form>
</body>
</html>
