<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="Log.aspx.cs" Inherits="Autocrazer.Log" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
        height: 135px;
    }
    .auto-style2 {
            width: 1585px;
        }
    .auto-style4 {
            width: 31px;
        }
        .auto-style5 {
            width: 117px;
        }
        .auto-style6 {
            margin-left: 27px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox1" runat="server" placeholder="   Enter user name" BorderWidth="1px" Height="38px" Width="391px" BorderColor="#2B3990"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox2" runat="server" placeholder="   Enter password" BorderWidth="1px" Height="38px" Width="392px" BorderColor="#2B3990" TextMode="Password" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <table class="w-100">
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" BackColor="#2B3990" BorderStyle="None" CssClass="auto-style6" Font-Bold="True" Font-Names="open sans" Font-Overline="False" Font-Size="15px" Font-Strikeout="False" ForeColor="White" Height="41px" Text="Login" Width="287px" OnClick="Button1_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    
</table>
</asp:Content>
