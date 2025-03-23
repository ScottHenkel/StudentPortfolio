<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="StudentPortfolio.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">About
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <h2>About Me</h2>
  <p>My name is Scott Henkel and I’m a graduate student currently pursuing a Master’s degree in Information Systems and Technology, with a passion for bridging the gap between complex systems and practical business solutions.</p>
  <p>I currently work at Citigroup as a Senior Engineer Specialist, specializing in Mainframe MQ on the z/OS platform. With a strong foundation in enterprise-level infrastructure and messaging systems, I thrive in high-availability environments that support critical financial applications.</p>
  <p>Outside of work and academics, I enjoy videography and traveling—capturing moments and exploring new cultures fuels my creativity and broadens my perspective.</p>
  <p>Looking ahead, I’m interested in expanding my expertise into the security field and/or transitioning into a leadership role as I continue to grow within Citigroup. Whether it’s through technical innovation or strategic management, my goal is to make a lasting impact in the tech space.</p>
  
  <h3>Skills:</h3>

<div style="float: right; text-align: center;">

  <img src="Images/citi.png" 
       alt="Workplace Logo" 
       style="width: 200px; margin: 0 10px 10px 0;" />


  <img src="Images/UNT.png" 
       alt="School Logo" 
       style="width: 200px; margin: 0 0 10px 10px;" />

  
  <br />
  <img src="Images/mainframe.jpg" 
       alt="A Mainframe Computer" 
       style="width: 200px; margin: 10px 0 10px 0;" />
</div>


  <ul>
    <li>
      <strong>Programming Languages:</strong> Python, C#, Java, C++, COBOL, VB
    </li>
    <li>
      <strong>Web Development:</strong> HTML, CSS, JavaScript, ASP.NET
    </li>
    <li>
      <strong>Mainframe Technologies:</strong> z/OS, JCL, TSO/ISPF, IBM MQ, CICS, REXX, VSAM, Assembler
    </li>
    <li>
      <strong>Database Management:</strong> SQL, MongoDB, DB2 (z/OS)
    </li>
    <li>
      <strong>Soft Skills:</strong> Leadership, Communication, Problem-Solving, Agile Methodologies (Scrum)
    </li>
  </ul>
  <h3>Resume</h3>
  <p>You can view or download my resume using the options below:</p>
  <p>
    <a href="Files/Resume.pdf" target="_blank" download="Resume.pdf">Download My Resume (PDF)</a>
  </p>

</asp:Content>

