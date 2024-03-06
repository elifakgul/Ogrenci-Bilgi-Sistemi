using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace UdemyWeb
{
    public partial class LoginPanel : System.Web.UI.Page
    {

        SqlConnection baglanti = new SqlConnection(@"Data Source=BERRA\SQLEXPRESS;Initial Catalog=UdemySiteDBB;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TxtSifre_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TxtNumara_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From TBL_OGRENCI where Numara=@p1 and OgrSıfre=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", TxtNumara.Text);
            komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {

                //Session.Timeout = 30;
                //Session["NUMARA"] = dr["NUMARA"].ToString();
                Session.Add("numara", TxtNumara.Text);
                Response.Redirect("OgrenciDefault.aspx?Numara=" + TxtNumara.Text);
            }
            else
            {
                TxtSifre.Text = "Hatalı Şifre";
            }
            baglanti.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From TBL_OGRETMEN where OGRTNumara=@p1 and OgrtSıfre=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", TxtNumara.Text);
            komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {

                //Session.Timeout = 30;
                //Session["NUMARA"] = dr["NUMARA"].ToString();
                Session.Add("OGRTnumara", TxtNumara.Text);
                Response.Redirect("Default.aspx?Numara=" + TxtNumara.Text);
            }
            else
            {
                TxtSifre.Text = "Hatalı Şifre";
            }
            baglanti.Close();
        }
    }

}