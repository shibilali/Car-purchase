<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ctgrydisplay.aspx.cs" Inherits="Autocrazer.ctgrydisplay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <style type="text/css">
        body{
            background-color:white;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 5px;
        }
        .auto-style3 {
            height: 24px;
        }
        .auto-style4 {
            width: 5px;
            height: 24px;
        }
        .auto-style5 {
            height: 12px;
        }
        .auto-style6 {
            height: 12px;
            width: 108px;
        }
        .auto-style7 {
            width: 108px;
        }
        .auto-style11 {
            width: 185px;
        }
        .auto-style13 {
            width: 112px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" CssClass="box_main">
                <ItemTemplate>
                    <table class="auto-style1">
      
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <br />
                            </td>
                            <td class="auto-style3">
                                <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("Category_id") %>' Height="334px" ImageUrl='<%# Eval("Category_Image") %>' OnCommand="ImageButton1_Command" Width="335px" />
                            </td>
                            <td class="auto-style4"></td>
                            <td class="auto-style3"></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <table class="w-100">
                                    <tr>
                                        <td class="auto-style5"></td>
                                        <td class="auto-style6"></td>
                                        <td class="auto-style5"></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style7">
                                            <asp:Label ID="Label1" runat="server" ForeColor="Black" Text='<%# Eval("Category_Name") %>'></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                                <asp:Panel ID="Panel1" runat="server">
                                    <table class="w-100">
                                        <tr>
                                            <td class="auto-style13">&nbsp;</td>
                                            <td class="auto-style11">
                                                <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Description"></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style13">&nbsp;</td>
                                            <td class="auto-style11">
                                                <asp:Label ID="Label2" runat="server" ForeColor="Black" Text='<%# Eval("Category_Discription") %>'></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                                <br />
                            </td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
