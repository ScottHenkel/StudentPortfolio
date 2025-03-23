<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Projects.aspx.cs" Inherits="StudentPortfolio.Projects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">Projects
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <!-- GitHub Projects Section -->
  <h2>Projects</h2>
  <p>Below are some of my GitHub projects. Click each link to view the repository:</p>
  <ul>
    <li>
      <strong>Personal Website</strong> – This website. 
      <a href="https://github.com/ScottHenkel/StudentPortfolio" target="_blank">View on GitHub</a>
    </li>
    <li>
      <strong>Python Data Analysis</strong> – A Jupyter Notebook that takes datapoints from a community and charts the information. 
      <a href="https://github.com/ScottHenkel/BCIS5110" target="_blank">View on GitHub</a>
    </li>
  </ul>
  
  <!-- Mainframe Certificates Section -->
  <h2>Mainframe Certificates</h2>
  <p>Below are my Mainframe Certificates. Click the link to view them on Credly:</p>
  <ul>
    <li>
      <strong>Mainframe Certificates</strong> – All Mainframe Certificates. 
      <a href="https://www.credly.com/users/scott-henkel1" target="_blank">View on Credly</a>
    </li>
  </ul>
</asp:Content>
