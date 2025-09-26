<%@ Page Title="" Language="C#" MasterPageFile="~/registrar.master" AutoEventWireup="true" CodeFile="studentregistraion.aspx.cs" Inherits="studentregistraion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        width: 170px;
        height: 32px;
    }
    .style5
    {
        width: 10px;
        height: 32px;
    }
    .style6
    {
        height: 32px;
    }
        .style3
        {
            text-align: left;
        }
        .style7
        {
            width: 170px;
            height: 37px;
        }
        .style8
        {
            width: 10px;
            height: 37px;
        }
        .style9
        {
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>  <table width="650">
        <tr>
            <td colspan="3" 
                
                style="text-align: center; background-color: #FF9999; font-size: 16px; font-family: 'book Antiqua'; font-weight: bold; font-style: italic;">
                Student Details</td>
        </tr>
        <tr>
            <td style="text-align: right;" class="style7">
                                Student_Name</td>
            <td class="style8">
                -</td>
            <td class="style9" height="40">
                <asp:TextBox ID="TextBox1" runat="server" Width="200px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 170px; text-align: right;">
                                Student_id</td>
            <td style="width: 10px">
                -</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="200px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 170px; text-align: right;">
                                Course</td>
            <td style="width: 10px">
                -</td>
            <td height="30">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    Height="30px" Width="205px">
                    <asp:ListItem>MCA</asp:ListItem>
                    <asp:ListItem>MBA</asp:ListItem>
                    <asp:ListItem>B.TECH</asp:ListItem>
                    <asp:ListItem>BCA</asp:ListItem>
                    <asp:ListItem>BBA</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 170px; text-align: right;">
                                Session</td>
            <td style="width: 10px">
                -</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="200px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 170px; text-align: right;">
                                Branch</td>
            <td style="width: 10px">
                -</td>
            <td height="30">
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    Height="30px" Width="205px">
                    <asp:ListItem>MCA</asp:ListItem>
                    <asp:ListItem>CS</asp:ListItem>
                    <asp:ListItem>IT</asp:ListItem>
                    <asp:ListItem>ME</asp:ListItem>
                    <asp:ListItem>EC</asp:ListItem>
                    <asp:ListItem>BCA</asp:ListItem>
                    <asp:ListItem>BBA</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 170px; text-align: right;">
                Sem</td>
            <td style="width: 10px">
                -</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server" Width="200px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right;" class="style4">
                Phone_no</td>
            <td class="style5">
                -</td>
            <td class="style6">
                <asp:TextBox ID="TextBox7" runat="server" Width="200px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 170px; text-align: right;">
                Email_id</td>
            <td style="width: 10px">
                -</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" Width="200px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="*"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="Format" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 170px; text-align: right;">
                Password</td>
            <td style="width: 10px">
                -</td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server" Width="200px" Height="30px" 
                    TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox10" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;
                <asp:Label ID="Label1" runat="server" ForeColor="#80FF00"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="3" style="text-align: center">
                <asp:Button 
                    ID="Button1" runat="server" onclick="Button1_Click2" Text="Submit" />
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="3">
                &nbsp;</td>
        </tr>
    </table></center>
</asp:Content>

