using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace proje
{
    public partial class Arac : System.Web.UI.Page
    {
        DbOperation inf;
        protected void Page_Load(object sender, EventArgs e)
        {
            inf = new DbOperation();
            Button2.Visible = false;
            Application["ziyaret"] = (int)Application["ziyaret"] + 1;
            Label8.Text = Application["ziyaret"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button2.Visible = true;
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox7.Text != "")
            {


                string query = "insert into dbo.Arac_tbl (Ara_Plaka,Ara_Marka,Ara_Model,Ara_Telefon,Ara_Kayittarihi )  values ('" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + DateTime.Now.ToString() + "')";
                int islem = inf.runCommand(query);


            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {



            string saat = "";
            for (int i = 0; i <= ListBox3.Items.Count - 1; i++)
            {
                if (ListBox3.Items[i].Selected)
                {
                    saat = ListBox3.Items[i].Text;

                }
            }

            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox7.Text != "")
            {


                string query = "insert into dbo.Randevu_tbl (Ran_Plaka,Ran_Tarih,Ran_Saat,Ran_AracSorun,Ran_Telefon,Ran_Marka,Ran_Model )  values ('" + TextBox2.Text + "','" + TextBox1.Text + "','" + saat + "','" + TextBox7.Text + "','" + TextBox5.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
                int islem = inf.runCommand(query);

            }

        }

  



    }
}