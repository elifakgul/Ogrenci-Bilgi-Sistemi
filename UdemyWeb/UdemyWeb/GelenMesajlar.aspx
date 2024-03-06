<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="GelenMesajlar.aspx.cs" Inherits="UdemyWeb.GelenMesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover">
        <thead class="thead-dark">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">GÖNDEREN</th>
               <th scope="col">AD SOYAD</th>
                <th scope="col">BAŞLIK</th>
                <th scope="col">İÇERİK</th>
                <th scope="col">TARİH</th>
               

            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("MESAJID") %></td>
                        <td><%#Eval("GONDEREN") %></td>
                       <td><%#Eval("OGRENCIADSOYAD")%></td>
                        <td><%#Eval("BASLIK") %></td>
                        <td><%#Eval("ICERIK") %></td>
                        <td><%#Eval("TARIH") %></td>

                     <%--   <td>
                            <asp:HyperLink NavigateUrl='<%# "DuyuruSil.aspx?DuyuruID="+Eval("DuyuruID")%>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>

                            <asp:HyperLink NavigateUrl='<%# "DuyuruGuncelle.aspx?DuyuruID="+Eval("DuyuruID")%>' ID="HyperLink2" runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>

                        </td>--%>
                    </tr>

                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
