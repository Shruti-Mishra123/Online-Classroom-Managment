<%@ Page Title="" Language="C#" MasterPageFile="~/login.master" AutoEventWireup="true" CodeFile="subjectalloted.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>  <table class="style1" width="650"></center>
        <tr>
            <td align="right" 
                style="text-align: center; background-color: #FF9999; font-size: 16px; font-family: 'book Antiqua'; font-weight: bold; font-style: italic; color: #FFFFFF;" 
                colspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                Subject Allotment&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            </td>
        </tr>
        <tr>
            <td align="right" 
                style="text-align: right; background-color: #FF9999; font-size: 16px; font-family: 'book Antiqua'; font-weight: bold; font-style: italic;" 
                colspan="2">
                                <asp:HyperLink ID="HyperLink1" runat="server" 
                                    NavigateUrl="~/Admin/subjectalloted.aspx" Font-Underline="False" 
                                    ForeColor="Black">Map Subject</asp:HyperLink>
                            &nbsp;
                                <asp:HyperLink ID="HyperLink2" runat="server" 
                                    NavigateUrl="~/Admin/AddSubject.aspx" Font-Underline="False" 
                                    ForeColor="Black">Add Subject</asp:HyperLink>
                            &nbsp;
                                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                                    Font-Underline="False" ForeColor="Black" 
                                    PostBackUrl="~/Admin/Adminlogin.aspx">Logout</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 200px">
                                Course</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    Height="30px" Width="180px" DataSourceID="SqlDataSource1" DataTextField="course" 
                                    DataValueField="course">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [course] FROM [subdetails]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 200px">
                                Branch</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                    Height="30px" Width="180px" DataSourceID="SqlDataSource2" DataTextField="branch" 
                                    DataValueField="branch">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [branch] FROM [subdetails] WHERE ([course] = @course)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="course" 
                                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 200px">
                                Sem</td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                    Height="30px" Width="180px" DataSourceID="SqlDataSource3" DataTextField="semester" 
                                    DataValueField="semester">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [semester] FROM [subdetails]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 200px">
                                Sub_Id</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    Height="30px" Width="180px" DataSourceID="SqlDataSource4" DataTextField="Sub_id" 
                                    DataValueField="Sub_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT [Sub_id] FROM [subdetails] WHERE (([branch] = @branch) AND ([semester] = @semester))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList3" Name="branch" 
                                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList4" Name="semester" 
                                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 200px">
                                Sub_Name</td>
            <td>
                <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True" 
                    Height="30px" Width="180px" DataSourceID="SqlDataSource5" DataTextField="Sub_name" 
                                    DataValueField="Sub_name">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT [Sub_name] FROM [subdetails] WHERE ([Sub_id] = @Sub_id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="Sub_id" 
                                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 200px">
                                Faculty_Id</td>
            <td>
                <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" 
                    Height="30px" Width="180px" DataSourceID="SqlDataSource6" DataTextField="Faculty_id" 
                                    DataValueField="Faculty_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [Faculty_id] FROM [facultydetails]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 200px">
                                Faculty_Name</td>
            <td>
                <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True" 
                    Height="30px" Width="180px" DataSourceID="SqlDataSource7" DataTextField="Faculty_name" 
                                    DataValueField="Faculty_name">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT [Faculty_name] FROM [facultydetails] WHERE ([Faculty_id] = @Faculty_id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList5" Name="Faculty_id" 
                                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
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
                                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
&nbsp;<asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

