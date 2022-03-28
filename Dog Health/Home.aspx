<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Create_Project.DogHealth.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Dog Health Articles Home Page ... !</h3>

    <hr />
   <asp:Repeater ID="RepBlogDetails" runat="server">
            <ItemTemplate>
                <b><%#Eval("Blogtitle") %></b>
                <p class="card-text" style="background:#D3D3D3;">
                    <%#Eval("BlogDesc") %>
                </p>
                <a href ="<%#Eval("BlogUrl")%>" style="color:#282828;">Read The Complete Article ....</a>
                <div class="card-footer text-muted">
                    Posted On: <%# Eval("Blogposteddate","{0: MMMM dd, yyyy}") %>
                    <a href ="Home.aspx" style="color:#282828;"><%#Eval("Blogcategory") %></a>
                </div>
                <hr />



            </ItemTemplate>



        </asp:Repeater>
</asp:Content>
