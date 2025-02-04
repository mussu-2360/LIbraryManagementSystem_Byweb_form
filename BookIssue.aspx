<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookIssue.aspx.cs" Inherits="LIbraryManagementSystem.Transactions.BookIssue" %>

<!DOCTYPE html>
<html>
<head>
    <title>Book Issue Form</title>
    <style>
        table {
            width: 50%;
            border-collapse: collapse;
            margin: 20px auto;
        }
        th, td {
            border: 1px solid black;
            padding: 10px;
            text-align: left;
        }
        .button {
            padding: 10px 20px;
            margin: 10px;
            border: none;
            color: white;
            background-color: #007BFF;
            cursor: pointer;
        }
        .button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center;">
            <h2>Book Issue</h2>
            <table>
                <tr>
                    <th colspan="2">Transactions</th>
                </tr>
                <tr>
                    <td>Is book available?</td>
                    <td>
                        <asp:Label ID="lblAvailability" runat="server" Text="Check availability in database" />
                    </td>
                </tr>
                <tr>
                    <td>Issue Book?</td>
                    <td>
                        <asp:DropDownList ID="ddlBookName" runat="server">
                            <asp:ListItem Text="--Select Book--" Value="" />
                            <asp:ListItem Text="Book 1" Value="1" />
                            <asp:ListItem Text="Book 2" Value="2" />
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Return Book?</td>
                    <td>
                        <asp:TextBox ID="txtAuthor" runat="server" Placeholder="Enter Author"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Issue Date</td>
                    <td>
                        <asp:TextBox ID="txtIssueDate" runat="server"></asp:TextBox>
                        <asp:Calendar ID="calIssueDate" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Return Date</td>
                    <td>
                        <asp:TextBox ID="txtReturnDate" runat="server"></asp:TextBox>
                        <asp:Calendar ID="calReturnDate" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Remarks</td>
                    <td>
                        <asp:TextBox ID="txtRemarks" runat="server" TextMode="MultiLine" Rows="3" Columns="30" Placeholder="Optional"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="button" onclick="btnCancel_Click" />
                        <asp:Button ID="btnConfirm" runat="server" Text="Confirm" CssClass="button" OnClick="btnConfirm_Click" />
                    </td>
                </tr>
            </table>
            <a href="Home.aspx" style="margin-top: 20px; display: block;">Log Out</a>
        </div>
    </form>
</body>
</html