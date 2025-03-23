<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StudentPortfolio.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    HomePage
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <!-- Main Landing Section -->
  <section id="home" style="max-width: 800px; margin: 0 auto; text-align: center;">
    <!-- Headline -->
    <h1>Senior Engineer & Aspiring Tech Leader</h1>
    
    <!-- Professional Photo -->
    <img src="Images/profile.jpg" alt="Profile Picture" class="profile-img"
         style="width: 200px; border-radius: 50%; margin: 20px 0;" />

    <!-- Short Introduction -->
    <p>
      Hi, I’m Scott Henkel, a Senior Engineer Specialist at Citigroup with a passion 
      for bridging the gap between complex mainframe systems and practical business solutions.
      I’m currently pursuing a Master’s in Information Systems & Technology to expand my horizons 
      in security and leadership.
    </p>
    
    <!-- Call-to-Action -->
    <p>
      <strong>Ready to see my work?</strong> 
      <a href="Projects.aspx">Check out my projects</a> 
      or 
      <a href="Contact.aspx">get in touch</a>!
    </p>
  </section>
</asp:Content>

