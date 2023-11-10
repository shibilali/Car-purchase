<%@ Page Title="" Language="C#" MasterPageFile="~/Carthome.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Autocrazer.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-hover table-responsive"  OnRowUpdated="GridView1_RowUpdated" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField HeaderText="Remove">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server">Remove</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:ImageField DataImageUrlField="Product_Image">
                </asp:ImageField>
                <asp:BoundField DataField="Product_Name" />
                <asp:BoundField DataField="Product_Discription" />
                <asp:BoundField DataField="Product_Price" />
            </Columns>
        </asp:GridView>

        <div class="row">
                <div class="pull-right col-md-3">
                    Total Amount: &#8377;
                    <asp:Label ID="lblTotalAmount" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="btnCheckout" CssClass="btn btn-success" runat="server" Text="Checkout" OnClick="btnCheckout_Click" />
                    <br />
                    <br />
                </div>
            </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </form>
</asp:Content>
