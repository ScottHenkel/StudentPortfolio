<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LoginSuccess.aspx.cs" Inherits="StudentPortfolio.LoginSuccess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align: center">
        Welcome. You have successfully Authenticated<br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Update.aspx">Update Account Info</asp:HyperLink>
    </div>
</asp:Content>
