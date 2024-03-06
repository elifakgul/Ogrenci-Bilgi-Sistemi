using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class GelenMesajlar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_MESAJLARTableAdapter dt = new DataSet1TableAdapters.TBL_MESAJLARTableAdapter();
            
            
            Repeater1.DataSource = dt.OgretmenGelenMesaj(Session["OgrtNumara"].ToString());
            Repeater1.DataBind();


            //baglanti.Open();
            //SqlDataAdapter da = new SqlDataAdapter("Select * from TBL_MESAJLAR where GONDEREN='" + Request.QueryString["NUMARA"] + "'", baglanti);
            //DataTable dt = new DataTable();
            //da.Fill(dt);

            //Repeater1.DataSource = da; Repeater1.DataBind();
            //Repeater1.DataBind();

            //baglanti.Close();
        }
    }
}