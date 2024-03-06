<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Dersguncelle.aspx.cs" Inherits="UdemyWeb.Dersguncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <form id="form1" runat="server">
  <div class="form-group">

      <div>
          <asp:Label for="TxtDersID" runat="server">Ders ID</asp:Label>
           <asp:TextBox ID="TxtDersID" runat="server" CssClass="form-control"></asp:TextBox>
      </div>
      <br />

      <div>
          <asp:Label for="TxtDersAD" runat="server">Ders Adı</asp:Label>
          <asp:TextBox ID="TxtDersAD" runat="server" CssClass="form-control"></asp:TextBox>
      </div>
    
      </div>

  <asp:Button runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="Unnamed3_Click"/>

  </form>

</asp:Content>
