<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="StudentPortfolio.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">Contact
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <h2>Contact Me</h2>
 <asp:Label runat="server" Text="Name:"></asp:Label>
 <asp:TextBox runat="server" ID="txtName" CssClass="form-control"></asp:TextBox>
 <asp:Label runat="server" Text="Email:"></asp:Label>
 <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"></asp:TextBox>
 <asp:Label runat="server" Text="Message:"></asp:Label>
 <asp:TextBox runat="server" ID="txtMessage" TextMode="MultiLine" 
CssClass="form-control"></asp:TextBox>
 <asp:Button runat="server" ID="btnSubmit" Text="Send Message" 
CssClass="btn-submit" />
</asp:Content>