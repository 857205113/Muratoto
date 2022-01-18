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

    public partial class musteri : System.Web.UI.Page
    {
        
        DbOperation inf;

        protected void Page_Load(object sender, EventArgs e)
        {
            lbluyari.Text = "";
            //GridView1.Visible = true;
            inf = new DbOperation();
        }

        protected void ButtonEkle_Click(object sender, EventArgs e)
        {
            //string tel = TextBox_TEL.Text;
            //string ad = TextBox_AD.Text;
            //string soyad = TextBox_SoyAD.Text;



            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "")
            {
                int kategori = 1;

                string query = "insert into dbo.Kisiler_tbl (Kis_Telefon,Kis_Ad,Kis_Soyad,Kis_Kategori,Kis_Adres,Kis_Mail,Kis_Plaka )  values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','"+kategori+ "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";

                int islem = inf.runCommand(query);
                lbluyari.Text = "Ekleme işlemi başarıyla tamamlanmıştır.";

            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "")
            {
                Response.Redirect("Randevu.aspx");
            }
            else
            {
                lbluyari.Text = "Lütfen Müşteri Kayıt ekranındaki tüm alanları doldurunuz.";
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox7.Text != "" && TextBox8.Text != "" )
            {


                GridView1.DataSource = inf.List("select * from dbo.Randevu_tbl where CONVERT(VARCHAR,Ran_Telefon)='" + TextBox7.Text + "' and CONVERT(VARCHAR,Ran_Plaka)='" + TextBox8.Text + "'");
                GridView1.DataBind();
            }
            else
            {
                lbluyari.Text = "Lütfen tüm alanları doldurunuz.";
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (TextBox7.Text != "" && TextBox8.Text != "")
            {


                GridView1.DataSource = inf.List("select * from dbo.Kisiler_tbl where CONVERT(VARCHAR,Kis_Telefon)='" + TextBox7.Text + "' and CONVERT(VARCHAR,Kis_Plaka)='" + TextBox8.Text + "'");
                GridView1.DataBind();
                GridView1.Visible = false;
                for (int i = 0; i < GridView1.Rows.Count; i++)
                {


                    TextBox1.Text = GridView1.Rows[0].Cells[0].Text;
                    TextBox2.Text = GridView1.Rows[0].Cells[1].Text;
                    TextBox3.Text = GridView1.Rows[0].Cells[2].Text;

                    TextBox4.Text = GridView1.Rows[0].Cells[4].Text;

                    TextBox5.Text = GridView1.Rows[0].Cells[5].Text;

                    TextBox6.Text = GridView1.Rows[0].Cells[6].Text;


                }
                    
                
              //  GridView1.DataBind();
            }
            else
            {
                lbluyari.Text = "Lütfen tüm alanları doldurunuz.";
            }
        }

        protected void ButtonGuncelle_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "")
            {

                string query = "Update dbo.Kisiler_tbl Set Kis_Telefon='" + TextBox1.Text + "',Kis_Ad='" + TextBox2.Text + "',Kis_Soyad='" + TextBox3.Text + "',Kis_Adres='" + TextBox4.Text + "',Kis_Mail='" + TextBox5.Text + "',Kis_Plaka='" + TextBox6.Text + "'  where  CONVERT(VARCHAR,Kis_Telefon)='" + TextBox1.Text + "' and CONVERT(VARCHAR,Kis_Plaka)='" + TextBox6.Text + "'";

                int islem = inf.runCommand(query);
                lbluyari.Text = "Güncelleme işlemi başarıyla tamamlanmıştır.";


            }
            else
            {
                lbluyari.Text = "Kaydı Silebilmek için Kayıtlı Müşteri Getirmeniz Gerekmektedir.";
            }

        }

        protected void ButtonSil_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "")
            {

                string query = "delete from dbo.Kisiler_tbl where  CONVERT(VARCHAR,Kis_Telefon)='" + TextBox1.Text + "' and CONVERT(VARCHAR,Kis_Plaka)='" + TextBox6.Text + "'";

                int islem = inf.runCommand(query);
                lbluyari.Text = "Silme işlemi başarıyla tamamlanmıştır.";

            }
            else
            {
                lbluyari.Text = "Kaydı Silebilmek için Kayıtlı Müşteri Getirmeniz Gerekmektedir.";
            }
        }
    }
}
