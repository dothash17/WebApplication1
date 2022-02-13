<%@ Page Language="C#" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            text-align: right;
            height: 39px;
        }
        .auto-style5 {
            height: 39px;
        }
        .auto-style6 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="First value"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="FirstValueTB" runat="server" Height="25px" Width="120px"></asp:TextBox>
                        <asp:CustomValidator ID="ValFirst" runat="server" ControlToValidate="FirstValueTB" ErrorMessage="CustomValidator" OnServerValidate="ValFirst_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Operation"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:ListBox ID="OperationLB" runat="server" Width="97px">
                            <asp:ListItem>+</asp:ListItem>
                            <asp:ListItem>-</asp:ListItem>
                            <asp:ListItem>*</asp:ListItem>
                            <asp:ListItem>/</asp:ListItem>
                        </asp:ListBox>
                        <asp:RequiredFieldValidator ID="ValOperation" runat="server" ControlToValidate="OperationLB" ErrorMessage="Select operation" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label3" runat="server" Text="Second value"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="SecondValueTB" runat="server" Height="25px" Width="120px"></asp:TextBox>
                        <asp:CustomValidator ID="ValSecond" runat="server" ControlToValidate="SecondValueTB" ErrorMessage="CustomValidator" OnServerValidate="ValSecond_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:CheckBox ID="isUnsigned" runat="server" Text="Is unsigned?" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="Result" runat="server" Text=" "></asp:Label>
                        <asp:Button ID="Calculate" runat="server" BackColor="#33CC33" Height="40px" OnClick="Calculate_Click" Text="Calculate" Width="100px" />
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator"></asp:CustomValidator>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
