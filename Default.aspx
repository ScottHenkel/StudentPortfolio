<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StudentPortfolio.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">HomePage
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <section id="home">
 <img src="Images/profile.jpg" alt="Profile Picture" class="profile-img">
 <h2>Hello, I'm [Your Name]!</h2>
 <p>I'm a passionate [Your Field] student looking to showcase my
skills to potential employers.</p>
 </section>
</asp:Content>
