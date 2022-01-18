<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ilanlar.aspx.cs" Inherits="proje.ilanlar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="kullanici.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }

        .auto-style2 {
            font-weight: bold;
        }

        .auto-style3 {
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
            height: 50px;
            background-color: #16a085;
            float: right;
        }

        .content2 {
            width: 980px;
            height: 600px;
            background-color: darkgray;
            float: right;
        }


        .sidebar {
            width: 275px;
            height: 590px;
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrap">

            <div class="header">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/resimler/20141128_16343911.jpg" Height="150px" Width="980px" />


            </div>
            <div class="content2">
                <strong>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" EmptyDataText="There are no data records to display." BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="SqlDataSource1" GridLines="None" Width="980px" AllowPaging="True" Height="300px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="Yor_Baslik" HeaderText="Baslik" SortExpression="Yor_Baslik" />
                            <asp:BoundField DataField="Yor_Marka" HeaderText="Marka" SortExpression="Yor_Marka" />
                            <asp:BoundField DataField="Yor_Model" HeaderText="Model" SortExpression="Yor_Model" />
                            <asp:BoundField DataField="Yor_Renk" HeaderText="Renk" SortExpression="Yor_Renk" />
                            <asp:BoundField DataField="Yor_Yil" HeaderText="Sene" SortExpression="Yor_Yil" />
                            <asp:BoundField DataField="Yor_Fiyat" HeaderText="Fiyat" SortExpression="Yor_Fiyat" />
                            <asp:BoundField DataField="Yor_Ack" HeaderText="Açıklama" SortExpression="Yor_Ack" />
                            <asp:BoundField DataField="Yor_Resim1" HeaderText="Resim" SortExpression="Yor_Resim1" />
                        </Columns>
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#DEDFDE" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
                    

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BulutOtoConnectionString1 %>" SelectCommand="SELECT [Yor_Baslik], [Yor_Marka], [Yor_Model], [Yor_Renk], [Yor_Yil], [Yor_Fiyat], [Yor_Ack], [Yor_Resim1] FROM [Yorum_tbl]"></asp:SqlDataSource>
                    

                </strong>
                <asp:Image ID="Image2" runat="server" Height="300px" Width="980px" />
                
            </div>


            <div class="content">

                <strong>
                    <asp:Label ID="Label7" runat="server" Text="Ziyaret Sayısı"></asp:Label>

                </strong>
                <br />
                <asp:Label ID="Label8" runat="server"></asp:Label>

            </div>


            <br />

            <div class="clear">
                <strong>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ilanlar.aspx">Yenile</asp:HyperLink>
                </strong>

                <br />
                <strong>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Anasayfa.aspx">Anasayfa</asp:HyperLink>
                </strong>
            </div>

        </div>
    </form>
</body>
</html>
