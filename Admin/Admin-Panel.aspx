<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Admin-Panel.aspx.cs" Inherits="Create_Project.Admin.Admin_Panel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Admin Panel</h3>
    <hr />
    <center>
    <table border="1" style="padding-block:30px;">
        <tr>
            <td>
                Blog Category
            </td>
            <td style="padding:50px,50px,50px,50px;">
                <asp:DropDownList ID="DDLBCat" runat="server">
                    <asp:ListItem>Dog Food</asp:ListItem>
                    <asp:ListItem>Dog Health</asp:ListItem>
                    <asp:ListItem>Grooming</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td>Blog Title</td>
            <td>
                <asp:TextBox ID="TxtBlogTitle" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Blog Desc</td>
            <td>
                <asp:TextBox ID="TxtBDesc" runat="server" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Blog URL (webpage name)</td>
            <td>
                <asp:TextBox ID="TxtBurl" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Posted Date</td>
            <td>
                <asp:Label ID="LabBPosteddate" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
    <hr />
    <asp:Button ID="ButSubmit" class="btn btn-secondary" runat="server" Text="Save" OnClick="ButSubmit_Click" ></asp:Button>
    </center>
</asp:Content>
