<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Transactions.aspx.cs" Inherits="LIbraryManagementSystem.Transactions.Transactions" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Transactions</title>
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
            text-align: center;
            color: #007BFF;
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

        .transaction-panel {
            padding: 20px;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 4px;
            margin-top: 20px;
        }

        .transaction-panel h3 {
            color: #333;
            margin-bottom: 10px;
        }

        .transaction-panel label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
        }

        .transaction-panel input, .transaction-panel textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        .button:hover {
            background-color: #0056b3;
        }

        .message {
            text-align: center;
            color: red;
            margin-top: 20px;
        }

        @media screen and (max-width: 768px) {
            .container {
                width: 90%;
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
            <h2>Transactions</h2>

            <!-- Dropdown for selecting transaction type -->
            <div class="dropdown">
                <asp:DropDownList ID="ddlTransactionType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlTransactionType_SelectedIndexChanged">
                    <asp:ListItem Value="CheckAvailability" Text="Check Book Availability" />
                    <asp:ListItem Value="IssueBook" Text="Issue a Book" />
                    <asp:ListItem Value="ReturnBook" Text="Return a Book" />
                    <asp:ListItem Value="PayFine" Text="Pay Fine" />
                </asp:DropDownList>
            </div>

            <!-- Dynamic Transaction Panel -->
            <asp:Panel ID="pnlTransaction" runat="server" Visible="False" CssClass="transaction-panel">
                <h3>Transaction Details</h3>
                <!-- Fields will be dynamically populated -->
            </asp:Panel>

            <!-- Message Label -->
            <asp:Label ID="lblMessage" CssClass="message" runat="server" />
        </div>
    </form>
</body>
</html>