using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class Dersguncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Convert.ToInt32(Request.QueryString["DERSID"].ToString());
                DataSet1TableAdapters.TBL_DERSLERTableAdapter dt = new DataSet1TableAdapters.TBL_DERSLERTableAdapter();

                TxtDersID.Text = id.ToString();
                TxtDersAD.Text = dt.DersGetir(id)[0].DERSAD;
            }
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_DERSLERTableAdapter dt = new DataSet1TableAdapters.TBL_DERSLERTableAdapter();
            dt.DersGuncelle(TxtDersAD.Text,Convert.ToInt32(TxtDersID.Text));
            Response.Redirect("DersListesi.aspx");
        }
    }
}