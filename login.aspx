<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 706px;
            width: 1505px;
        }
        .auto-style2 {
            width: 764px;
            margin-left: 338px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
<div style="text-align:center;">
 <center><table width="40%" style="padding:10px; margin-top:10%;" align="center">
<tr align="center"><td colspan="2">
            <asp:Label ID="lbLogin" runat="server" BackColor="Red" Font-Bold="True" Font-Size="24pt" Text="LOGIN FORM"></asp:Label><br /><br />

 </td>
</tr>
<tr align="center"><td><asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="White" Text=" Username " BackColor="Red" Font-Size="16pt"></asp:Label></td>
<td><asp:TextBox ID="txtUsername" runat="server" BackColor="White" Font-Bold="True" ForeColor="Black" Width="391px" Font-Size="14pt"></asp:TextBox>
<br /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="Yellow" ControlToValidate="txtUsername" ErrorMessage="Username Required !!!" Font-Size="12pt" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator></td></tr>
<tr align="center"><td><asp:Label ID="lbpassword" runat="server"  BackColor="Red" Font-Bold="True" ForeColor="White" Text=" Password  " Font-Size="16pt"></asp:Label></td>
<td><asp:TextBox ID="txtPassword" runat="server" BackColor="White" Font-Bold="True" ForeColor="Black" TextMode="Password" Width="390px" Font-Size="14pt"></asp:TextBox></td></tr>
<tr align="center"><td colspan="2"><br /><br /> <asp:Button ID="btnLog" runat="server" BackColor="Green" Font-Bold="True" ForeColor="Black" Text="Log In" Width="129px" BorderColor="White" Font-Size="14pt" Height="45px" ValidationGroup="a" CssClass="auto-style3" OnClick="btnLog_Click" />
<br />
<asp:Label ID="lblerror" runat="server" Text="" ForeColor="Red"></asp:Label>
</td></tr>
</table>
</center>
</div>
</asp:Content>


