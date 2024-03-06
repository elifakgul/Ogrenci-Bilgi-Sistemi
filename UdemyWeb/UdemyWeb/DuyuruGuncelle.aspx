<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruGuncelle.aspx.cs" Inherits="UdemyWeb.DuyuruGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

   <form id="form1" runat="server">
    <div class="form-group">

        <div>
            <asp:Label for="TxtDuyuruID" runat="server">Duyuru ID</asp:Label>
             <asp:TextBox ID="TxtDuyuruID" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />

        <div>
            <asp:Label for="TxtDuyuruBaslik" runat="server">Duyuru Başlık</asp:Label>
            <asp:TextBox ID="TxtDuyuruBaslik" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />

        <div>
            <asp:Label for="TextArea1" runat="server">Duyuru İçerik</asp:Label>
            <textarea id="TextArea1" cols="20" rows="6" class="form-control" runat="server"></textarea>
        </div>
        </div>

    <asp:Button runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="Unnamed4_Click" />

    </form>
</asp:Content>
