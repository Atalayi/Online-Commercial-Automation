<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="PersonelDefault.aspx.cs" Inherits="Project.Web.Personel.PersonelDefault" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="personel" runat="server">
    <br />
    <form id="frmPersonel" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="clearfix">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="col-md-12">
                        <div class="table-responsive" style="overflow:visible">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebAutomationConnectionString %>" DeleteCommand="DELETE FROM [Personeller] WHERE [PersonelID] = @PersonelID" InsertCommand="INSERT INTO [Personeller] ([PersonelAd], [PersonelSoyad], [PersonelGorsel], [DepartmanID]) VALUES (@PersonelAd, @PersonelSoyad, @PersonelGorsel, @DepartmanID)" SelectCommand="SELECT * FROM [Personeller]" UpdateCommand="UPDATE [Personeller] SET [PersonelAd] = @PersonelAd, [PersonelSoyad] = @PersonelSoyad, [PersonelGorsel] = @PersonelGorsel, [DepartmanID] = @DepartmanID WHERE [PersonelID] = @PersonelID">
                                <DeleteParameters>
                                    <asp:Parameter Name="PersonelID" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="PersonelAd" Type="String" />
                                    <asp:Parameter Name="PersonelSoyad" Type="String" />
                                    <asp:Parameter Name="PersonelGorsel" Type="String" />
                                    <asp:Parameter Name="DepartmanID" Type="Int32" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="PersonelAd" Type="String" />
                                    <asp:Parameter Name="PersonelSoyad" Type="String" />
                                    <asp:Parameter Name="PersonelGorsel" Type="String" />
                                    <asp:Parameter Name="DepartmanID" Type="Int32" />
                                    <asp:Parameter Name="PersonelID" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <asp:GridView ID="myGrid" CssClass="table table-bordered table-hover table-active" Width="100%" runat="server" AutoGenerateColumns="False" DataKeyNames="PersonelID" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" BorderColor="#3366CC" BorderWidth="1px" OnRowCommand="myGrid_RowCommand">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    
                                    <asp:TemplateField HeaderText="PersonelID" InsertVisible="False" SortExpression="PersonelID">
                                        <EditItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("PersonelID") %>'></asp:Label>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("PersonelID") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="PersonelAd" SortExpression="PersonelAd">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("PersonelAd") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("PersonelAd") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="PersonelSoyad" SortExpression="PersonelSoyad">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PersonelSoyad") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("PersonelSoyad") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="PersonelGorsel" SortExpression="PersonelGorsel">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("PersonelGorsel") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("PersonelGorsel") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="DepartmanID" SortExpression="DepartmanID">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("DepartmanID") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("DepartmanID") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField ShowHeader="False" HeaderText="Sil">
                                        <ItemTemplate>
                                            <asp:Button ID="btnDelete" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Delete" Text="Sil" CommandArgument='<%# Bind("PersonelID") %>' OnClientClick="return confirm('Kaydı silmek istediğinize emin misiniz?')"></asp:Button>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField ShowHeader="False" HeaderText="Düzenle">
                                        <EditItemTemplate>
                                            <asp:Button ID="btnUpdate" CssClass="btn btn-info" runat="server" CausesValidation="True" CommandName="Update" Text="Güncelle"></asp:Button>
                                            <asp:Button ID="btnCancel" CssClass="btn btn-warning" runat="server" CausesValidation="False" CommandName="Cancel" Text="İptal"></asp:Button>
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
