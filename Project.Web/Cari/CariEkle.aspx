<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="CariEkle.aspx.cs" Inherits="Project.Web.Cari.CariEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <title>Yeni Cari</title>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cariEkle" runat="server">
    <br />
    <h2>Yeni Cari Sayfası</h2>
    <br />
    <form id="frmNewCat" runat="server" class="form-group" method="post">
        <div>

            <asp:Label ID="lblCariAd" runat="server" Text="Cari Adı"></asp:Label>
            <asp:TextBox ID="txtCariAd" Width="50%" runat="server" class="form-control"></asp:TextBox>
            <br />
            <asp:Label ID="lblCariSyd" runat="server" Text="Cari Soyadı"></asp:Label>
            <asp:TextBox ID="txtCariSyd" Width="50%" runat="server" class="form-control"></asp:TextBox>
            <br />
            <asp:Label ID="lblCariShr" runat="server" Text="Cari Şehir"></asp:Label>
            <asp:TextBox ID="txtCariShr" Width="50%" runat="server" class="form-control"></asp:TextBox>
            <br />
            <asp:Label ID="lblCariMail" runat="server" Text="Cari Mail"></asp:Label>
            <asp:TextBox ID="txtCariMail" Width="50%" runat="server" class="form-control"></asp:TextBox>
            <br />
            <asp:Button ID="btnAddCat" runat="server" Text="Kaydet" class="btn btn-info " OnClick="btnAddCari_Click" />

        </div>
    </form>
</asp:Content>

