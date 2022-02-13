<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

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
                        <asp:RequiredFieldValidator ID="ReqFirstValue" runat="server" ControlToValidate="FirstValueTB" ErrorMessage="Enter first value" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Operation"></asp:Label>
                    </td>
                    <td>
                        <asp:ListBox ID="OperationLB" runat="server" Width="97px">
                            <asp:ListItem>+</asp:ListItem>
                            <asp:ListItem>-</asp:ListItem>
                            <asp:ListItem>*</asp:ListItem>
                            <asp:ListItem>/</asp:ListItem>
                        </asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Second value"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="SecondValueTB" runat="server" Height="25px" Width="120px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ReqSecondValue" runat="server" ControlToValidate="SecondValueTB" ErrorMessage="Enter second value" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Calculate" runat="server" BackColor="#33CC33" Height="40px" OnClick="Calculate_Click" Text="Calculate" Width="100px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="Result" runat="server" Text=" "></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
