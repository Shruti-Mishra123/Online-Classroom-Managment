<%@ Page Title="" Language="C#" MasterPageFile="~/registrar.master" AutoEventWireup="true" CodeFile="facultyregistraion.aspx.cs" Inherits="facultyregistraion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center> <table width="650">
        <tr>
            <td align="right" 
                    style="text-align: center; font-size: 16px; font-family: 'book Antiqua'; font-weight: bold; font-style: italic;" 
                    colspan="2">
                                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" 
                    style="text-align: center; background-color: #FF9999; font-size: 16px; font-family: 'book Antiqua'; font-weight: bold; font-style: italic;" 
                    colspan="2">
                                Faculty Registration</td>
        </tr>
        <tr>
            <td align="right" style="width: 200px">
                                Faculty_id</td>
            <td height="40">
                <asp:TextBox ID="TextBox1" runat="server" Width="200px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 200px">
                                Faculty_name</td>
            <td height="40">
                <asp:TextBox ID="TextBox2" runat="server" Width="200px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 200px">
                                Phone</td>
            <td height="40">
                <asp:TextBox ID="TextBox3" runat="server" Width="200px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 200px">
                                Email</td>
            <td height="40">
                <asp:TextBox ID="TextBox4" runat="server" Width="200px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Format" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 200px">
                                Password</td>
            <td height="40">
                <asp:TextBox ID="TextBox5" runat="server" Width="200px" Height="30px" 
                    TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 200px">
                                &nbsp;</td>
            <td>
                                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" Text="Submit" onclick="Button2_Click" />
&nbsp;
                                <asp:Label ID="Label2" runat="server"></asp:Label>
&nbsp;</td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                                &nbsp;</td>
        </tr>
    </table></center>
</asp:Content>

