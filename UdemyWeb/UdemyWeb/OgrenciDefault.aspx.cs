using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace UdemyWeb
{
    public partial class OgrenciDefault : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=BERRA\SQLEXPRESS;Initial Catalog=UdemySiteDBB;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            Textbox1.Text = Session["Numara"].ToString();
            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();

            Textbox2.Text = "AD: "+ dt.OgrenciPaneliGetir(Textbox1.Text)[0].OGRAD;
            Textbox3.Text = "SOYAD: "+dt.OgrenciPaneliGetir(Textbox1.Text)[0].OGRSOYAD;
            Textbox4.Text = "MAIL: "+dt.OgrenciPaneliGetir(Textbox1.Text)[0].OGRMAIL;
            Textbox5.Text = "TELEFON: "+dt.OgrenciPaneliGetir(Textbox1.Text)[0].OGRTELEFON;
            Textbox6.Text = "ŞİFRE: "+dt.OgrenciPaneliGetir(Textbox1.Text)[0].OGRSIFRE;

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("OgrenciGuncelle2.aspx?Numara="+Textbox1.Text);
        }
    }
}