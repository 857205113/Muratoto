<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Randevu.aspx.cs" Inherits="proje.Arac" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="kullanici.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            width: 688px;
        }

        .auto-style3 {
            font-size: large;
        }

        .auto-style4 {
            background-color: #FFCC00;
        }

        .auto-style5 {
            font-weight: bold;
        }

        .auto-style6 {
            text-align: center;
            height: 1132px;
        }

        .auto-style7 {
            text-align: justify;
        }

        .auto-style8 {
            text-align: center;
            margin-left: 40px;
        }

        .auto-style9 {
            color: #FFFFFF;
            font-size: large;
            background-color: #800000;
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
            height: 490px;
            background-color: #16a085;
            float: right;
        }

        .content2 {
            width: 980px;
            height: 50px;
            background-color: #16a085;
            float: right;
        }

        .content3 {
            width: 980px;
            height: 380px;
            background-color: #16a085;
            float: right;
        }



        .clear {
            clear: both;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrap">

            <div class="header">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/resimler/20141128_16343911.jpg" Height="150px" Width="980px" />


            </div>
            <!-- Başlık -->

            <div class="content">


                <table class="auto-style1">
                    <tr>
                        <td class="auto-style12"><strong>
                            <asp:Label ID="Label1" runat="server" Text="Randevu" CssClass="auto-style3"></asp:Label>
                        </strong></td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="37px" TextMode="Date" Width="193px" CssClass="textbox"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            <strong>
                                <asp:Label ID="Label2" runat="server" Text="PLAKA" CssClass="auto-style3"></asp:Label>
                            </strong>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Height="37px" Width="193px" CssClass="textbox"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            <strong>
                                <asp:Label ID="Label3" runat="server" Text="MARKA" CssClass="auto-style3"></asp:Label>
                            </strong>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Height="37px" Width="193px" CssClass="textbox"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            <strong>
                                <asp:Label ID="Label10" runat="server" Text="MODEL" CssClass="auto-style3"></asp:Label>
                            </strong>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Height="37px" Width="193px" CssClass="textbox"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            <strong>
                                <asp:Label ID="Label4" runat="server" Text="Telefon" CssClass="auto-style3"></asp:Label>
                            </strong>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Height="37px" Width="193px" CssClass="textbox"></asp:TextBox></td>
                    </tr>
<%--                    <tr>
                        <td class="auto-style12">
                            <strong>
                                <asp:Label ID="Label11" runat="server" Text="Kayıt Tarihi" CssClass="auto-style3"></asp:Label>
                            </strong>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" Height="37px" TextMode="Date" Width="193px" CssClass="textbox"></asp:TextBox></td>
                    </tr>--%>
                    <tr>
                        <td class="auto-style12">
                            <strong>
                                <asp:Label ID="Label12" runat="server" Text="Araç Sorunu" CssClass="auto-style3"></asp:Label>
                            </strong>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server" Height="37px" Width="193px" CssClass="textbox"></asp:TextBox></td>
                    </tr>
                    <tr>

                        <td><strong>
                            <asp:Label ID="Label5" runat="server" Text="Randevu Saati" CssClass="auto-style3"></asp:Label>
                        </strong>

                        </td>
                        <td>
                            <asp:ListBox ID="ListBox3" CssClass="textbox" runat="server">

                                <asp:ListItem>09:00</asp:ListItem>
                                <asp:ListItem>10:00</asp:ListItem>
                                <asp:ListItem>11:00</asp:ListItem>
                                <asp:ListItem>13:00</asp:ListItem>
                                <asp:ListItem>14:00</asp:ListItem>
                                <asp:ListItem>15:00</asp:ListItem>
                                <asp:ListItem>16:00</asp:ListItem>
                                <asp:ListItem>17:00</asp:ListItem>
                                <asp:ListItem>18:00</asp:ListItem>
                                <asp:ListItem>19:00</asp:ListItem>
                                <asp:ListItem>20:00</asp:ListItem>
                            </asp:ListBox></td>
                    </tr>

                    <tr>

                        <td>
                            <strong>
                                <asp:Button ID="Button1" runat="server" Text="ARAÇ EKLE" CssClass="kbutonn" OnClick="Button1_Click" />
                            </strong>
                        </td>
                        <td>
                            <strong>
                                <asp:Button ID="Button2" runat="server" CssClass="kbutonn" OnClick="Button2_Click" Text="RANDEVU TAMAMLA" />
                            </strong>
                        </td>
                    </tr>
                </table>





            </div>
            <!--  İçerik -->

            <div class="content3">
                <strong>

                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Ran_Plaka" EmptyDataText="There are no data records to display." DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CssClass="auto-style9" AllowSorting="True" BorderColor="White" BorderStyle="Ridge" CellPadding="3" CellSpacing="1" Width="980px" BackColor="White" BorderWidth="2px" GridLines="None">
                        <Columns>
                            <asp:BoundField DataField="Ran_Plaka" HeaderText="Ran_Plaka" ReadOnly="True" SortExpression="Ran_Plaka" />
                            <asp:BoundField DataField="Ran_Tarih" HeaderText="Ran_Tarih" SortExpression="Ran_Tarih" />
                            <asp:BoundField DataField="Ran_Saat" HeaderText="Ran_Saat" SortExpression="Ran_Saat" />
                            <asp:BoundField DataField="Ran_AracSorun" HeaderText="Ran_AracSorun" SortExpression="Ran_AracSorun" />
                        </Columns>
                        <EditRowStyle BorderStyle="Double" />
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BorderColor="Black" BorderStyle="Double" HorizontalAlign="Center" BackColor="#DEDFDE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                    </asp:GridView>

                </strong>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BulutOtoConnectionString1 %>" DeleteCommand="DELETE FROM [Randevu_tbl] WHERE [Ran_Plaka] = @Ran_Plaka" InsertCommand="INSERT INTO [Randevu_tbl] ([Ran_Plaka], [Ran_Tarih], [Ran_Saat], [Ran_AracSorun]) VALUES (@Ran_Plaka, @Ran_Tarih, @Ran_Saat, @Ran_AracSorun)" ProviderName="<%$ ConnectionStrings:BulutOtoConnectionString1.ProviderName %>" SelectCommand="SELECT [Ran_Plaka], [Ran_Tarih], [Ran_Saat], [Ran_AracSorun] FROM [Randevu_tbl]" UpdateCommand="UPDATE [Randevu_tbl] SET [Ran_Tarih] = @Ran_Tarih, [Ran_Saat] = @Ran_Saat, [Ran_AracSorun] = @Ran_AracSorun WHERE [Ran_Plaka] = @Ran_Plaka">
                    <DeleteParameters>
                        <asp:Parameter Name="Ran_Plaka" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Ran_Plaka" Type="String" />
                        <asp:Parameter Name="Ran_Tarih" Type="String" />
                        <asp:Parameter Name="Ran_Saat" Type="String" />
                        <asp:Parameter Name="Ran_AracSorun" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Ran_Tarih" Type="String" />
                        <asp:Parameter Name="Ran_Saat" Type="String" />
                        <asp:Parameter Name="Ran_AracSorun" Type="String" />
                        <asp:Parameter Name="Ran_Plaka" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
            <!-- kenar menü -->



            <div class="content2">
                <strong>
                    <asp:Label ID="Label9" runat="server" Text="ZİYARET SAYISI"></asp:Label>
                </strong>
                <br />
                <asp:Label ID="Label8" runat="server"></asp:Label>
            </div>
            <!-- Alt bilgi -->
            <div class="clear">
                <strong>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Anasayfa.aspx">Anasayfa</asp:HyperLink>
                </strong>
                <br />
                <strong>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Randevu.aspx">Yenile</asp:HyperLink>
                </strong>
            </div>

        </div>


    </form>
</body>
</html>
