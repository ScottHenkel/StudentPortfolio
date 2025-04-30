<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="StudentPortfolio.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 65%">
        <tr>
            <td style="width: 536px; text-align: right">Email</td>
            <td class="nav-main" style="text-align: left; width: 262px">
                <asp:Label ID="lblEmail" runat="server"></asp:Label>
            </td>
            <td class="nav-main" style="text-align: left; width: 531px;">
                &nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td style="width: 536px; text-align: right">&nbsp;</td>
            <td class="nav-main" style="text-align: left; width: 262px">
                Member Information</td>
            <td class="nav-main" style="text-align: left; width: 531px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 536px; text-align: right">Password</td>
            <td class="nav-main" style="text-align: left; width: 262px">
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Width="235px"></asp:TextBox>
            </td>
            <td class="nav-main" style="text-align: left; width: 531px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 536px; text-align: right">Confirm Password</td>
            <td class="nav-main" style="text-align: left; width: 262px">
                <asp:TextBox ID="txtConfPass" runat="server" TextMode="Password" Width="236px"></asp:TextBox>
            </td>
            <td class="nav-main" style="text-align: left; width: 531px;">
                <asp:CompareValidator ID="cvPass" runat="server" ControlToCompare="txtPass" ControlToValidate="txtConfPass" ErrorMessage="*Values must match" ForeColor="Maroon"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 536px; text-align: right">First Name</td>
            <td class="nav-main" style="text-align: left; width: 262px">
                <asp:TextBox ID="txtFName" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td class="nav-main" style="text-align: left; width: 531px;">
                <asp:RequiredFieldValidator ID="rfvFName" runat="server" ControlToValidate="txtFName" ErrorMessage="*Required" ForeColor="Maroon"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 536px; text-align: right">Last Name</td>
            <td class="nav-main" style="text-align: left; width: 262px">
                <asp:TextBox ID="txtLName" runat="server" Width="153px"></asp:TextBox>
            </td>
            <td class="nav-main" style="text-align: left; width: 531px;">
                <asp:RequiredFieldValidator ID="rfvLName" runat="server" ControlToValidate="txtLName" ErrorMessage="*Required" ForeColor="Maroon"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 536px; text-align: right">Year of Birth</td>
            <td style="width: 262px">
                <asp:TextBox ID="txtYOB" runat="server"></asp:TextBox>
            </td>
            <td class="nav-main" style="text-align: left; width: 531px;">
                <asp:RequiredFieldValidator ID="rfvYOB" runat="server" ControlToValidate="txtYOB" ErrorMessage="*Required" ForeColor="Maroon"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="revYOB" runat="server" ControlToValidate="txtYOB" ErrorMessage="*Must be a year between 1900 and 2025" ForeColor="Maroon" ValidationExpression="^(19[0-9]{2}|20[0-1][0-9]|202[0-5])$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 536px; text-align: right">
                <asp:SqlDataSource ID="dsUpdate" runat="server" ConnectionString="<%$ ConnectionStrings:5680LabsConnectionString %>" DeleteCommand="DELETE FROM [Logins] WHERE [User_Email] = @User_Email" InsertCommand="INSERT INTO [Logins] ([User_Email], [User_Pass], [User_FName], [User_LName], [User_YOB]) VALUES (@User_Email, @User_Pass, @User_FName, @User_LName, @User_YOB)" SelectCommand="SELECT * FROM [Logins] WHERE ([User_Email] = @User_Email)" UpdateCommand="UPDATE [Logins] SET [User_Pass] = @User_Pass, [User_FName] = @User_FName, [User_LName] = @User_LName, [User_YOB] = @User_YOB WHERE [User_Email] = @User_Email">
                    <DeleteParameters>
                        <asp:Parameter Name="User_Email" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="User_Email" Type="String" />
                        <asp:Parameter Name="User_Pass" Type="String" />
                        <asp:Parameter Name="User_FName" Type="String" />
                        <asp:Parameter Name="User_LName" Type="String" />
                        <asp:Parameter Name="User_YOB" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:Parameter Name="User_Email" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="User_Pass" Type="String" />
                        <asp:Parameter Name="User_FName" Type="String" />
                        <asp:Parameter Name="User_LName" Type="String" />
                        <asp:Parameter Name="User_YOB" Type="Int32" />
                        <asp:Parameter Name="User_Email" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td class="nav-main" style="text-align: left; width: 262px">
                <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnUpdate_Click1" />
            </td>
            <td class="nav-main" style="text-align: left; width: 531px;">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 536px; text-align: right">&nbsp;</td>
            <td class="nav-main" style="text-align: left; width: 262px">
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </td>
            <td class="nav-main" style="text-align: left; width: 531px;">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 536px; text-align: right">
                &nbsp;</td>
            <td class="nav-main" style="text-align: left; width: 262px">
                <asp:Label ID="lblPass" runat="server" Visible="False"></asp:Label>
            </td>
            <td class="nav-main" style="text-align: left; width: 531px;">&nbsp;</td>
        </tr>
    </table>
</asp:Content>