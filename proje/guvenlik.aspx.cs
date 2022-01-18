using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proje
{
    public partial class guvenlik : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ad = TextBox1.Text;
            string sifre = TextBox2.Text;
            if (ad == "Murat" && sifre == "123")
            {
                FormsAuthentication.RedirectFromLoginPage(ad, false);
            }
            else
            {
                Label1.Visible = true;
                string close = @"<script type='text/javascript'>
                                window.returnValue = true;
                                window.close();
                                </script>";
                base.Response.Write(close);
            }
        }
    }
}