<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPanel.aspx.cs" Inherits="UdemyWeb.LoginPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />

    <title></title>
    <style type="text/css">
        .auto-style2 {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            margin-left: 87px;
        }
        .auto-style3 {
            width: 738px;
            height: 597px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin: auto" class="auto-style3">
            <div style="text-align:center">
            <br />
            <br />
            <h2>Öğrenci Bilgi Sistemi Giriş Ekranı</h2>
            <br />
            <br />
            
                </div>
            <div style="text-align:center">
            <asp:Image ID="Image1" runat="server" Height="120px" Width="130px" ImageUrl="~/unnamed.png" />
            <br />
            <br />
                </div>

            <div style="text-align:center">
                <asp:Label for="TxtNumara" runat="server">Kullanıcı Adı</asp:Label>
                <asp:TextBox ID="TxtNumara" runat="server" CssClass="auto-style2" Width="500px" ></asp:TextBox>
            </div>
            <br />

            <div style="text-align:center">
                <asp:Label for="TxtSifre" runat="server">Şifre</asp:Label>
                <asp:TextBox ID="TxtSifre" runat="server" CssClass="auto-style2" Width="500px" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            <div style="text-align:center">
            <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass="btn btn-warning" Width="250px" OnClick="Button1_Click" />
                </div>
            <br />
            <div style="text-align:center">

            <asp:Button ID="Button2" runat="server" Text="Öğretmen girişi" CssClass="btn btn-default" Width="200px" OnClick="Button2_Click" />
                </div>


        </div>
    </form>
</body>
</html>
