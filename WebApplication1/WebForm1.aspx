<%@ Page Language="C#" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style8 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="margin-left:47%" class="auto-style8"> 
                <asp:Menu ID="Menu" runat="server" OnMenuItemClick="Menu_MenuItemClick">
                    <Items>
                        <asp:MenuItem Text="First value" Value="First value"></asp:MenuItem>
                        <asp:MenuItem Text="Operation" Value="Operation"></asp:MenuItem>
                        <asp:MenuItem Text="Second value" Value="Second value"></asp:MenuItem>
                    </Items>
                </asp:Menu>
                <div class="auto-style8">
                <br />
                </div>
            </div>
            <asp:MultiView ID="MultiView" runat="server" ActiveViewIndex ="0">
                <asp:View ID="View1" runat="server">
                    <div class="auto-style8">
                        <asp:Label ID="Label1" runat="server" Text="First value"></asp:Label>
                        &nbsp;<asp:TextBox ID="FirstValueTB" runat="server"></asp:TextBox>
                    </div>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <div class="auto-style8">
                        <asp:Label ID="Label2" runat="server" Text="Operation"></asp:Label>
                        &nbsp;<asp:ListBox ID="OperationLB" runat="server" Width="87px">
                            <asp:ListItem>+</asp:ListItem>
                            <asp:ListItem>-</asp:ListItem>
                            <asp:ListItem>*</asp:ListItem>
                            <asp:ListItem>/</asp:ListItem>
                        </asp:ListBox>
                    </div>
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <div class="auto-style8">
                        <asp:Label ID="Label3" runat="server" Text="Second value"></asp:Label>
                        &nbsp;<asp:TextBox ID="SecondValueTB" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Button ID="Calculate" runat="server" BackColor="#33CC33" Height="40px" OnClick="Calculate_Click" Text="Calculate" Width="100px" />
                    </div>
                </asp:View>
            </asp:MultiView>
        </div>
        <p class="auto-style8">
                        <asp:CustomValidator ID="ValFirst" runat="server" ControlToValidate="FirstValueTB" ErrorMessage="Неверные данные или пустое первое значение" OnServerValidate="ValFirst_ServerValidate" ForeColor="Red" ValidateEmptyText="True"></asp:CustomValidator>
                    </p>
        <p class="auto-style8">
                        <asp:RequiredFieldValidator ID="ValOperation" runat="server" ControlToValidate="OperationLB" ErrorMessage="Выберите операцию" ForeColor="Red"></asp:RequiredFieldValidator>
                    </p>
        <p class="auto-style8">
                    <asp:CustomValidator ID="ValSecond" runat="server" ControlToValidate="SecondValueTB" ErrorMessage="Неверные данные или пустое второе значение" OnServerValidate="ValSecond_ServerValidate" ForeColor="Red" ValidateEmptyText="True"></asp:CustomValidator>
                    </p>
    </form>
</body>
</html>
