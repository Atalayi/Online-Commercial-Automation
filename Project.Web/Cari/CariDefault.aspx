<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="CariDefault.aspx.cs" Inherits="Project.Web.Cari.CariDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <head>
        <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    </head>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cari" runat="server">
    <br />
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="clearfix">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="col-md-12">
                        <div style="overflow: visible;" class="table-responsive">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=MONSTER\SQLEXPRESS;Initial Catalog=WebAutomation;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" DeleteCommand="DELETE FROM [Cariler] WHERE [CariID] = @CariID" InsertCommand="INSERT INTO [Cariler] ([CariAd], [CariSoyad], [CariSehir], [CariMail], [Durum]) VALUES (@CariAd, @CariSoyad, @CariSehir, @CariMail, @Durum)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Cariler]" UpdateCommand="UPDATE [Cariler] SET [CariAd] = @CariAd, [CariSoyad] = @CariSoyad, [CariSehir] = @CariSehir, [CariMail] = @CariMail, [Durum] = @Durum WHERE [CariID] = @CariID">
                                <DeleteParameters>
                                    <asp:Parameter Name="CariID" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="CariAd" Type="String" />
                                    <asp:Parameter Name="CariSoyad" Type="String" />
                                    <asp:Parameter Name="CariSehir" Type="String" />
                                    <asp:Parameter Name="CariMail" Type="String" />
                                    <asp:Parameter Name="Durum" Type="Boolean" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="CariAd" Type="String" />
                                    <asp:Parameter Name="CariSoyad" Type="String" />
                                    <asp:Parameter Name="CariSehir" Type="String" />
                                    <asp:Parameter Name="CariMail" Type="String" />
                                    <asp:Parameter Name="Durum" Type="Boolean" />
                                    <asp:Parameter Name="CariID" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <asp:GridView ID="myGrid" CssClass="table table-bordered table-hover table-active" Width="100%" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CariID" ForeColor="#333333" GridLines="None" OnRowCommand="myGrid_RowCommand" BorderColor="#3366CC" BorderWidth="1px">

                                <AlternatingRowStyle BackColor="White" />
                                <Columns>

                                    <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="CariID">
                                        <EditItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("CariID") %>'></asp:Label>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("CariID") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Cari Adı" SortExpression="CariAd">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CariAd") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("CariAd") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Cari Soyadı" SortExpression="CariSoyad">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CariSoyad") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("CariSoyad") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Şehir" SortExpression="CariSehir">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("CariSehir") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("CariSehir") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Mail" SortExpression="CariMail">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("CariMail") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("CariMail") %>'></asp:Label>
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
                                    <asp:TemplateField ShowHeader="true" HeaderText="Sil">
                                        <ItemTemplate>
                                            <asp:Button ID="btnDelete" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Delete" Text="Sil" CommandArgument='<%# Bind("CariID") %>' OnClientClick="return confirm('Kaydı silmek istediğinize emin misiniz?')"></asp:Button>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField ShowHeader="true" HeaderText="Düzenle">
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
