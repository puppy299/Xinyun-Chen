<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="cw2.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <table>
        <tr style="width:1100px">
            <td style="width:800px">
                <h2>About us</h2>
               We are a software to help you understand children's trends and help you better understand children's life.

            </td>
            <td style="width:300px;text-align:center">
                <asp:panel id="Panel3" runat="server" Visible="True">												
                    <table id="table1" cellSpacing="0" cellPadding="0" width="249" border="0" runat="server">					
                  <tr>
                  <td>
                    <table cellSpacing="0" cellPadding="2" align="center" border="0">
                  <tr>
                    <td colspan="2">Welcome back!</td>
                  </tr>
                  <tr>
                    <td  colspan="2">    
                      <asp:Button ID="btnLogoff" runat="server" Text="Log off" OnClick="btnLogoff_Click1" />    
                   </td>
                  </tr>
                    </table>
                  </td>
                  </tr>
                    </table>
                </asp:panel>
            </td>
        </tr>
    </table>
</asp:Content>