<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Web2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 36px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
        <div>
            <h1>Ответ: <%Response.Write(Request.Cookies["result"].Value);%></h1>
        </div>
    </form>
</body>
</html>
