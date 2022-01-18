<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="musteri.aspx.cs" Inherits="proje.musteri" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <link href="kullanici.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style4 {
            color: #FFFFFF;
            background-image:url(resimler/metal.jpg);
            font-weight: bold;
            width: 650px;
            height:450px;            
        }
                .auto-style3 {
            color: #FFFFFF;
            background-color: #800000;
            font-weight: bold;
            
        }

        body {
            margin: 0;
            padding: 0;
        }

        .wrap {
            width: 980px;
            margin: 0 auto;
        }

        .header {
            height: 150px;
            margin-bottom: 10px;
            background-color: #16a085;
        }

        .content {
            width: 980px;
            height: 300px;
            background-color: #16a085;
            float: right;
        }

        .content2 {
            width: 650px;
            height: 410px;
            background-color: darkgray;
            float: right;
        }

        .sidebar {
            width: 330px;
            height: 450px;
            background-color: #16a085;
            float: left;
        }

        .footer {
            height: 70px;
            margin-top: 10px;
            background-color: #16a085;
        }

        .clear {
            clear: both;
        }

        .auto-style5 {
            height: 140px;
            text-align: center;
        }
        .auto-style6 {
            width: 490px;
        }
        .auto-style7 {
            height: 140px;
            text-align: center;
            width: 490px;
        }
    </style>
</head>
<body style="background-color: #000000">
    <form id="form1" runat="server">
        <div class="wrap">

            <div class="header">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/resimler/20141128_16343911.jpg" Height="150px" Width="980px" />


            </div>
            <div class="sidebar">


                <table class="auto-style3">
                    <tr>
                        <td class="auto-style12">
                            <strong>
                                <asp:Label ID="Label11" runat="server" Text="Telefon" CssClass="auto-style3"></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style6">
                            <asp:TextBox ID="TextBox1" runat="server" Height="37px" Width="193px" CssClass="textbox"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style12"><strong>
                            <asp:Label ID="Label4" runat="server" Text="Ad" CssClass="auto-style3"></asp:Label>
                        </strong></td>
                        <td class="auto-style6">
                            <asp:TextBox ID="TextBox2" runat="server" Height="37px" Width="193px" CssClass="textbox"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            <strong>
                                <asp:Label ID="Label12" runat="server" Text="Soyad" CssClass="auto-style3"></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style6">
                            <asp:TextBox ID="TextBox3" runat="server" Height="37px" Width="193px" CssClass="textbox"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            <strong>
                                <asp:Label ID="Label5" runat="server" Text="Adres" CssClass="auto-style3"></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style6">
                            <asp:TextBox ID="TextBox4" runat="server" Height="37px" Width="193px" CssClass="textbox"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style12">
                            <strong>
                                <asp:Label ID="Label10" runat="server" Text="E-posta" CssClass="auto-style3"></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style6">
                            <asp:TextBox ID="TextBox5" runat="server" Height="37px" Width="193px" CssClass="textbox"></asp:TextBox></td>
                    </tr>


                    <tr>
                        <td class="auto-style12">
                            <strong>
                                <asp:Label ID="Label1" runat="server" Text="Plaka" CssClass="auto-style3"></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style6">
                            <asp:TextBox ID="TextBox6" runat="server" Height="37px" Width="193px" CssClass="textbox"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style5">
                            <strong>
                                <asp:Button ID="ButtonEkle" CssClass="kbutonn" runat="server" Text="Kaydet" OnClick="ButtonEkle_Click" />
                            </strong>
                              <strong>
                                <asp:Button ID="ButtonGuncelle" CssClass="kbutonn" runat="server" Text="Güncelle" OnClick="ButtonGuncelle_Click" />
                            </strong>
                              <strong>
                                <asp:Button ID="ButtonSil" CssClass="kbutonn" runat="server" Text="Sil" OnClick="ButtonSil_Click" />
                            </strong>
                        </td>
                        <td class="auto-style7">
                            <asp:Button ID="Button2" CssClass="kbutonn" runat="server" NavigateUrl="~/Randevu.aspx" Text="Randevu Oluştur" OnClick="Button2_Click" />
                        </td>
                    </tr>

                    <%--                    <tr>
                        <td></td>
                        <td>
                            <strong>
                                <asp:Button ID="Button1" runat="server" Text="ARAÇ EKLE" CssClass="kbutonn" OnClick="Button1_Click" OnClientClick="Confirm()" />
                            </strong>
                        </td>

                    </tr>--%>
                </table>

            </div>
            <div class="content2">
                <table class="auto-style4">
                    <tr>
                        <td>

                            <asp:TextBox ID="TextBox7" CssClass="textbox" runat="server" placeholder="Telefon"></asp:TextBox></td>

                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox8" CssClass="textbox" runat="server" placeholder="Plaka"></asp:TextBox></td>

                    </tr>
                                        <tr>
                        <td>
                            <asp:Button ID="Button3" CssClass="kbutonn" runat="server" Text="Randevu Sorgula" OnClick="Button3_Click" /></td>
                                            
                                               
                                            
                    </tr>
                                                            <tr>
                        <td>
                            <asp:Button ID="Button4" CssClass="kbutonn" runat="server" Text="Kayıtlı Müşteri Getir" OnClick="Button4_Click" /></td>
                                            
                                               
                                            
                    </tr>
                                        <tr>
                        <td >
                            <strong>
                                <asp:Label ID="lbluyari" runat="server" Text="" CssClass="auto-style3"></asp:Label>
                            </strong>
                        </td>
                                            </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="Black" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2" Height="270px" Width="640px">
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                <RowStyle BackColor="White" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#383838" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </div>

            <div class="clear">
                <strong>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/musteri.aspx" Style="color: #669999; font-size: large;">Yenile</asp:HyperLink>
                </strong>
                <br />
                <strong>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Anasayfa.aspx" Style="font-weight: 700; font-size: large; color: #669999">Anasayfa</asp:HyperLink>
                </strong>
            </div>
            <strong></strong>
            <br />
        </div>
    </form>
</body>
</html>
