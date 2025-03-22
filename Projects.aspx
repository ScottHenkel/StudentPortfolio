<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Projects.aspx.cs" Inherits="StudentPortfolio.Projects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">Projects
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <h2>My Projects</h2>
 <div class="project">
 <h3>Project 1: Web Application</h3>
 <p>Developed a web app for student project tracking.</p>
 </div>
 <div class="project">
 <h3>Project 2: Machine Learning Model</h3>
 <p>Built a predictive model using Python and Scikit-Learn.</p>
 </div>
</asp:Content>