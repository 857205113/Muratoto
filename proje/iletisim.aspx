<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="proje.iletisim" %>

<!DOCTYPE html>

<meta content="text/html; charset=windows-1254" /><style type="text/css">
body{
background-color:#ffe6cc;
}
h1{
color:#ff0000;
}
textarea{
background-color:#efefef;
font-weight:bold;
font-size: 13px;
padding: 3px;
font-family: Arial;
color:navy;
}
td{
font-weight:bold;
font-size: 13pt;
font-family: Arial;
color:red;
}
input{
background-color:#efefef;
width: 250px;
font-weight:bold;
color:navy;
}</style><!-- ksabitk -->
<div align="center">
<h1 style="text-align: center"><span style="font-family: Arial"><span style="font-size: 40px"><span style="color: #000000">İletişim Formu</span></span></span></h1>
<form method="post" action="mailto:guler.m214@gmail.com">
<span style="color: #000000">&nbsp;</span>
<table border="0" cellpadding="10">
<tbody>
<tr>
<td align="right"><span style="color: #000000">İsminiz : </span></td>
<td><span style="color: #000000"><input name="sender_name" type="text" /></span></td>
</tr>
<tr>
<td align="right"><span style="color: #000000">E - Mail Adresiniz : </span></td>
<td><span style="color: #000000"><input name="sender_email" type="text" /></span></td>
</tr>
<tr>
<td align="right"><span style="color: #000000">Konu : </span></td>
<td><span style="color: #000000"><input name="subject" type="text" /></span></td>
</tr>
<tr>
<td valign="top" align="right"><span style="color: #000000">Mesaj : </span></td>
<td><span style="color: #000000"><textarea rows="10" cols="40" name="message"></textarea></span></td>
</tr>
<tr>
<td colspan="2" align="center"><span style="color: #000000"><input id="send" type="submit" style="width: 100px; color: #000000" name="send" value="G&ouml;nder" /></span></td>
</tr>
</tbody>
</table>
<p><span style="color: #000000">&nbsp;</span></p>
</form>
</div>



























































