<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Member.aspx.cs" Inherits="cw2.Member" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  DataKeyNames="UserAccount" DataSourceID="SqlDataSource1" style="z-index: 1">
        <Columns>
            <asp:CommandField ShowEditButton="True" CancelText="CANCEL" DeleteText="DELETE" EditText="EDIT" InsertText="INSERT" NewText="NEW" SelectText="SELETE" UpdateText="UPDATE" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="UserAccount" HeaderText="UserAccount" ReadOnly="True" SortExpression="UserAccount" />
            <asp:BoundField DataField="UserPassword" HeaderText="UserPassword" SortExpression="UserPassword" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:connect %>" DeleteCommand="DELETE FROM [Member] WHERE [UserAccount] = @original_UserAccount AND [UserName] = @original_UserName AND [UserPassword] = @original_UserPassword" InsertCommand="INSERT INTO [Member] ([UserName], [UserAccount], [UserPassword]) VALUES (@UserName, @UserAccount, @UserPassword)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [UserName], [UserAccount], [UserPassword] FROM [Member]" UpdateCommand="UPDATE [Member] SET [UserName] = @UserName, [UserPassword] = @UserPassword WHERE [UserAccount] = @original_UserAccount AND [UserName] = @original_UserName AND [UserPassword] = @original_UserPassword">
        <DeleteParameters>
            <asp:Parameter Name="original_UserAccount" Type="String" />
            <asp:Parameter Name="original_UserName" Type="String" />
            <asp:Parameter Name="original_UserPassword" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="UserAccount" Type="String" />
            <asp:Parameter Name="UserPassword" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="UserPassword" Type="String" />
            <asp:Parameter Name="original_UserAccount" Type="String" />
            <asp:Parameter Name="original_UserName" Type="String" />
            <asp:Parameter Name="original_UserPassword" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
