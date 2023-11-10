<%@ Page Title="" Language="C#" MasterPageFile="~/Product.Master" AutoEventWireup="true" CodeBehind="displayprodt.aspx.cs" Inherits="Autocrazer.displayprodt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 77px;
        }
        .auto-style12 {
        width: 490px;
    }
    .auto-style19 {
        width: 30px;
    }
    .auto-style20 {
        width: 120px;
    }
    .auto-style21 {
        width: 14px;
    }
        .auto-style22 {
            width: 154px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style12">
                <asp:DataList ID="DataList1" runat="server" CssClass="box-content" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" style="margin-right: 0px" RepeatColumns="2">
                    <ItemTemplate>
                        <table class="w-100">
                            <tr>
                                <td class="auto-style21">&nbsp;</td>
                                <td class="auto-style22">
                                    &nbsp;</td>
                               
                            </tr>
                            <tr>
                                <td class="auto-style21">&nbsp;</td>
                                <td class="auto-style22">
                                    <asp:Panel ID="Panel1" runat="server">
                                        <asp:ImageButton ID="ImageButton1" runat="server" Height="180px" ImageUrl='<%# Eval("Product_Image") %>' Width="180px" OnClick="ImageButton1_Click" />
                                    </asp:Panel>
                                </td>
                                 <td class="auto-style16">
                                    &nbsp;</td>
                                <td class="auto-style9">
                                    <asp:Label ID="Label4" runat="server" Height="71px" Text='<%# Eval("Product_Discription") %>' Width="350px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style21">&nbsp;</td>
                                <td class="auto-style22">
                                    <table class="w-100">
                                        <tr>
                                            <td class="auto-style19">&nbsp;</td>
                                            <td class="auto-style20">
                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Product_Name") %>'></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style19">&nbsp;</td>
                                            <td class="auto-style20">
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Product_Price") %>'></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                                
                            </tr>
                            <tr>
                                <td class="auto-style21">&nbsp;</td>
                                <td class="auto-style22">
                                    &nbsp;
                                    </td>
                                
                            </tr>
                            <tr>
                                <td class="auto-style21">&nbsp;</td>
                                <td class="auto-style22">
                                    <asp:Button ID="Button1" runat="server" BackColor="White" BorderStyle="None" OnClick="Button1_Click" Text="Buy now" Height="40px" Width="144px" />
                                    </td>
                                <td class="auto-style9">
                                    &nbsp;</td>
                                <td class="auto-style9">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" BackColor="Red" BorderStyle="None" ForeColor="White" Height="40px" Text="Add to cart" OnClick="Button2_Click" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>
