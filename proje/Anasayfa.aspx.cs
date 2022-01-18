using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace proje
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        DbOperation baglan = new DbOperation();

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SELECT CONCAT(Yor_Marka,' ',Yor_Model) as Yor_Marka,Yor_Baslik from dbo.Yorum_tbl ", baglan.baglan());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("ilanlar.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("musteri.aspx");

        }
    }
}