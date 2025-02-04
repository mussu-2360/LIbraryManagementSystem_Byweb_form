<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultM.Master" AutoEventWireup="true" CodeBehind="Muskan.aspx.cs" Inherits="LIbraryManagementSystem.Muskan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <center>
    <table>
        <tr>
            <td>Name: </td>
            <td><asp:TextBox runat="server" ID="txtname"></asp:TextBox></td>
        </tr>

        <tr>
            <td>salary: </td>
            <td><asp:TextBox runat="server" ID="txtsalary"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Age: </td>
            <td><asp:TextBox runat="server" ID="txtage"></asp:TextBox></td>
        </tr>
    </table>
</center>
</asp:Content>
