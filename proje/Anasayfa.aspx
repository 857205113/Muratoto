<%@ Page Title="" Language="C#" CodeBehind="Anasayfa.aspx.cs" Inherits="proje.Anasayfa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MURAT</title>
    <link href="kullanici.css" rel="stylesheet" />
<style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 100%;
            height: 50px;
        }
        .auto-style4 {
            background-color: #003366;
            padding: 10px;
            position: relative;
            font-family: 'Open Sans', sans-serif;
            font-size: 12px;
            text-decoration: none;
            color: #fff;
            border: solid 1px #831212;
            background-image:url(resimler/button1.gif);
            border-radius: 5px;
            left: 0px;
            top: 0px;
            width: 106px;
        }
        .auto-style4:hover{
            font-weight:bolder;
        }
       
         .auto-style7:hover{
            font-weight:bolder;
        }

       
        .auto-style8 {
            width: 560px;
            height: 514px;
        }

      
    
       
              .header {
            height: 150px;
            margin-bottom: 10px;
            background-color: #16a085;
        }
    
       
        </style>
</head>
<body>
<form id="form1" runat="server">
    <div class="kutu">
            <div class="header">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/resimler/20141128_16343911.jpg" Height="150px" Width="100%" />


            </div>
        <div style="height:30px;width:100%;text-align:right">
            <div style="height:auto;width:25px;float:right;">

               <a href="Yonetici.aspx"><img alt="" class="auto-style8" src="resimler/open.jpg" style="width: 25px; height: 30px" /></a></div>
        </div>
       <div class="menu">
           <div style="width: 269px; height: 48px; border-right-width: 1px; border-right-style: dotted; border-right-color:#e1e1e1; float: left; font-size: 24px; color: #fff; text-align: center; line-height: 40px;">
                
           </div>
           <div style="height:48px;width:725px;float:left;">

               <table class="auto-style2" style="text-align: center">
                   <tr>
                       <td>
                           <asp:Button ID="Button3" runat="server" CssClass="auto-style4" Font-Bold="False" Text="Anasayfa" PostBackUrl="~/Anasayfa.aspx" />
                       </td>
<%--                       <td>
                           <asp:Button ID="Button4" runat="server" CssClass="auto-style4" Font-Bold="False" Text="Randevular" PostBackUrl="~/Randevu.aspx" />
                       </td>--%>
                       <td>
                           <asp:Button ID="Button5" runat="server" CssClass="auto-style4" Font-Bold="False" Text="İlanlar" OnClick="Button5_Click" />
                       </td>
                           <td>
                           <asp:Button ID="Button7" runat="server" CssClass="auto-style4" Font-Bold="False" Text="Müşteri" OnClick="Button7_Click" />
                       </td>
                       <td>
                           <asp:Button ID="Button6" runat="server" CssClass="auto-style4" Font-Bold="False" Text="İLETİŞİM" PostBackUrl="~/iletisim.aspx" />
                       </td>
                   </tr>
               </table>

           </div>
           

           </div>


       <div class="govde" style="border: thin dotted #CCFF33; height:auto;">
           <div class="govdesol">
              <div class="govdesolbaslik"><strong>Duyurular</strong></div>
              <div class="govdesolicerik">
                  <asp:DataList ID="DataList2" runat="server" Width="100%" Font-Bold="True" >
                      <ItemTemplate>
                          <table class="auto-style1" style="background-color:#f3f3f3">
                              <tr>
                                  <td>
                                      <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/resimler/duyuru.jpg" Width="30px" />
                                  </td>
                                  <td style="width: 230px; text-align: left">
                                      <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("Yor_Baslik") %>'></asp:Literal>
                                  </td>
                              </tr>
                              <tr>
                                  <td colspan="2" style="padding-left: 32px">
                                      <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("Yor_Marka") %>'></asp:Literal>
                                  </td>
                              </tr>
                              
                          </table>
                      </ItemTemplate>
                  </asp:DataList>
               </div>
               <div style="height:30px;float:left;width:100%"></div>
               <a href="default.aspx"><div class="govdesolbaslik"><strong>Kategoriler</strong></div></a>
              <div class="govdesolicerik">

               </div>
           </div>
           
    </div>
    </div>

    </form>
</body>
    </html>
