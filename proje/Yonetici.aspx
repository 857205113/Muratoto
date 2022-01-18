<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Yonetici.aspx.cs" Inherits="proje.Randevu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="kullanici.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
            color: #FFFFFF;
            /*background-image: linear-gradient(bottom, rgb(171,27,27) 0%, rgb(212,51,51) 100%);*/
            background: url(search-dark.png) no-repeat 10px 6px #333;
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
            height: 510px;
            background-color: darkgray;
            float: right;
        }

        .sidebar {
            width: 330px;
            height: 510px;
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

        .auto-style4 {
            height: 25px;
        }
           .auto-style5 {
            height: 100px;
        }

        </style>
</head>
<body>
    <script type="text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");

            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";

            if (confirm("Kaydetmek istediğinize emin misiniz?")) {
                confirm_value.value = "Yes";
            }
            else {
                confirm_value.value = "No";
            }

            document.forms[0].appendChild(confirm_value);
        }
    </script>
    <form id="form1" runat="server">
        <div class="wrap">

            <div class="header">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/resimler/20141128_16343911.jpg" Height="150px" Width="980px" />


            </div>
            <!-- Başlık -->

            <div class="content">
                <strong>
                    <asp:Label ID="Label2" runat="server" Text="RANDEVU TABLOSU"></asp:Label>
                </strong>
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Ran_Plaka" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CssClass="auto-style1" Width="980px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="Ran_Plaka" HeaderText="Plaka" ReadOnly="True" SortExpression="Ran_Plaka" />
                        <asp:BoundField DataField="Ran_Tarih" HeaderText="Tarih" SortExpression="Ran_Tarih" />
                        <asp:BoundField DataField="Ran_Saat" HeaderText="Saat" SortExpression="Ran_Saat" />
                        <asp:BoundField DataField="Ran_AracSorun" HeaderText="AracSorun" SortExpression="Ran_AracSorun" />
                        <asp:BoundField DataField="Ran_Marka" HeaderText="Marka" SortExpression="Marka" />
                        <asp:BoundField DataField="Ran_Model" HeaderText="Model" SortExpression="Model" />
                        <asp:BoundField DataField="Ran_Telefon" HeaderText="Telefon" SortExpression="Telefon" />

                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </div>
            <div class="content">


                <strong>

                    <asp:Label ID="Label3" runat="server" Text="MÜŞTERİ TABLOSU"></asp:Label>
                </strong>

                <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Kis_Telefon" DataSourceID="SqlDataSource4" EmptyDataText="There are no data records to display." CssClass="auto-style1" Width="980px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="Kis_Telefon" HeaderText="Telefon" ReadOnly="True" SortExpression="Kis_Telefon" />
                        <asp:BoundField DataField="Kis_Ad" HeaderText="Ad" SortExpression="Kis_Ad" />
                        <asp:BoundField DataField="Kis_Soyad" HeaderText="Soyad" SortExpression="Kis_Soyad" />
                        <asp:BoundField DataField="Kis_Kategori" HeaderText="Kategori" SortExpression="Kis_Kategori" />
                        <asp:BoundField DataField="Kis_Adres" HeaderText="Adres" SortExpression="Kis_Adres" />
                        <asp:BoundField DataField="Kis_Mail" HeaderText="Mail" SortExpression="Kis_Mail" />
                        <asp:BoundField DataField="Kis_Plaka" HeaderText="Plaka" SortExpression="Kis_Plaka" />

                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:BulutOtoConnectionString1 %>" SelectCommand="SELECT * FROM [Kisiler_tbl]">
                </asp:SqlDataSource>
                <br />
<%--                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BulutOtoConnectionString1 %>" DeleteCommand="DELETE FROM [Musteri_tbl] WHERE [Mus_Telefon] = @Mus_Telefon" InsertCommand="INSERT INTO [Musteri_tbl] ([Mus_Telefon], [Mus_Plaka]) VALUES (@Mus_Telefon, @Mus_Plaka)" ProviderName="<%$ ConnectionStrings:BulutOtoConnectionString1.ProviderName %>" SelectCommand="SELECT [Mus_Telefon], [Mus_Plaka] FROM [Musteri_tbl]" UpdateCommand="UPDATE [Musteri_tbl] SET [Mus_Plaka] = @Mus_Plaka WHERE [Mus_Telefon] = @Mus_Telefon">
                    <DeleteParameters>
                        <asp:Parameter Name="Mus_Telefon" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Mus_Telefon" Type="String" />
                        <asp:Parameter Name="Mus_Plaka" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Mus_Plaka" Type="String" />
                        <asp:Parameter Name="Mus_Telefon" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>--%>
            </div>
            <div class="content">

                <strong>
                    <asp:Label ID="Label1" runat="server" Text="ARAÇ TABLOSU"></asp:Label>
                </strong>

                <strong>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Ara_Plaka" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." AllowPaging="True" CssClass="auto-style1" Width="980px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                            <asp:BoundField DataField="Ara_Plaka" HeaderText="Plaka" ReadOnly="True" SortExpression="Ara_Plaka" />
                            <asp:BoundField DataField="Ara_Model" HeaderText="Model" SortExpression="Ara_Model" />
                            <asp:BoundField DataField="Ara_Marka" HeaderText="Marka" SortExpression="Ara_Marka" />
                            <asp:BoundField DataField="Ara_Telefon" HeaderText="Telefon" SortExpression="Ara_Telefon" />
                            <asp:BoundField DataField="Ara_Kayittarihi" HeaderText="Kayittarihi" SortExpression="Ara_Kayittarihi" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </strong>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BulutOtoConnectionString1 %>" DeleteCommand="DELETE FROM [Arac_tbl] WHERE [Ara_Plaka] = @Ara_Plaka" InsertCommand="INSERT INTO [Arac_tbl] ([Ara_Plaka], [Ara_Model], [Ara_Marka], [Ara_Telefon], [Ara_Kayittarihi]) VALUES (@Ara_Plaka, @Ara_Model, @Ara_Marka, @Ara_Telefon, @Ara_Kayittarihi)" ProviderName="<%$ ConnectionStrings:BulutOtoConnectionString1.ProviderName %>" SelectCommand="SELECT [Ara_Plaka], [Ara_Model], [Ara_Marka], [Ara_Telefon], [Ara_Kayittarihi] FROM [Arac_tbl]" UpdateCommand="UPDATE [Arac_tbl] SET [Ara_Model] = @Ara_Model, [Ara_Marka] = @Ara_Marka, [Ara_Telefon] = @Ara_Telefon, [Ara_Kayittarihi] = @Ara_Kayittarihi WHERE [Ara_Plaka] = @Ara_Plaka">
                    <DeleteParameters>
                        <asp:Parameter Name="Ara_Plaka" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Ara_Plaka" Type="String" />
                        <asp:Parameter Name="Ara_Model" Type="String" />
                        <asp:Parameter Name="Ara_Marka" Type="String" />
                        <asp:Parameter Name="Ara_Telefon" Type="String" />
                        <asp:Parameter Name="Ara_Kayittarihi" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Ara_Model" Type="String" />
                        <asp:Parameter Name="Ara_Marka" Type="String" />
                        <asp:Parameter Name="Ara_Telefon" Type="String" />
                        <asp:Parameter Name="Ara_Kayittarihi" Type="String" />
                        <asp:Parameter Name="Ara_Plaka" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BulutOtoConnectionString1 %>" SelectCommand="SELECT * FROM [Randevu_tbl]">
                </asp:SqlDataSource>
            </div>

            <div class="sidebar">


                <table class="auto-style3">
                                        <tr>
                        <td class="auto-style12">
                            <strong>
                                <asp:Label ID="Label11" runat="server" Text="Başlık" CssClass="auto-style3"></asp:Label>
                            </strong>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" Height="37px" Width="193px" CssClass="textbox"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style12"><strong>
                            <asp:Label ID="Label4" runat="server" Text="Marka" CssClass="auto-style3"></asp:Label>
                        </strong></td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="37px" Width="193px" CssClass="textbox"></asp:TextBox></td>
                    </tr>
                                                            <tr>
                        <td class="auto-style12">
                            <strong>
                                <asp:Label ID="Label12" runat="server" Text="Model" CssClass="auto-style3"></asp:Label>
                            </strong>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server" Height="37px" Width="193px" CssClass="textbox"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            <strong>
                                <asp:Label ID="Label5" runat="server" Text="Renk" CssClass="auto-style3"></asp:Label>
                            </strong>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Height="37px" Width="193px" CssClass="textbox"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            <strong>
                                <asp:Label ID="Label6" runat="server" Text="Sene" CssClass="auto-style3"></asp:Label>
                            </strong>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Height="37px" Width="193px" CssClass="textbox"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            <strong>
                                <asp:Label ID="Label10" runat="server" Text="Fiyat" CssClass="auto-style3"></asp:Label>
                            </strong>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Height="37px" Width="193px" CssClass="textbox"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            <strong>
                                <asp:Label ID="Label7" runat="server" Text="Plaka" CssClass="auto-style3"></asp:Label>
                            </strong>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Height="37px" Width="193px" CssClass="textbox"></asp:TextBox></td>
                    </tr>

                                        <tr>
                        <td class="auto-style12">
                            <strong>
                                <asp:Label ID="Label9" runat="server" Text="Açıklama" CssClass="auto-style3"></asp:Label>
                            </strong>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server" Height="37px" Width="193px" CssClass="textbox"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style5">
                            <strong>
                                <asp:Label ID="Label8" runat="server" Text="Resim" CssClass="auto-style3"></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style5">
                            <asp:Image ID="Image2" runat="server" Height="100px" Width="240px" /></td>
                    </tr>


                </table>

            </div>
            <div class="content2">

                                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="kbutonn" />

                <br />

                        <asp:Button ID="btn_yukle" runat="server" CssClass="kbutonn" OnClick="btn_yukle_Click" Text="Yükle" OnClientClick="Confirm()" />

                <br />
                <br />
                <br />
                <br />

                
                <asp:GridView ID="GridView4" runat="server" Width="650px" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource6" AllowPaging="True" OnSelectedIndexChanged="GridView4_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Yor_Marka" HeaderText="Marka" SortExpression="Yor_Marka"></asp:BoundField>
                        <asp:BoundField DataField="Yor_Model" HeaderText="Model" SortExpression="Yor_Model"></asp:BoundField>
                        <asp:BoundField DataField="Yor_Renk" HeaderText="Renk" SortExpression="Yor_Renk"></asp:BoundField>
                        <asp:BoundField DataField="Yor_Yil" HeaderText="Sene" SortExpression="Yor_Yil"></asp:BoundField>
                        <asp:BoundField DataField="Yor_Fiyat" HeaderText="Fiyat" SortExpression="Yor_Fiyat"></asp:BoundField>
                        <asp:BoundField DataField="Yor_Plaka" HeaderText="Plaka" SortExpression="Yor_Plaka"></asp:BoundField>
                        <asp:BoundField DataField="Yor_Resim1" HeaderText="Resim" SortExpression="Yor_Resim1" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle HorizontalAlign="Center" BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:BulutOtoConnectionString1 %>" SelectCommand="SELECT * FROM [Yorum_tbl]"></asp:SqlDataSource>
<%--                                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:BulutOtoConnectionString1 %>" DeleteCommand="DELETE FROM [Yorum_tbl] WHERE [Yorum_Resim1] = @Yorum_Resim1" InsertCommand="INSERT INTO [Yorum_tbl] ([Yor_Baslik], [Yor_Marka], [Yor_Model], [Yor_Renk], [Yor_Yil], [Yor_Fiyat], [Yor_Plaka], [Yor_Ack], [Yor_Resim1]) VALUES (@Yor_Baslik, @Yor_Marka, @Yor_Model, @Yor_Renk, @Yor_Yil,@Yor_Fiyat,@Yor_Plaka,@Yor_Ack,@Yor_Resim1)" ProviderName="<%$ ConnectionStrings:BulutOtoConnectionString1.ProviderName %>" SelectCommand="SELECT [Yor_Baslik], [Yor_Marka], [Yor_Model], [Yor_Renk], [Yor_Yil], [Yor_Fiyat], [Yor_Plaka], [Yor_Ack], [Yor_Resim1] FROM [Yorum_tbl]" UpdateCommand="UPDATE [Yorum_tbl] SET [Yor_Baslik] = @Yor_Baslik, [Yor_Marka] = @Yor_Marka, [Yor_Model] = @Yor_Model, [Yor_Marka] = @Yor_Marka, [Yor_Renk] = @Yor_Renk, [Yor_Yil] = @Yor_Yil, [Yor_Fiyat] = @Yor_Fiyat, [Yor_Plaka] = @Yor_Plaka,[Yor_Ack] = @Yor_Ack,[Yor_Resim1] = @Yor_Resim1 WHERE [Yor_Plaka] = @Yor_Plaka">
                    <DeleteParameters>
                        <asp:Parameter Name="Yor_Plaka" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Yor_Baslik" Type="String" />
                        <asp:Parameter Name="Yor_Marka" Type="String" />
                        <asp:Parameter Name="Yor_Model" Type="String" />
                        <asp:Parameter Name="Yor_Renk" Type="String" />
                        <asp:Parameter Name="Yor_Yil" Type="String" />
                        <asp:Parameter Name="Yor_Fiyat" Type="String" />
                        <asp:Parameter Name="Yor_Plaka" Type="String" />
                        <asp:Parameter Name="Yor_Ack" Type="String" />
                        <asp:Parameter Name="Yor_Resim1" Type="String" />

                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Yor_Baslik" Type="String" />
                        <asp:Parameter Name="Yor_Marka" Type="String" />
                        <asp:Parameter Name="Yor_Model" Type="String" />
                        <asp:Parameter Name="Yor_Renk" Type="String" />
                        <asp:Parameter Name="Yor_Yil" Type="String" />
                        <asp:Parameter Name="Yor_Fiyat" Type="String" />
                        <asp:Parameter Name="Yor_Plaka" Type="String" />
                        <asp:Parameter Name="Yor_Ack" Type="String" />
                        <asp:Parameter Name="Yor_Resim1" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>--%>
        <br />
        <br />

            </div>

            <div class="clear">
                <strong>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Anasayfa.aspx">Anasayfa</asp:HyperLink>
                </strong>
                <br />
                <strong>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Yonetici.aspx">Yenile</asp:HyperLink>
                </strong>
            </div>
        </div>
    </form>
</body>
</html>
