﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class MesajOlustur : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtGonderen.Text = "0001";
        }

        protected void BtnGonder_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_MESAJLARTableAdapter dt = new DataSet1TableAdapters.TBL_MESAJLARTableAdapter();
            dt.MesajGonder(TxtGonderen.Text, TxtAlici.Text, TxtBaslik.Text, Txticerik.Value);
            Response.Redirect("GidenMesajlar.aspx");
        }
    }
}