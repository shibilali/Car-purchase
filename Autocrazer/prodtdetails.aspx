<%@ Page Title="" Language="C#" MasterPageFile="~/prodtdatails.Master" AutoEventWireup="true" CodeBehind="prodtdetails.aspx.cs" Inherits="Autocrazer.prodtdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 77px;
        }
        .auto-style7 {
            width: 185px;
        }
        .auto-style8 {
            width: 18px;
        }
        .auto-style9 {
            width: 288px;
        }
        .auto-style12 {
            width: 490px;
        }
        .auto-style13 {
            width: 30px;
        }
        .auto-style14 {
            width: 114px;
        }
        .auto-style15 {
            width: 11px;
        }
        .auto-style16 {
            width: 20px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style12">
                <asp:DataList ID="DataList1" runat="server" CssClass="box-content" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" style="margin-right: 0px">
                    <ItemTemplate>
                        <table class="w-100">
                            <tr>
                                <td class="auto-style8">&nbsp;</td>
                                <td class="auto-style7">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="180px" Width="180px" ImageUrl='<%# Eval("Product_Image") %>' />
                                </td>
                                <td class="auto-style16">
                                    &nbsp;</td>
                                <td class="auto-style9">
                                    <asp:Label ID="Label1" runat="server" Height="80px" Text='<%# Eval("Product_Discription") %>' Width="350px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">&nbsp;</td>
                                <td class="auto-style7">
                                    <asp:Panel ID="Panel1" runat="server">
                                        <table class="w-100">
                                            <tr>
                                                <td class="auto-style13">&nbsp;</td>
                                                <td class="auto-style14">
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Product_Name") %>'></asp:Label>
                                                </td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style13">&nbsp;</td>
                                                <td class="auto-style14">
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Product_Price") %>'></asp:Label>
                                                </td>
                                                <td>&nbsp;</td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                                <td class="auto-style16">&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style8">&nbsp;</td>
                                <td class="auto-style7">
                                    &nbsp;</td>
                                <td class="auto-style16">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style8">&nbsp;</td>
                                <td class="auto-style7">
                                    &nbsp;</td>
                                <td class="auto-style16">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style8">&nbsp;</td>
                                <td class="auto-style7">
                                    <asp:Button ID="Button1" runat="server" Text="Buy now" OnClick="Button1_Click" BackColor="White" BorderStyle="None" />
                                    &nbsp;
                                    <asp:Button ID="Button2" runat="server" Text="Add to cart" BackColor="Red" BorderStyle="None" ForeColor="White" />
                                </td>
                                <td class="auto-style16">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style8">&nbsp;</td>
                                <td class="auto-style7">&nbsp;</td>
                                <td class="auto-style16">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style8">&nbsp;</td>
                                <td class="auto-style7">&nbsp;</td>
                                <td class="auto-style16">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style8">&nbsp;</td>
                                <td class="auto-style7">&nbsp;</td>
                                <td class="auto-style16">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style8">&nbsp;</td>
                                <td class="auto-style7">&nbsp;</td>
                                <td class="auto-style16">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style8">&nbsp;</td>
                                <td class="auto-style7">&nbsp;</td>
                                <td class="auto-style16">&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>
