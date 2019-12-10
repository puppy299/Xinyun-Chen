<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="cw2.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 543px;
        }
        .auto-style6 {
            position: absolute;
            top: 115px;
            left: 655px;
        }
        .auto-style7 {
            position: absolute;
            top: 138px;
            left: 655px;
        }
        .auto-style8 {
            position: absolute;
            top: 161px;
            left: 655px;
        }
        .auto-style9 {
            position: absolute;
            top: 184px;
            left: 655px;
        }
        .auto-style10 {
            position: absolute;
            top: 184px;
            left: 108px;
        }
        .auto-style11 {
            width: 543px;
            height: 23px;
        }
        .auto-style12 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" DeleteCommand="DELETE FROM [Member] WHERE [UserAccount] = @UserAccount" InsertCommand="INSERT INTO [Member] ([UserAccount], [UserName], [UserPassword]) VALUES (@UserAccount, @UserName, @UserPassword)" SelectCommand="SELECT [UserAccount], [UserName], [UserPassword] FROM [Member]" UpdateCommand="UPDATE [Member] SET [UserName] = @UserName, [UserPassword] = @UserPassword WHERE [UserAccount] = @UserAccount">
        <DeleteParameters>
            <asp:Parameter Name="UserAccount" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserAccount" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="UserPassword" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="UserPassword" Type="String" />
            <asp:Parameter Name="UserAccount" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
        <table class="auto-style4">
        <tr>
            <td class="auto-style5">User Account</td>
            <td>
                <asp:TextBox ID="txtAccInput" runat="server" style="z-index: 1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">User Name</td>
            <td class="auto-style12">
                <asp:TextBox ID="txtNameInput" runat="server" style="z-index: 1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Password</td>
            <td>
                <asp:TextBox ID="txtPassInput" runat="server" style="z-index: 1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnCanel" runat="server"   align="center" Text="Cancel" OnClick="btnCanel_Click" />
            </td>
            <td>
                <asp:Button ID="btnNewSign" runat="server"  align="center"  Text="Sign in" OnClick="btnNewSign_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
