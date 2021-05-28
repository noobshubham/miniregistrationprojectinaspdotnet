<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page by SHUBHAM</title>

    <style>

        #form1 {
            height: 489px;
        }
        .auto-style1 {
            font-size: xx-large;
            font-weight: 700;
            text-align: center;
            height: 102px;
            background-color: #3399FF;
        }
        .auto-style2 {
            height: 149px;
        }
        .auto-style3 {
            font-size: 40pt;
            font-weight: 700;
            text-align: center;
            height: 102px;
            width: 774px;
            background-color: #0099FF;
        }
        .auto-style4 {
            height: 149px;
            width: 774px;
            text-align: left;
        }
        .auto-style5 {
            width: 774px;
            text-align: center;
        }

        .auto-style6 {
            text-align: right;
            width: 518px;
        }
        .auto-style7 {
            text-align: center;
        }

        .auto-style8 {
            font-size: xx-large;
            font-weight: 700;
            text-align: center;
            height: 102px;
            background-color: #0099FF;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">

        <table style="width: 100%; height: 384px;">
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style3">Login Page</td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style4">
                    <table style="width: 100%; height: 149px;">
                        <tr>
                            <td class="auto-style6">
                                <asp:TextBox ID="TextBox_email" runat="server" Placeholder="Email" ForeColor="Black" Height="30px" TextMode="Email" Width="262px" Font-Size="12pt"></asp:TextBox>
                            </td>
                            <td class="auto-style7">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_email" ErrorMessage="Enter Valid Email Address" Height="30px" style="text-align: center" ValidationGroup="LG" Width="170px"></asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">
                                <asp:TextBox ID="TextBox_Password" runat="server" placeholder="Password" ForeColor="Black" Height="30px" Width="262px" Font-Size="12pt" TextMode="Password"></asp:TextBox>
                            </td>
                            <td class="auto-style7">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox_Password" ErrorMessage="Enter Proper Password" Height="30px" ValidationGroup="LG" Width="170px"></asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button_login" runat="server" Font-Size="12pt" Height="30px" Text="Login" Width="131px" OnClick="Button_login_Click" ValidationGroup="LG" />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label_login" runat="server" Font-Size="15pt" Height="30px" Width="262px"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </form>
</body>
</html>
