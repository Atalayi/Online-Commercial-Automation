<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="UrunDefault.aspx.cs" Inherits="Project.Web.Urun.UrunDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <head>
        <style>
            .myGrid {
                border: 1px solid #ddd;
                margin: 15px;
                -webkit-border-radius: 3px 3px 0 0;
                -moz-border-radius: 3px 3px 0 0;
                border-radius: 3px 3px 0 0;
            }

                .myGrid td {
                    vertical-align: top;
                }

            .header {
                overflow: hidden;
                position: relative;
                border-bottom: 1px solid #ddd;
                height: 30px;
            }

                .header th {
                    color: #222;
                    font-weight: normal;
                    line-height: 40px;
                    text-align: left;
                    /* text-shadow: 0 1px #FFFFFF; */
                    white-space: nowrap;
                    border-right: 1px solid #ddd;
                    border-bottom: 2px solid #ddd;
                    padding: 0px 15px 0px 15px;
                    -webkit-border-radius: 1px;
                    -moz-border-radius: 1px;
                }

            .trow1 {
                background: #f9f9f9;
            }

            .trow2 {
                background: #fff;
            }

                .trow1 td, .trow2 td {
                    color: #555;
                    line-height: 18px;
                    padding: 9px 5px;
                    text-align: left;
                    border-right: 1px solid #ddd;
                    border-bottom: 1px solid #ddd;
                    text-align: left;
                }

            input[type='text'], select {
                border: 1px solid #b8b8b8;
                border-radius: 3px;
                color: #999999;
                float: left;
                height: 22px;
                padding: 0 5px;
                position: relative;
                width: 185px;
            }
        </style>
    </head>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="urun" runat="server">
    <form id="frmUrun" runat="server">
        <h1><i>URUNLER SAYFASI</i></h1>
        <div>
            <asp:GridView ID="myGridView" runat="server" AutoGenerateColumns="false" DataKeyNames="UrunID,KategoriID" CellPadding="10" CellSpacing="0" ShowFooter="true" CssClass="myGrid"
                HeaderStyle-CssClass="header" RowStyle-CssClass="trowl"
                AlternatingRowStyle-CssClass="trow2" OnRowCommand="myGridView_RowCommand">


                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>Urun Adı</HeaderTemplate>
                        <ItemTemplate><%#Eval("UrunAd") %></ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtUrun" runat="server"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="rfUrun" runat="server" ErrorMessage="Bu alan boş geçilemez." ForeColor="Red" Display="Dynamic" ValidationGroup="Add" ControlToValidate="txtUrun"> Zorunlu Alan</asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>Marka</HeaderTemplate>
                        <ItemTemplate><%#Eval("Marka") %></ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtMarka" runat="server"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="rfMarka" runat="server" ErrorMessage="Bu alan boş geçilemez." ForeColor="Red" Display="Dynamic" ValidationGroup="Add" ControlToValidate="txtMarka"> Zorunlu Alan</asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>Stok</HeaderTemplate>
                        <ItemTemplate><%#Eval("Stok") %></ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtStok" runat="server"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="rfStok" runat="server" ErrorMessage="Bu alan boş geçilemez." ForeColor="Red" Display="Dynamic" ValidationGroup="Add" ControlToValidate="txtStok"> Zorunlu Alan</asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>Urun Adı</HeaderTemplate>
                        <ItemTemplate><%#Eval("AlisFiyat") %></ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtAlisFiyat" runat="server"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="rfAF" runat="server" ErrorMessage="Bu alan boş geçilemez." ForeColor="Red" Display="Dynamic" ValidationGroup="Add" ControlToValidate="txtAlisFiyat"> Zorunlu Alan</asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>Urun Adı</HeaderTemplate>
                        <ItemTemplate><%#Eval("SatisFiyat") %></ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtSatisFiyat" runat="server"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="rfSF" runat="server" ErrorMessage="Bu alan boş geçilemez." ForeColor="Red" Display="Dynamic" ValidationGroup="Add" ControlToValidate="txtSatisFiyat"> Zorunlu Alan</asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>Durum</HeaderTemplate>
                        <ItemTemplate><%#Eval("Durum") %></ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtDurum" runat="server"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="rfDurum" runat="server" ErrorMessage="Bu alan boş geçilemez." ForeColor="Red" Display="Dynamic" ValidationGroup="Add" ControlToValidate="txtDurum"> Zorunlu Alan</asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>Urun Gorseli</HeaderTemplate>
                        <ItemTemplate><%#Eval("UrunGorsel") %></ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtUrunGorsel" runat="server"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="rfUG" runat="server" ErrorMessage="Bu alan boş geçilemez." ForeColor="Red" Display="Dynamic" ValidationGroup="Add" ControlToValidate="txtUrunGorsel"> Zorunlu Alan</asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>Kategoriler</HeaderTemplate>
                        <ItemTemplate><%#Eval("KategoriId") %></ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="ddKategori" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddKategori_SelectedIndexChanged">
                                <asp:ListItem Text="Kategori Seçiniz" Value="0"></asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <asp:RequiredFieldValidator ID="rfKategori" runat="server" ErrorMessage="*" ForeColor="Red" Display="Dynamic" ValidationGroup="Add" ControlToValidate="ddKategori" InitialValue="0"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lbDuzenle" runat="server" CommandName="Duzenle">Düzenle</asp:LinkButton>
                            &nbsp;|&nbsp;
                            <asp:LinkButton ID="lbSil" runat="server" CommandName="Sil">Sil</asp:LinkButton>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:Button ID="btnEkle" runat="server" Text="Kaydet" CommandName="Ekle" ValidationGroup="Add" />
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>


            </asp:GridView>
        </div>
    </form>


</asp:Content>
