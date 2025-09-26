<%@ Page Title="" Language="C#" MasterPageFile="~/studentmaf.master" AutoEventWireup="true" CodeFile="Copy of facultydeatils.aspx.cs" Inherits="facultydeatils" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style3
        {
            width: 200px;
            height: 36px;
        }
        .style4
        {
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td 
                
            style="text-align: center; background-color: #FF9999; font-size: 16px; font-family: 'book Antiqua'; font-weight: bold; font-style: italic;">
       <center>     <table style="background-color: #FFFFFF" width="650">
                    <tr>
                        <td align="right" 
                            style="text-align: center; background-color: #FF9999; font-size: 16px; font-family: 'book Antiqua'; font-weight: bold; font-style: italic;" 
                            colspan="3">
                                Attendance Report</td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                                &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" 
                            style="width: 200px; font-family: 'book Antiqua'; font-size: 14px;">
                                Select Subject id</td>
                        <td height="40">
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                    DataSourceID="SqlDataSource2" DataTextField="Sub_id" DataValueField="Sub_id" 
                                    Width="200px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                
                                SelectCommand="SELECT DISTINCT Sub_id FROM studentAttendance WHERE (Student_id = @Student_id)">
                                <SelectParameters>
                                    <asp:SessionParameter Name="Student_id" SessionField="sid" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td>
                                &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" class="style3" 
                            style="font-family: 'book Antiqua'; font-size: 14px; width: 200px;">
                                    Enter From Date
                                </td>
                        <td style="font-family: 'bookman Old Style'; font-size: 14px; font-weight: normal;" 
                            height="40">
                            <asp:TextBox ID="TextBox1" runat="server" Width="195px" ReadOnly="True"></asp:TextBox>
                            <br />
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" 
                                ImageUrl="~/image/caleder.png" onclick="ImageButton1_Click" Width="20px" />
                            <asp:Calendar ID="Calendar1" runat="server" 
                                onselectionchanged="Calendar1_SelectionChanged" Visible="False">
                            </asp:Calendar>
                        </td>
                        <td class="style4">
                                    </td>
                    </tr>
                    <tr>
                        <td align="right" class="style3" 
                            style="font-family: 'book Antiqua'; font-size: 14px; width: 200px;">
                                    Enter To Date </td>
                        <td style="font-family: 'bookman Old Style'; font-size: 14px; font-weight: normal;" 
                            height="40">
                            <asp:TextBox ID="TextBox2" runat="server" Width="195px" AutoPostBack="True" 
                                ReadOnly="True"></asp:TextBox>
                            <br />
                            <asp:ImageButton ID="ImageButton2" runat="server" Height="20px" 
                                ImageUrl="~/image/caleder.png" onclick="ImageButton2_Click" Width="20px" />
                            <br />
                            <asp:Calendar ID="Calendar2" runat="server" 
                                onselectionchanged="Calendar2_SelectionChanged" Visible="False">
                            </asp:Calendar>
                            <br />
                        </td>
                        <td class="style4">
                                    &nbsp;</td>
                    </tr>
                    <tr>
                       <center> <td align="right" colspan="3" 
                            style="font-family: 'book Antiqua'; font-size: 14px; width: 200px;">
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                                GridLines="None" Width="600px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="Sub_id" HeaderText="Sub_id" 
                                        SortExpression="Sub_id" />
                                    <asp:BoundField DataField="Sub_name" HeaderText="Sub_name" 
                                        SortExpression="Sub_name" />
                                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                    <asp:BoundField DataField="status" HeaderText="Status" 
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
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                
                                
                                
                                SelectCommand="SELECT Student_id, Student_Name, Sub_id, Sub_name, status, Date FROM studentAttendance WHERE (Date BETWEEN @d1 AND @d2) AND (Sub_id = @Sub_id) ORDER BY Date">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="d1" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="TextBox2" Name="d2" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="DropDownList1" Name="Sub_id" 
                                        PropertyName="SelectedValue" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td></center>
                    </tr>
                    <tr>
                        <td align="right" style="text-align: Center;" colspan="3">
                            <asp:Button ID="Button1" runat="server" Text="Submit" Visible="False" />
                            &nbsp;<asp:Label ID="Label3" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table> </center>
        </td>
    </tr>
    <tr>
        <td 
                
            style="text-align: center; background-color: #FFFFFF; font-size: large;">
            <br />
        </td>
    </tr>
    </table>
</asp:Content>

