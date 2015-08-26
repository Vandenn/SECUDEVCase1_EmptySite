<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
            width: 198px;
        }
        .auto-style3 {
            text-align: right;
            width: 198px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 268px;
        }
        .auto-style6 {
            height: 23px;
            width: 268px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">First Name:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Last Name:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Gender:</td>
                <td class="auto-style5">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem Selected="True">Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Salutation:</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Mr</asp:ListItem>
                        <asp:ListItem>Sir</asp:ListItem>
                        <asp:ListItem>Senior</asp:ListItem>
                        <asp:ListItem>Count</asp:ListItem>
                        <asp:ListItem Enabled="False">Miss</asp:ListItem>
                        <asp:ListItem Enabled="False">Ms</asp:ListItem>
                        <asp:ListItem Enabled="False">Mrs</asp:ListItem>
                        <asp:ListItem Enabled="False">Madame</asp:ListItem>
                        <asp:ListItem Enabled="False">Majesty</asp:ListItem>
                        <asp:ListItem Enabled="False">Seniora</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Birthdate:</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>January</asp:ListItem>
                        <asp:ListItem>February</asp:ListItem>
                        <asp:ListItem>March</asp:ListItem>
                        <asp:ListItem>April</asp:ListItem>
                        <asp:ListItem>May</asp:ListItem>
                        <asp:ListItem>June</asp:ListItem>
                        <asp:ListItem>July</asp:ListItem>
                        <asp:ListItem>August</asp:ListItem>
                        <asp:ListItem>September</asp:ListItem>
                        <asp:ListItem>October</asp:ListItem>
                        <asp:ListItem>November</asp:ListItem>
                        <asp:ListItem>December</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem Enabled="False">31</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList4" runat="server">
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2009</asp:ListItem>
                        <asp:ListItem>2008</asp:ListItem>
                        <asp:ListItem>2007</asp:ListItem>
                        <asp:ListItem>2006</asp:ListItem>
                        <asp:ListItem>2005</asp:ListItem>
                        <asp:ListItem>2004</asp:ListItem>
                        <asp:ListItem>2003</asp:ListItem>
                        <asp:ListItem>2002</asp:ListItem>
                        <asp:ListItem>2001</asp:ListItem>
                        <asp:ListItem>2000</asp:ListItem>
                        <asp:ListItem>1999</asp:ListItem>
                        <asp:ListItem>1998</asp:ListItem>
                        <asp:ListItem>1997</asp:ListItem>
                        <asp:ListItem>1996</asp:ListItem>
                        <asp:ListItem>1995</asp:ListItem>
                        <asp:ListItem>1994</asp:ListItem>
                        <asp:ListItem>1993</asp:ListItem>
                        <asp:ListItem>1992</asp:ListItem>
                        <asp:ListItem>1991</asp:ListItem>
                        <asp:ListItem>1990</asp:ListItem>
                        <asp:ListItem>1989</asp:ListItem>
                        <asp:ListItem>1988</asp:ListItem>
                        <asp:ListItem>1987</asp:ListItem>
                        <asp:ListItem>1986</asp:ListItem>
                        <asp:ListItem>1985</asp:ListItem>
                        <asp:ListItem>1984</asp:ListItem>
                        <asp:ListItem>1983</asp:ListItem>
                        <asp:ListItem>1982</asp:ListItem>
                        <asp:ListItem>1981</asp:ListItem>
                        <asp:ListItem>1980</asp:ListItem>
                        <asp:ListItem>1979</asp:ListItem>
                        <asp:ListItem>1978</asp:ListItem>
                        <asp:ListItem>1977</asp:ListItem>
                        <asp:ListItem>1976</asp:ListItem>
                        <asp:ListItem>1975</asp:ListItem>
                        <asp:ListItem>1974</asp:ListItem>
                        <asp:ListItem>1973</asp:ListItem>
                        <asp:ListItem>1972</asp:ListItem>
                        <asp:ListItem>1971</asp:ListItem>
                        <asp:ListItem>1970</asp:ListItem>
                        <asp:ListItem>1969</asp:ListItem>
                        <asp:ListItem>1968</asp:ListItem>
                        <asp:ListItem>1967</asp:ListItem>
                        <asp:ListItem>1966</asp:ListItem>
                        <asp:ListItem>1965</asp:ListItem>
                        <asp:ListItem>1964</asp:ListItem>
                        <asp:ListItem>1963</asp:ListItem>
                        <asp:ListItem>1962</asp:ListItem>
                        <asp:ListItem>1961</asp:ListItem>
                        <asp:ListItem>1960</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Username:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Password:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Confirm Password:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">About Me:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4"></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
