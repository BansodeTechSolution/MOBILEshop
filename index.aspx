<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        <center>
            
            <br /><br />
            <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="373px"></asp:TextBox>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="Button3" runat="server" Font-Bold="True" ForeColor="Black" Text="Search" />
           <br /><br />
             <asp:Label ID="Label1" runat="server" BackColor="Black" Font-Bold="True" Font-Italic="True" Font-Size="40pt" ForeColor="Red" Text="Welcome to the Mobile Shop"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" BackColor="White" Font-Bold="True" Font-Italic="True" Font-Size="18pt" ForeColor="Red" Text="Make your Choice like a Beast 😈"></asp:Label>
            

            </center>



</asp:Content>

