<%@ Page Title="" Language="C#" MasterPageFile="~/login.master" AutoEventWireup="true" CodeFile="facultylogin.aspx.cs" Inherits="faculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <center> <table class="style1" width="650">
        <tr>
            <td colspan="3" 
                style="text-align: center; background-color: #FF9999; font-size: 16px; font-family: 'book Antiqua'; font-weight: bold; font-style: italic;">
            &nbsp;Faculty Login&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 150px; text-align: right;">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
            <td height="40">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 150px; text-align: right;">
                Faculty Id</td>
            <td style="width: 10px">
            -</td>
            <td height="40">
                <asp:TextBox ID="TextBox1" runat="server" Width="200px" Height="30px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="*" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 150px; text-align: right;">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
            <td height="40">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 150px; text-align: right;">
            Password</td>
            <td style="width: 10px">
            -</td>
            <td height="40">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="200px" 
                    Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="3">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" />
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
    </table> </center> 
</asp:Content>

