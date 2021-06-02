<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="UrunEkle.aspx.cs" Inherits="Project.Web.Urun.UrunEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <title>Yeni Urun</title>
</asp:Content>

<asp:Content ID="Content11" ContentPlaceHolderID="urunEkle" runat="server">
  <br />
    <h2>Yeni Urun Sayfası</h2>
    <br />
    <form id="frmNewUrn" runat="server" class="form-group" method="post">
        <div>

            <asp:Label ID="lblUrnAd" runat="server" Text="Ürün Adı"></asp:Label>
            <asp:TextBox ID="txtUrnAd" Width="50%" runat="server" class="form-control"></asp:TextBox>
            <br />
            <asp:Label ID="lblMarka" runat="server" Text="Ürün Markası"></asp:Label>
            <asp:TextBox ID="txtUrnMarka" Width="50%" runat="server" class="form-control"></asp:TextBox>
            <br />
            <asp:Label ID="lblUrnStok" runat="server" Text="Stok"></asp:Label>
            <asp:TextBox ID="txtUrnStok" Width="50%" runat="server" class="form-control"></asp:TextBox>
            <br />
            <asp:Label ID="lblUrnAF" runat="server" Text="Alış Fiyatı"></asp:Label>
            <asp:TextBox ID="txtUrnAF" Width="50%" runat="server" class="form-control"></asp:TextBox>
            <br />
            <asp:Label ID="lblUrnSF" runat="server" Text="Satış Fiyatı"></asp:Label>
            <asp:TextBox ID="txtUrnSF" Width="50%" runat="server" class="form-control"></asp:TextBox>
            <br />
            <asp:Label ID="lblKategori" runat="server" Text="Kategori"></asp:Label>
            <asp:TextBox ID="txtKategori" Width="50%" runat="server" class="form-control"></asp:TextBox>
            <br />
            <asp:Button ID="btnAddUrn" runat="server" Text="Kaydet" class="btn btn-info " OnClick="btnAddUrn_Click" />

        </div>
    </form>
</asp:Content>
