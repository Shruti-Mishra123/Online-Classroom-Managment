<%@ Page Title="" Language="C#" MasterPageFile="~/registration.master" AutoEventWireup="true" CodeFile="Updatepassword.aspx.cs" Inherits="Member_MemberIn_ReturnBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
    <center>
        <table style="width: 100%;">
            <tr>
                <td style="height: 30px;">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td style="text-align:left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 30px;">
                    Enter Username</td>
                <td>
                    -</td>
                <td style="text-align:left">
                    <asp:TextBox ID="txtbook0" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtbook0" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="height: 30px;">
                    Enter old Password</td>
                <td>
                    -
                </td>
                <td style="text-align:left">
                    <asp:TextBox ID="txtbook" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtbook0" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="height: 30px;">
                    Enter New Password</td>
                <td>
                    -
                </td>
                <td style="text-align:left">
                    <asp:TextBox ID="txtstud" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtstud" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="height: 30px;">
                    Confirm New Password</td>
                <td>
                    -</td>
                <td style="text-align:left">
                    <asp:TextBox ID="txtstud0" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtstud0" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToValidate="txtstud" ErrorMessage="Not Same"></asp:CompareValidator>
                </td>
            </tr>
            <tr style="text-align:center">
                <td colspan="3" style="height: 30px"> 
                    <asp:Button ID="btnstatus" runat="server" Text="Update" 
                        onclick="btnstatus_Click" />
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </td>
            </tr>       
            <tr style="text-align:center">
                <td colspan="3" style="height: 30px"> 
                    &nbsp;</td>
            </tr>       
            <tr style="text-align:center">
                <td colspan="3" style="height: 30px"> 
                    &nbsp;</td>
            </tr>       
            <tr style="text-align:center">
                <td colspan="3" style="height: 30px"> 
                    &nbsp;</td>
            </tr>       
            <tr style="text-align:center">
                <td colspan="3" style="height: 30px"> 
                    &nbsp;</td>
            </tr>       
            <tr style="text-align:center">
                <td colspan="3" style="height: 30px"> 
                    &nbsp;</td>
            </tr>       
            <tr style="text-align:center">
                <td colspan="3" style="height: 30px"> 
                    &nbsp;</td>
            </tr>       
            <tr style="text-align:center">
                <td colspan="3" style="height: 30px"> 
                    &nbsp;</td>
            </tr>       
        </table>
        </center>
    </div>
    
</asp:Content>

