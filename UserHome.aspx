<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="LIbraryManagementSystem.Transactions.UserHome" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Home</title>
</head>
<body>
    <style>
        /* General Body Styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        /* Form Container Styling */
        form {
            width: 80%;
            max-width: 900px;
            margin: 0 auto;
            padding-top: 50px;
            text-align: center;
        }

        /* Main Content Area */
        div {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        /* Header Styling */
        h2 {
            color: #333;
            font-size: 26px;
            margin-bottom: 20px;
        }

        /* Label for Welcome Text */
        .welcome-text {
            color: #007BFF;
            font-weight: bold;
        }

        /* Button Styling */
        .btn {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 12px 20px;
            font-size: 16px;
            margin: 10px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        /* Button Hover Effects */
        .btn:hover {
            background-color: #0056b3;
        }

        /* Logout Button Styling */
        .logout-btn {
            background-color: #dc3545;
        }

        .logout-btn:hover {
            background-color: #c82333;
        }

        /* Line Break Styling */
        br {
            margin-bottom: 15px;
        }
    </style>
    <form id="form1" runat="server">
        <div>
            <h2><asp:Label ID="lblWelcome" runat="server" Text="Welcome, User" /></h2>
            <asp:Button runat="server" Text="Reports" ID="btnhomeReport" OnClick="btnhomeReport_Click" />
            <asp:Button runat="server" Text="Transections" ID="Transections" OnClick="Transections_Click" />
            <br />
            <asp:Button ID="btnLogout" runat="server" Text="Logout" onclick="btnLogout_Click" />
        </div>
    </form>
</body>
</html>