<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Create_Project.Default"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
    <h3>This is The Default Home Page ...!</h3>
    <hr />
    <div>
        <asp:Repeater ID="RepBlogDetails" runat="server">
            <ItemTemplate>
                <b><%#Eval("Blogtitle") %></b>
                <p class="card-text" style="background:#D3D3D3;">
                    <%#Eval("BlogDesc") %>
                </p>
                <a href ="<%#Eval("Blogcategory")%>/<%#Eval("BlogUrl")%>" style="color:#282828;">Read The Complete Article ....</a>
                <div class="card-footer text-muted">
                    Posted On: <%# Eval("Blogposteddate","{0: MMMM dd, yyyy}") %>
                    <a href ="<%#Eval("Blogcategory") %>/Home.aspx" style="color:#282828;"><%#Eval("Blogcategory") %></a>
                </div>
                <hr />



            </ItemTemplate>



        </asp:Repeater>
    </div>


</asp:Content>
