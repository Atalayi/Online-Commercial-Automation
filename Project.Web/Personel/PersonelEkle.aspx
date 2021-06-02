<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="PersonelEkle.aspx.cs" Inherits="Project.Web.Personel.PersonelEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <title>Yeni Personel</title>
</asp:Content>

<asp:Content ID="Content9" ContentPlaceHolderID="personelekle" runat="server">
    <br />
    <h2>Yeni Personel Sayfası</h2>
    <br />
    <form id="frmNewPer" runat="server" class="form-group" method="post">
        <div>

            <asp:Label ID="lblPerAd" runat="server" Text="Personel Adı"></asp:Label>
            <asp:TextBox ID="txtPerAd" Width="50%" runat="server" class="form-control"></asp:TextBox>
            <br />
            <asp:Label ID="lblPerSoyad" runat="server" Text="Personel Soyadı"></asp:Label>
            <asp:TextBox ID="txtPerSoyad" Width="50%" runat="server" class="form-control"></asp:TextBox>
            <br />
            <asp:Label ID="lblDep" runat="server" Text="Departman"></asp:Label>
            <asp:TextBox ID="txtDep" Width="50%" runat="server" class="form-control"></asp:TextBox>
            <br />
            <asp:Button ID="btnAddPer" runat="server" Text="Kaydet" class="btn btn-info " OnClick="btnAddPer_Click" />

        </div>
    </form>
</asp:Content>
