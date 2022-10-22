<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Admin-Panel.aspx.cs" Inherits="Create_Project.Admin.Admin_Panel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Admin Panel</h3>
    <hr />
    <center>
    <table border="1">
        <tr>
            <td>Blog Category</td>
            <td>
                <asp:DropDownList ID="DDLBCat" runat="server">
                    <asp:ListItem>Food</asp:ListItem>
                    <asp:ListItem>Sports</asp:ListItem>
                    <asp:ListItem>Movies</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage=" Blog Category Reuired " ForeColor="Red" ControlToValidate="DDLBCat"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 31px">Blog Title</td>
            <td style="height: 31px">
                <asp:TextBox ID="TxtBlogTitle" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtBlogTitle" ErrorMessage="Blog Title reuired " ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Blog Desc</td>
            <td>
                <asp:TextBox ID="TxtBDesc" runat="server" TextMode="Multiline"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtBDesc" ErrorMessage="Blog Desc required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Blog URL(webpage name)</td>
            <td>
                <asp:TextBox ID="TxtBurl" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Blog Url required" ForeColor="Red" ControlToValidate="TxtBurl"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Posted Date</td>
            <td>
                <asp:Label ID="LabBPosteddate" runat="server" Text=""></asp:Label></td>
        </tr>
        </table>
        <hr />
        <br />
        <asp:Button ID="ButSubmit" runat="server" Text="Save" OnClick="ButSubmit_Click"></asp:Button>
     
        </center>
</asp:Content>
