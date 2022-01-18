using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Drawing;
using System.Data;
using System.Data.SqlClient;


namespace proje
{
    public partial class Randevu : System.Web.UI.Page
    {
        DbOperation inf;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            inf = new DbOperation();
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    string confirmValue = Request.Form["confirm_value"];

        //    if (confirmValue == "Yes")
        //    {
        //        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "")
        //        {


        //            string query3 = "insert into dbo.Yorum_tbl (Yor_Marka,Yor_Renk,Yor_Model,Yor_Fiyat,Yor_Plaka,Yor_Mesaj,Yor_Resim )  values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + Image2.ImageUrl + "')";
        //            int islem = inf.runCommand(query3);


        //        }
        //        this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Kayıt Başarılı!')", true);
        //    }
        //    else
        //    {
               
        //        this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Kayıt İptal Edildi!')", true);
        //    }

 
            
        //}
        protected void btn_yukle_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {   //Resim dosya kontrolü için burayı aktif yapabilirsiniz
                string uzanti = FileUpload1.FileName.Split('.')[(FileUpload1.FileName.Split('.').Length - 1)];
                if (uzanti == "jpg" || uzanti == "png" || uzanti == "bmp" || uzanti == "gif")
                {
                FileUpload1.SaveAs(Server.MapPath("/ilan_resimleri/" + FileUpload1.FileName));
                Label1.Text = "Resim dosyası yüklendi...";
                }



                string confirmValue = Request.Form["confirm_value"];

                if (confirmValue == "Yes")
                {
                    if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "" && FileUpload1.FileName!="")
                    {


                        string query3 = "insert into dbo.Yorum_tbl (Yor_Marka,Yor_Renk,Yor_Yil,Yor_Fiyat,Yor_Plaka,Yor_Baslik,Yor_Resim1,Yor_Ack,Yor_Model )  values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + "~/ilan_resimleri/" + FileUpload1.FileName + "','"+ DateTime.Now + "','" + TextBox7.Text + "','" + TextBox8.Text + "')";
                        int islem = inf.runCommand(query3);


                    }
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Kayıt Başarılı!')", true);
                }
                else
                {

                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Kayıt İptal Edildi!')", true);
                }

                

            }
            else
            {
                Label1.Text = "Hata mesajı";
            }
        }

        protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        {
            Image2.ImageUrl = GridView4.SelectedRow.Cells[7].Text;
            TextBox1.Text= GridView4.SelectedRow.Cells[1].Text;
            TextBox8.Text = GridView4.SelectedRow.Cells[2].Text;
            TextBox2.Text = GridView4.SelectedRow.Cells[3].Text;
            TextBox3.Text = GridView4.SelectedRow.Cells[4].Text;
            TextBox4.Text = GridView4.SelectedRow.Cells[5].Text;
            TextBox5.Text = GridView4.SelectedRow.Cells[6].Text;
        }
    }
}