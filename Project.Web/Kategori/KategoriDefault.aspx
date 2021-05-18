<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="KategoriDefault.aspx.cs" Inherits="Project.Web.Kategori.KategoriDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <head>
        <link href="../Content/bootstrap.min.css" rel="stylesheet" />
        <title></title>
    </head>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="kategori" runat="server">
    <h1>KATEGORİ SAYFASI</h1>
    <form id="form1" runat="server" class="form-group">
        <table class="table table-bordered" style="margin-top: 20px;">
            <tr>
                <th>ID</th>
                <th>Kategori Adı</th>
                <th>Sil</th>
                <th>Güncelle</th>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("KategoriID") %></td>
                        <td><%#Eval("KategoriAd") %></td>
                        <td><a href="/Kategori/KategoriSil/@k.KategoriID" class="btn btn-danger">Sil</a></td>
                        <td><a href="/Kategori/KategoriGetir/@k.KategoriID" class="btn btn-success">Güncelle</a></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>

        <%--<asp:GridView ID="GridView1" runat="server"></asp:GridView>--%>
        <%--<asp:Repeater ID="Repeater1" runat="server"></asp:Repeater>--%>
        <asp:Button ID="btnNewCat" runat="server" Text="Kategori Ekle" class="btn btn-primary" OnClick="btnNewCat_Click" />
    </form>

</asp:Content>
