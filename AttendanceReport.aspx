<%@ Page Title="" Language="C#" MasterPageFile="~/registration.master" AutoEventWireup="true" CodeFile="AttendanceReport.aspx.cs" Inherits="AttendanceReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center> <table class="style1">
        <tr>
            <td align="right" 
                style="text-align: center; background-color: #FF9999; font-size: 16px; font-family: 'book Antiqua'; font-weight: bold; font-style: italic;" 
                colspan="3">
                                Student Attendance Report</td>
        </tr>
        <tr>
            <td style="width: 100px">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" style="width: 200px">
                                Select Subject id</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                                    DataSourceID="SqlDataSource2" DataTextField="Sub_id" DataValueField="Sub_id" 
                                    Width="200px" Height="30px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    
                    SelectCommand="SELECT [Sub_id] FROM [subjectaloted] WHERE ([Faculty_id] = @Faculty_id)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Faculty_id" SessionField="fid" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" style="width: 200px">
                                    Select date
                                </td>
            <td>
                <asp:DropDownList ID="DropDownList9" runat="server" AutoPostBack="True" 
                    Height="30px" Width="200px" DataSourceID="SqlDataSource3" 
                    DataTextField="Date" DataValueField="Date">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [Date] FROM [studentAttendance] WHERE ([Faculty_id] = @Faculty_id)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Faculty_id" SessionField="fid" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                                    &nbsp;</td>
        </tr>
        <tr>
            <td align="right" style="width: 200px">
                Timing</td>
            <td>
                <asp:DropDownList ID="DropDownList7" runat="server" Height="30px" Width="200px">
                    <asp:ListItem>09:00-10:00 AM</asp:ListItem>
                    <asp:ListItem>10:00-11:00 AM</asp:ListItem>
                    <asp:ListItem Value="11-12 PM">11:00-12:00 PM</asp:ListItem>
                    <asp:ListItem>01:00-02:00 PM</asp:ListItem>
                    <asp:ListItem>02:00-03:00 PM</asp:ListItem>
                    <asp:ListItem>03:00-04:00 PM</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" style="width: 200px">
                Student Id</td>
            <td>
                <asp:DropDownList ID="DropDownList8" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="Sub_id" DataValueField="Sub_id" 
                    Height="30px" Width="200px">
                </asp:DropDownList>
                &nbsp;<asp:Button ID="Button2" runat="server" Text="Ok" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [Sub_id] FROM [subjectaloted] WHERE ([Faculty_id] = @Faculty_id)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Faculty_id" SessionField="fid" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" colspan="3">
            <center>    
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource4" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="600px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Student_id" HeaderText="Student_id" 
                            SortExpression="Student_id" />
                        <asp:BoundField DataField="Student_Name" HeaderText="Student_Name" 
                            SortExpression="Student_Name" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Timing" HeaderText="Timing" 
                            SortExpression="Timing" />
                        <asp:BoundField DataField="Sub_name" HeaderText="Sub_name" 
                            SortExpression="Sub_name" />
                        <asp:BoundField DataField="status" HeaderText="status" 
                            SortExpression="status" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView></center>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [Student_id], [Student_Name], [Date], [Timing], [Sub_name], [status] FROM [studentAttendance] WHERE (([Faculty_id] = @Faculty_id) AND ([Date] = @Date) AND ([Timing] = @Timing))">
                    <SelectParameters>
                        <asp:SessionParameter Name="Faculty_id" SessionField="fid" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList9" Name="Date" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList7" Name="Timing" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="right" style="text-align: Center;" colspan="3">
                            &nbsp;</td>
        </tr>
    </table> </center>
</asp:Content>

