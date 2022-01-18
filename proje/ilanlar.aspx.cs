using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Threading.Tasks;
using System.Web.UI.WebControls;

namespace proje
{
    public partial class ilanlar : System.Web.UI.Page
    {
        DbOperation inf;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            inf = new DbOperation();
            Application["ziyaret"] = (int)Application["ziyaret"] + 1;
            Label8.Text = Application["ziyaret"].ToString();


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Image2.ImageUrl = GridView1.SelectedRow.Cells[9].Text;

        }
    }
}