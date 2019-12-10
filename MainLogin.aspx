<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MainLogin.aspx.cs" Inherits="cw2.MainLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
                        <tr style="width:1100px">
                            <td style="width:800px">
                                <h2>About us</h2>
                                We are a software to help you understand children's trends and help you better understand children's life.

                            </td>
                            <td style="width:300px;text-align:right">
                                <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                                    <tr>
                                        <td>
                                            <table cellpadding="0">
                                                <tr>
                                                    <td align="center" colspan="2">Login</td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="UsernameLabel" runat="server">Username:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="PasswordLabel" runat="server">Password:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="2" style="color:Red;">
                                                        <asp:HyperLink ID="hlAdmin" runat="server" NavigateUrl="~/AdminLogin.aspx">Admin Login</asp:HyperLink>
                                                    </td>
                                                </tr>
                                                <tr>

                                                    <td  colspan="2">
                                                        <asp:Button ID="btnSign" runat="server" CommandName="Sign" OnClick="btnSign_Click" Text="Sign in" ValidationGroup="Sign1" align="left"/>
                                                        <asp:Button ID="btnLogin" runat="server" CommandName="Login" OnClick="btnLogin_Click" Text="Log in" ValidationGroup="Login1" align="right"/>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
</asp:Content>
