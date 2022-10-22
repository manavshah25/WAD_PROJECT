<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Create_Project.Sports.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Sports articles</h3>
    <hr />
    <asp:Repeater ID="RepBlogDetails" runat="server">
            <ItemTemplate>
                <b><%#Eval("Btitle")%></b>
                <p class="card-text">
                    <%#Eval("BDesc")%>
                </p>
                <a href="<%#Eval("BUrl")%>" > Read the complete Article...</a>
                <div class="card-footer text-muted" >
                    Posted On : <%#Eval("Bposteddate","{0: MMMM dd, yyyy}")%>
                </div>
                <hr />
            </ItemTemplate>
        </asp:Repeater>
</asp:Content>
