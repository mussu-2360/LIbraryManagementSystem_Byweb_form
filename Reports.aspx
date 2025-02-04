<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="LIbraryManagementSystem.Reports.Reports" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Reports</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 20px auto;
            padding: 20px;
            background-color: #ffffff;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #007BFF;
            text-align: center;
        }

        .dropdown {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }

        select, .dropdown select {
            width: 300px;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .gridview-container {
            overflow-x: auto;
            margin-top: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        table th, table td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }

        table th {
            background-color: #007BFF;
            color: white;
        }

        table td {
            background-color: #f9f9f9;
        }

        @media screen and (max-width: 768px) {
            .container {
                width: 90%;
                padding: 15px;
            }

            select, .dropdown select {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Reports</h2>
            <div class="dropdown">
                <asp:DropDownList ID="ddlReportType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlReportType_SelectedIndexChanged">
                    <asp:ListItem Value="ActiveIssues" Text="Active Issues" />
                    <asp:ListItem Value="BooksList" Text="Master List of Books" />
                    <asp:ListItem Value="MembershipList" Text="Master List of Memberships" />
                    <asp:ListItem Value="OverdueReturns" Text="Overdue Returns" />
                    <asp:ListItem Value="PendingRequests" Text="Pending Issue Requests" />
                </asp:DropDownList>
            </div>
            <div class="gridview-container">
                <asp:GridView ID="gvReports" AutoGenerateColumns="True" runat="server" />
            </div>
        </div>
    </form>
</body>
</html>
