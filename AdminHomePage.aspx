<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHomePage.aspx.cs" Inherits="LIbraryManagementSystem.Admin.AdminHomePage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Home Page</title>
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

        h3 {
            color: #333;
            margin-bottom: 10px;
            text-align: center;
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

        .button-group {
            text-align: center;
            margin-bottom: 20px;
        }

        .button {
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            margin: 5px;
            cursor: pointer;
        }

        .button:hover {
            background-color: #0056b3;
        }

        .logout-button {
            display: block;
            margin: 0 auto;
            background-color: #dc3545;
        }

        .logout-button:hover {
            background-color: #c82333;
        }

        .nav-bar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #007BFF;
            padding: 10px 20px;
            color: white;
            margin-bottom: 20px;
        }

        .nav-bar a {
            color: white;
            text-decoration: none;
            margin-right: 20px;
        }

        .nav-bar a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <!-- Navigation Links -->
            <div class="nav-bar">
                <a href="Chart.aspx">Chart</a>
                <span>Admin Home Page</span>
                <asp:Button ID="btnBack" CssClass="button" runat="server" Text="Back" OnClick="btnBack_Click" />
            </div>

            <!-- Admin Modules -->
            <h3>Admin Modules</h3>
            <div class="button-group">
                <asp:Button ID="maintenance" CssClass="button" runat="server" Text="Maintenance" OnClick="maintenance_Click" />
                <asp:Button ID="reports" CssClass="button" runat="server" Text="Reports" OnClick="reports_Click" />
                <asp:Button ID="transactions" CssClass="button" runat="server" Text="Transactions" OnClick="transactions_Click" />
            </div>

            <!-- Product Details -->
            <h3>Product Details</h3>
            <table>
                <tr>
                    <th>Code No From</th>
                    <th>Code No To</th>
                    <th>Category</th>
                </tr>
                <tr>
                    <td>SC(B/M)000001</td>
                    <td>SC(B/M)000004</td>
                    <td>Science</td>
                </tr>
                <tr>
                    <td>EC(B/M)000001</td>
                    <td>EC(B/M)000004</td>
                    <td>Economics</td>
                </tr>
                <tr>
                    <td>FC(B/M)000001</td>
                    <td>FC(B/M)000004</td>
                    <td>Fiction</td>
                </tr>
                <tr>
                    <td>CH(B/M)000001</td>
                    <td>CH(B/M)000004</td>
                    <td>Children</td>
                </tr>
                <tr>
                    <td>PD(B/M)000001</td>
                    <td>PD(B/M)000004</td>
                    <td>Personal Development</td>
                </tr>
            </table>

            <!-- Log Out Button -->
            <asp:Button ID="btnLogout" CssClass="button logout-button" runat="server" Text="Log Out" OnClick="btnLogout_Click" />
        </div>
    </form>
</body>
</html>
