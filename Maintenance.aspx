<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Maintenance.aspx.cs" Inherits="LIbraryManagementSystem.Admin.Maintenance" %>

<!DOCTYPE html>
<html>
<head>
    <title>Maintenance</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Maintenance</h2>
        <asp:DropDownList ID="ddlOptions" runat="server">
            <asp:ListItem Value="Book" Text="Book" />
            <asp:ListItem Value="Movie" Text="Movie" />
        </asp:DropDownList>
        <br />
        <label for="title">Title:</label>
        <asp:TextBox ID="txtTitle" runat="server" />
        <br />
        <label for="author">Author/Director:</label>
        <asp:TextBox ID="txtAuthor" runat="server" />
        <br />
        <asp:Button ID="btnSubmit" Text="Submit" onclick="btnSubmit_Click" runat="server" />
        <asp:Label ID="lblMessage" ForeColor="Green" runat="server" />
    </form>
</body>
</html>
