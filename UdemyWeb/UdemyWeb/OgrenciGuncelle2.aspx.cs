using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class OgrenciGuncelle2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Textbox1.Text = Request.QueryString["Numara"];

            if (Page.IsPostBack == false)
            {


               


            }
          
            
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();


            if (TxtSifre1.Text == TxtSifre2.Text)
            {

                dt.OgrenciSifreGuncelle(TxtSifre1.Text, Textbox1.Text);
                Response.Redirect("OgrenciDefault.aspx?Numara=" + Textbox1.Text);

            }
            else
            {
                TxtSifre1.Text = "Şifreler Aynı Değil";
            }

            //TxtSifre2.Text = "ŞİFRE: " + dt.OgrenciPaneliGetir(Textbox1.Text)[0].OGRSIFRE;

            //dt.OgrenciSifreGuncelle(TxtSifre1.Text, Textbox1.Text);
            //Response.Redirect("OgrenciDefault.aspx?Numara="+Textbox1.Text);
        }
    }
}