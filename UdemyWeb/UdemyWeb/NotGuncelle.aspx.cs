using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class NotGuncelle : System.Web.UI.Page
    {
        int nid
            ;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                nid = Convert.ToInt32(Request.QueryString["NOTID"].ToString());
                DataSet1TableAdapters.OgrNotlariTableAdapter dt = new DataSet1TableAdapters.OgrNotlariTableAdapter();
                TxtOgrID.Text = dt.NotGetir2(nid)[0].OGRENCIID.ToString();
                TxtOgradSoyad.Text = dt.NotGetir2(nid)[0].OGRENCIADSOYAD;
                TxtDersAd.Text = dt.NotGetir2(nid)[0].DERSAD;
                TxtSinav1.Text = dt.NotGetir2(nid)[0].SINAV1.ToString();
                TxtSinav2.Text = dt.NotGetir2(nid)[0].SINAV2.ToString();
                TxtSinav3.Text = dt.NotGetir2(nid)[0].SINAV3.ToString();
                TxtOrt.Text = dt.NotGetir2(nid)[0].ORTALAMA.ToString(); ;
                TxtDurum.Text = dt.NotGetir2(nid)[0].DURUM.ToString();

            }


        }

        protected void BtnHesapla_Click(object sender, EventArgs e)
        {
            double sinav1, sinav2, sinav3;
            double ortalama;
            sinav1 = Convert.ToInt32(TxtSinav1.Text);
            sinav2 = Convert.ToInt32(TxtSinav2.Text);
            sinav3 = Convert.ToInt32(TxtSinav3.Text);
            ortalama = (sinav1 + sinav2 + sinav3) / 3;
            TxtOrt.Text = ortalama.ToString("0.00");

            if (ortalama >= 50)
            {
                TxtDurum.Text = "True";
            }
            else
            {
                TxtDurum.Text = "False";
            }

        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)  
        {

            nid = Convert.ToInt32(Request.QueryString["NOTID"].ToString());
            DataSet1TableAdapters.OgrNotlariTableAdapter dt = new DataSet1TableAdapters.OgrNotlariTableAdapter();
            dt.NotGuncelle(byte.Parse(TxtSinav1.Text), byte.Parse(TxtSinav2.Text), byte.Parse(TxtSinav3.Text), decimal.Parse(TxtOrt.Text),
                bool.Parse(TxtDurum.Text), nid);
            Response.Redirect("NotListesi.aspx");
        }
    }
}