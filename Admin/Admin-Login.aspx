<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Admin-Login.aspx.cs" Inherits="Create_Project.Admin.Admin_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    
    <h3>Admin Login Page ..</h3>
    <hr />
    <center>
        <table border="1" style="margin-top:20px;">
            <tr>

                <td>Login</td>
                <td><asp:TextBox ID="TxtAdminLogin" runat="server"></asp:TextBox></td>

            </tr>
            <tr>
                <td>Password</td>
                <td><asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
            </tr>
        </table>
        <asp:Button ID="ButLogin" runat="server" style="margin-top:20px;" Text="Login" class="btn btn-secondary" OnClick="ButLogin_Click" />
    </center>

</asp:Content>
