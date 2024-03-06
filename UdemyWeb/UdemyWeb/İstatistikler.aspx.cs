using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class İstatistikler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.DataTable1TableAdapter dt = new DataSet1TableAdapters.DataTable1TableAdapter();
            Textbox1.Text ="Toplam Öğrenci Sayısı: "+ dt.İstatistik1().ToString();
            Textbox2.Text = "Toplam Öğretmen Sayısı: " + dt.İstatistik2().ToString();
            Textbox3.Text = "Toplam Ders Sayısı: " + dt.İstatistik3().ToString();
            Textbox4.Text = "Matematik Sınav1'deki En Başarılı Öğrenci: " + dt.İstatistik4().ToString();
            Textbox5.Text = "Fizik Sınav1'deki En Başarılı Öğrenci: " + dt.İstatistik5().ToString();
            Textbox6.Text = "Dil Anlatım Sınav1'deki En Başarılı Öğrenci: " + dt.İstatistik6().ToString();
            Textbox8.Text = "Matematik Sınav1'in Not Ortalaması: " + dt.İstatistik8().ToString();
            Textbox9.Text = "Edebiyat Sınav1'in Not Ortalaması:  " + dt.İstatistik9().ToString();
            Textbox10.Text = "Fizik Sınav1'in Not Ortalaması:  " + dt.İstatistik10().ToString();
            Textbox11.Text = "Matematik Dersinden Geçen Öğrenci Sayısı:  " + dt.İstatistik11().ToString();
        }
    }
}