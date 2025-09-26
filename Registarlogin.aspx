<%@ Page Title="" Language="C#" MasterPageFile="~/login.master" AutoEventWireup="true" CodeFile="registarlogin.aspx.cs" Inherits="registarlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <center>  <table class="style1" width="600">
        <tr>
            <td colspan="3" height="34" 
                
                
                style="text-align: right; font-size: 16px; font-family: 'book Antiqua'; font-weight: bold; font-style: italic;">
<asp:HyperLink 
                ID="HyperLink1" runat="server" Font-Underline="False" ForeColor="#CC0099" 
                          NavigateUrl="~/home.html">Home</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td colspan="3" height="34" 
                style="text-align: center; background-color: #FF9999; font-size: 16px; font-family: 'book Antiqua'; font-weight: bold; font-style: italic;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Registrar Login&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" height="34" 
                style="text-align: center; font-size: 16px; font-family: 'book Antiqua'; font-weight: bold; font-style: italic;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 150px; text-align: right;" height="34">
            &nbsp;User_id</td>
            <td style="width: 10px" height="34">
            -</td>
            <td height="34">
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="*" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 150px; text-align: right;" height="34">
            Password</td>
            <td style="width: 10px" height="34">
            -</td>
            <td headers="34">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="3">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" ForeColor="Black" Text="Login" 
                    onclick="Button1_Click" />
&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" colspan="3">
                &nbsp;</td>
        </tr>
    </table></center>
</asp:Content>

