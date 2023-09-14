<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Hmpg.aspx.cs" Inherits="Autocrazer.Hmpg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 12px;
        }
        .auto-style2 {
            width: 34px;
        }
        .auto-style3 {
            width: 42px;
        }
        .auto-style4 {
            width: 44px;
        }
        .auto-style5 {
            width: 46px;
        }
        .auto-style8 {
            width: 50px;
        }
        .auto-style13 {
            width: 55px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" CssClass="card" RepeatColumns="7">
                <ItemTemplate>
                    <table class="auto-style1">
      
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <br />
                            </td>
                            <td class="auto-style3">
                                <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("Category_id") %>' Height="150px" ImageUrl='<%# Eval("Category_Image") %>' OnCommand="ImageButton1_Command" Width="150px" />
                            </td>
                            <td class="auto-style4"></td>
                            <td class="auto-style3"></td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;</td>
                            <td>
                                <table class="w-100">
                                    <tr>
                                        <td class="auto-style13"></td>
                                        <td class="auto-style8"></td>
                                        <td class="auto-style5"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">&nbsp;</td>
                                        <td class="auto-style8">
                                            <asp:Label ID="Label1" runat="server" ForeColor="Black" Text='<%# Eval("Category_Name") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </td>
                            
                        </tr>
                        
                    </table>
                </ItemTemplate>
            </asp:DataList>
</asp:Content>
