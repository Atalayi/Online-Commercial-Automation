<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="UrunDefault.aspx.cs" Inherits="Project.Web.Urun.UrunDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <head>
        <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    </head>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="urun" runat="server">
    <br />
    <form id="frmUrun" runat="server">  
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="clearfix">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="col-md-12">
                        <div style="overflow: visible;" class="table-responsive">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebAutomationConnectionString %>" DeleteCommand="DELETE FROM [Urunler] WHERE [UrunID] = @UrunID" InsertCommand="INSERT INTO [Urunler] ([UrunAd], [Marka], [Stok], [AlisFiyat], [SatisFiyat], [Durum], [UrunGorsel], [KategoriId]) VALUES (@UrunAd, @Marka, @Stok, @AlisFiyat, @SatisFiyat, @Durum, @UrunGorsel, @KategoriId)" SelectCommand="SELECT * FROM [Urunler] where [Durum]='True'" UpdateCommand="UPDATE [Urunler] SET [UrunAd] = @UrunAd, [Marka] = @Marka, [Stok] = @Stok, [AlisFiyat] = @AlisFiyat, [SatisFiyat] = @SatisFiyat, [Durum] = @Durum, [UrunGorsel] = @UrunGorsel, [KategoriId] = @KategoriId WHERE [UrunID] = @UrunID">
                                <DeleteParameters>
                                    <asp:Parameter Name="UrunID" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="UrunAd" Type="String" />
                                    <asp:Parameter Name="Marka" Type="String" />
                                    <asp:Parameter Name="Stok" Type="Int16" />
                                    <asp:Parameter Name="AlisFiyat" Type="Decimal" />
                                    <asp:Parameter Name="SatisFiyat" Type="Decimal" />
                                    <asp:Parameter Name="Durum" Type="Boolean" />
                                    <asp:Parameter Name="UrunGorsel" Type="String" />
                                    <asp:Parameter Name="KategoriId" Type="Int32" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="UrunAd" Type="String" />
                                    <asp:Parameter Name="Marka" Type="String" />
                                    <asp:Parameter Name="Stok" Type="Int16" />
                                    <asp:Parameter Name="AlisFiyat" Type="Decimal" />
                                    <asp:Parameter Name="SatisFiyat" Type="Decimal" />
                                    <asp:Parameter Name="Durum" Type="Boolean" />
                                    <asp:Parameter Name="UrunGorsel" Type="String" />
                                    <asp:Parameter Name="KategoriId" Type="Int32" />
                                    <asp:Parameter Name="UrunID" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <asp:GridView ID="myGrid" CssClass="table table-bordered table-hover table-active" Width="100%" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="UrunID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" BorderColor="#3366CC" BorderWidth="1px" GridLines="None" OnRowCommand="myGrid_RowCommand">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    
                                    <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="UrunID">
                                        <EditItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("UrunID") %>'></asp:Label>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("UrunID") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Ürün Adı" SortExpression="UrunAd">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" Width="100%" runat="server" Text='<%# Bind("UrunAd") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("UrunAd") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Marka" SortExpression="Marka">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" Width="100%"  runat="server" Text='<%# Bind("Marka") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Marka") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Stok" SortExpression="Stok">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" Width="100%"  runat="server" Text='<%# Bind("Stok") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Stok") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Alış Fiyatı" SortExpression="AlisFiyat">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox4" Width="100%"  runat="server" Text='<%# Bind("AlisFiyat") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("AlisFiyat") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Satış Fiyatı" SortExpression="SatisFiyat">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox5" Width="100%"  runat="server" Text='<%# Bind("SatisFiyat") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("SatisFiyat") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Durum" SortExpression="Durum">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" Width="100%"  runat="server" Checked='<%# Bind("Durum") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Durum") %>' Enabled="false" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Ürün Görseli" SortExpression="UrunGorsel">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox6" Width="100%"  runat="server" Text='<%# Bind("UrunGorsel") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("UrunGorsel") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="KategoriId" SortExpression="KategoriId">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox7" Width="100%" runat="server" Text='<%# Bind("KategoriId") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("KategoriId") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField ShowHeader="False" HeaderText="Sil">
                                        <ItemTemplate>
                                            <asp:Button ID="btnDelete" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Delete" Text="Sil" CommandArgument='<%# Bind("UrunID") %>' OnClientClick="return confirm('Kaydı silmek istediğinize emin misiniz?')"></asp:Button>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField ShowHeader="False" HeaderText="Düzenle">
                                        <EditItemTemplate>
                                            <asp:Button ID="btnUpdate" CssClass="btn btn-info" runat="server" CausesValidation="True" CommandName="Update" Text="Güncelle"></asp:Button>
                                            <asp:Button ID="btnCancel"  CssClass="btn btn-warning" runat="server" CausesValidation="False" CommandName="Cancel" Text="iptal"></asp:Button>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Button ID="btnEdit" CssClass="btn btn-success" runat="server" CausesValidation="False" CommandName="Edit" Text="Düzenle"></asp:Button>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>


</asp:Content>
