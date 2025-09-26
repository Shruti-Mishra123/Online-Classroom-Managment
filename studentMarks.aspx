<%@ Page Title="" Language="C#" MasterPageFile="~/studentmaf.master" AutoEventWireup="true" CodeFile="studentMarks.aspx.cs" Inherits="facultydeatils" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <center>  <table class="style1">
    <tr>
        <td 
                
            style="text-align: center; background-color: #FF9999; font-size: 16px; font-family: 'book Antiqua'; font-weight: bold; font-style: italic;">
            <table class="style1" style="background-color: #FFFFFF" width="650">
                    <tr>
                        <td align="right" 
                            style="text-align: center; background-color: #FF9999; font-size: 16px; font-family: 'book Antiqua'; font-weight: bold; font-style: italic;" 
                            colspan="3">
                                Marks Report</td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                                &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 200px">
                                Select Subject id</td>
                        <td>
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
                        <td align="right" colspan="3">
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                                GridLines="None" Width="600px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="Sub_id" HeaderText="Sub_id" 
                                        SortExpression="Sub_id" />
                                    <asp:BoundField DataField="Sub_name" HeaderText="Sub_name" 
                                        SortExpression="Sub_name" />
                                    <asp:BoundField DataField="Marks" HeaderText="Marks" 
                                        SortExpression="Marks" />
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
                                
                                
                                
                                
                                SelectCommand="SELECT [Sub_id], [Sub_name], [Marks] FROM [feedmarks] WHERE (([Student_id] = @Student_id) AND ([Sub_id] = @Sub_id))">
                                <SelectParameters>
                                    <asp:SessionParameter Name="Student_id" SessionField="sid" Type="String" />
                                    <asp:ControlParameter ControlID="DropDownList1" Name="Sub_id" 
                                        PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="text-align: Center;" colspan="3">
                            <asp:Button ID="Button1" runat="server" Text="Submit" Visible="False" />
                            &nbsp;<asp:Label ID="Label3" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="text-align: Center;" colspan="3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="text-align: Center;" colspan="3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="text-align: Center;" colspan="3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="text-align: Center;" colspan="3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="text-align: Center;" colspan="3">
                            &nbsp;</td>
                    </tr>
                </table>
        </td>
    </tr>
    </table> </center>
</asp:Content>

