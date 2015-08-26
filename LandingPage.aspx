<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LandingPage.aspx.cs" Inherits="LandingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Landing Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="LabelWelcome" runat="server" Text="Welcome, User!"></asp:Label>
        <br />
        <asp:Label ID="LabelUsername" runat="server" Text="Username: "></asp:Label>
        <br />
        <asp:Label ID="LabelGender" runat="server" Text="Gender: "></asp:Label>
        <br />
        <asp:Label ID="LabelBirthdate" runat="server" Text="Birthdate: "></asp:Label>
        <br />
        <br />
        <asp:Button ID="ButtonLogout" runat="server" OnClick="ButtonLogout_Click" Text="Logout" />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">Admin Registration Page</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
