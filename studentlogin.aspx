<%@ Page Title="" Language="C#" MasterPageFile="~/login.master" AutoEventWireup="true" CodeFile="studentlogin.aspx.cs" Inherits="studentlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 150px;
            height: 33px;
        }
        .style4
        {
            width: 10px;
            height: 33px;
        }
        .style5
        {
            width: 450px;
            height: 33px;
        }
        .style6
        {
            width: 150px;
            height: 49px;
        }
        .style7
        {
            width: 10px;
            height: 49px;
        }
        .style8
        {
            width: 450px;
            height: 49px;
        }
        .style9
        {
            width: 150px;
            height: 46px;
        }
        .style10
        {
            width: 10px;
            height: 46px;
        }
        .style11
        {
            width: 450px;
            height: 46px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td style="text-align: right;" class="style3">
                </td>
            <td class="style4">
                </td>
            <td class="style5">
                </td>
            <td rowspan="13" style="width: 200px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 150px; text-align: right;">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
            <td style="width: 450px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right;" class="style6">
            Student User_id</td>
            <td class="style7">
            -</td>
            <td class="style8">
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="*" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right;" class="style9">
            Password</td>
            <td class="style10">
            -</td>
            <td class="style11">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 150px; text-align: right;">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
            <td style="width: 450px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 150px; text-align: right;">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
            <td style="width: 450px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 150px; text-align: right;">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
            <td style="width: 450px">
                <asp:Button ID="Button1" runat="server" ForeColor="Black" Text="Login" 
                onclick="Button1_Click" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 150px; text-align: right;">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
            <td style="width: 450px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 150px; text-align: right;">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
            <td style="width: 450px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 150px; text-align: right;">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
            <td style="width: 450px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 150px; text-align: right;">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
            <td style="width: 450px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 150px; text-align: right;">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
            <td style="width: 450px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" colspan="3" style="width: 450px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

