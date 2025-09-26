<%@ Page Title="" Language="C#" MasterPageFile="~/login.master" AutoEventWireup="true" CodeFile="AddSubject.aspx.cs" Inherits="Adminlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <center>  <table class="style1" width="650">
        <tr>
            <td align="right" 
                style="text-align: center; background-color: #FF9999; font-size: 16px; font-family: 'book Antiqua'; font-weight: bold; font-style: italic; color: #FFFFFF;" 
                colspan="2">
                                Add New Subject</td>
        </tr>
        <tr>
            <td align="right" 
                style="text-align: right; background-color: #FF9999; font-size: 16px; font-family: 'book Antiqua'; font-weight: bold; font-style: italic;" 
                colspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:HyperLink ID="HyperLink1" runat="server" 
                                    NavigateUrl="~/Admin/subjectalloted.aspx" Font-Underline="False" 
                                    ForeColor="Black">Map Subject</asp:HyperLink>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:HyperLink ID="HyperLink2" runat="server" 
                                    NavigateUrl="~/Admin/AddSubject.aspx" Font-Underline="False" 
                                    ForeColor="Black">Add Subject</asp:HyperLink>
                            &nbsp;&nbsp;&nbsp;
                            &nbsp;
                                <asp:LinkButton ID="LinkButton1" runat="server" 
                                    Font-Underline="False" ForeColor="Black" 
                                    PostBackUrl="~/Admin/Adminlogin.aspx" onclick="LinkButton1_Click">Logout</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 200px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" style="width: 200px">
                Subject_id</td>
            <td height="40">
                <asp:TextBox ID="TextBox1" runat="server" Width="200px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 200px">
                Subject_name</td>
            <td height="40">
                <asp:TextBox ID="TextBox2" runat="server" Width="200px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 200px">
                Course</td>
            <td height="40">
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                                    Width="205px" Height="35px">
                                <asp:ListItem>BCA</asp:ListItem>
                                <asp:ListItem>MCA</asp:ListItem>
                                <asp:ListItem>B.Tech</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            </td>
        </tr>
        <tr>
            <td align="right" style="width: 200px">
                Branch</td>
            <td height="40">
                            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                                    Width="205px" Height="35px">
                                <asp:ListItem>BCA</asp:ListItem>
                                <asp:ListItem>MCA</asp:ListItem>
                                <asp:ListItem>CS</asp:ListItem>
                                <asp:ListItem>IT</asp:ListItem>
                            </asp:DropDownList>
                            </td>
        </tr>
        <tr>
            <td align="right" style="width: 200px">
                Sem</td>
            <td height="40">
                            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                                    Width="205px" Height="35px">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                            </asp:DropDownList>
                            </td>
        </tr>
        <tr>
            <td align="right" style="width: 200px">
                Total Marks</td>
            <td height="40">
                <asp:TextBox ID="TextBox3" runat="server" Width="200px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
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
    </table></center>
</asp:Content>

