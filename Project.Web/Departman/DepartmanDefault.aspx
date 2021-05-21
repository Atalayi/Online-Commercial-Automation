<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="DepartmanDefault.aspx.cs" Inherits="Project.Web.Departman.DepartmanDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <head>
        <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    </head>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="departman" runat="server">
    <br />
    <form id="frmDepartman" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="clearfix">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="col-md-12">
                        <div style="overflow: visible;" class="table-responsive">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebAutomationConnectionString %>" DeleteCommand="DELETE FROM [Departmanlar] WHERE [DepartmanID] = @DepartmanID" InsertCommand="INSERT INTO [Departmanlar] ([DepartmanAd], [Durum]) VALUES (@DepartmanAd, @Durum)" SelectCommand="SELECT * FROM [Departmanlar] where [Durum]='True'" UpdateCommand="UPDATE [Departmanlar] SET [DepartmanAd] = @DepartmanAd, [Durum] = @Durum WHERE [DepartmanID] = @DepartmanID">
                                <DeleteParameters>
                                    <asp:Parameter Name="DepartmanID" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="DepartmanAd" Type="String" />
                                    <asp:Parameter Name="Durum" Type="Boolean" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="DepartmanAd" Type="String" />
                                    <asp:Parameter Name="Durum" Type="Boolean" />
                                    <asp:Parameter Name="DepartmanID" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource> 
                            <asp:GridView ID="myGrid" CssClass="table table-bordered table-hover table-active" Width="100%" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="DepartmanID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" BorderColor="#3366CC" BorderWidth="1px" OnRowCommand="myGrid_RowCommand">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    
                                    <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="DepartmanID">
                                        <EditItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("DepartmanID") %>'></asp:Label>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("DepartmanID") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Departman Adı" SortExpression="DepartmanAd">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DepartmanAd") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("DepartmanAd") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Durum" SortExpression="Durum">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Durum") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Durum") %>' Enabled="false" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField ShowHeader="False" HeaderText="Sil">
                                        <ItemTemplate>
                                            <asp:Button ID="btnDelete" CssClass="btn btn-danger"  runat="server" CausesValidation="False" CommandName="Delete" Text="Sil" CommandArgument='<%# Bind("DepartmanID") %>' OnClientClick="return confirm('Kaydı silmek istediğinize emin misiniz?')"></asp:Button>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField ShowHeader="False" HeaderText="Düzenle">
                                        <EditItemTemplate>
                                            <asp:Button ID="btnUpdate" CssClass="btn btn-info" runat="server" CausesValidation="True" CommandName="Update" Text="Güncelle"></asp:Button>
                                            &nbsp;<asp:Button ID="btnCancel" CssClass="btn btn-warning" runat="server" CausesValidation="False" CommandName="Cancel" Text="İptal"></asp:Button>
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
