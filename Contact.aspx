<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="StudentPortfolio.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Contact
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <h2>Contact Me</h2>
  
  <div class="form-group">
      <asp:Label runat="server" Text="Name:" AssociatedControlID="txtName"></asp:Label>
      <asp:TextBox runat="server" ID="txtName" CssClass="form-control"></asp:TextBox>

      <asp:Label runat="server" Text="Email:" AssociatedControlID="txtEmail"></asp:Label>
      <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"></asp:TextBox>
  </div>
  
  <div class="form-group">
      <asp:Label runat="server" Text="Message:" AssociatedControlID="txtMessage"></asp:Label>
      <asp:TextBox runat="server" ID="txtMessage" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
  </div>
  
  <asp:Button runat="server" ID="btnSubmit" Text="Send Message" CssClass="btn-submit" />
</asp:Content>