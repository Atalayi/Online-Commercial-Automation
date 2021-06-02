<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="DepartmanEkle.aspx.cs" Inherits="Project.Web.Departman.DepartmanEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <title>Yeni Departman</title>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="departmanEkle" runat="server">
    <br />
    <h2>Yeni Departman Sayfası</h2>
    <br />
    <form id="frmNewDep" runat="server" class="form-group" method="post">
        <div>

            <asp:Label ID="lblDepAd" runat="server" Text="Departman Adı"></asp:Label>
            <asp:TextBox ID="txtDepAd" Width="50%" runat="server" class="form-control"></asp:TextBox>
            <br />
            <asp:Button ID="btnAddDep" runat="server" Text="Kaydet" class="btn btn-info " OnClick="btnAddDep_Click" />

        </div>
    </form>
</asp:Content>
