<%@ Page Title="" Language="C#" MasterPageFile="~/registration.master" AutoEventWireup="true" CodeFile="studentdailyattendence.aspx.cs" Inherits="Default2" %>

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
    <table style="width:100%;">
        <tr>
            <td style="width: 200px">
                    &nbsp;</td>
            <td style="width: 860px">
                <table class="style1">
                    <tr>
                        <td align="right" 
                            style="text-align: center; background-color: #FF9999; font-size: 16px; font-family: 'book Antiqua'; font-weight: bold; font-style: italic;" 
                            colspan="3">
                                Student Attendance Feeding 
                                </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                                &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 200px">
                                Select Subject id</td>
                        <td height="40">
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                                    DataSourceID="SqlDataSource2" DataTextField="Sub_id" DataValueField="Sub_id" 
                                    Width="200px">
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
                        <td align="right" class="style3">
                                    Enter Date
                                </td>
                        <td class="style4" height="40">
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
                        <td align="right" class="style3">
                                    Timing</td>
                        <td class="style4" height="40">
                            <asp:DropDownList ID="DropDownList7" runat="server" Width="200px">
                                <asp:ListItem>09:00-10:00 AM</asp:ListItem>
                                <asp:ListItem>10:00-11:00 AM</asp:ListItem>
                                <asp:ListItem Value="11-12 PM">11:00-12:00 PM</asp:ListItem>
                                <asp:ListItem>01:00-02:00 PM</asp:ListItem>
                                <asp:ListItem>02:00-03:00 PM</asp:ListItem>
                                <asp:ListItem>03:00-04:00 PM</asp:ListItem>
                            </asp:DropDownList>
                        &nbsp;</td>
                        <td class="style4">
                                    </td>
                    </tr>
                    <tr>
                        <td align="right" colspan="3" 
                            style="font-family: 'book Antiqua'; font-size: 14px">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" DataSourceID="SqlDataSource6" ForeColor="#333333" 
                                GridLines="None" Width="600px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="Student_id" HeaderText="Student_id" 
                                        SortExpression="Student_id" />
                                    <asp:BoundField DataField="Student_Name" HeaderText="Student_Name" 
                                        SortExpression="Student_Name" />
                                    <asp:BoundField DataField="Sub_id" HeaderText="Sub_id" 
                                        SortExpression="Sub_id" />
                                    <asp:BoundField DataField="Sub_name" HeaderText="Sub_name" 
                                        SortExpression="Sub_name" />
                                    <asp:BoundField DataField="Faculty_id" HeaderText="Faculty_id" 
                                        SortExpression="Faculty_id" />
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Student_id") %>' 
                                                Visible="False"></asp:Label>
                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
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
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                
                                
                                SelectCommand="SELECT studentdeatils.Student_id, studentdeatils.Student_Name, subdetails.Sub_id, subdetails.Sub_name, subjectaloted.Faculty_id FROM studentdeatils INNER JOIN subdetails ON studentdeatils.Branch = subdetails.branch AND studentdeatils.sem = subdetails.semester INNER JOIN subjectaloted ON subdetails.Sub_id = subjectaloted.Sub_id WHERE (subdetails.Sub_id = @sub_id) AND (subjectaloted.Faculty_id = @Faculty_id)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList2" Name="sub_id" 
                                        PropertyName="SelectedValue" />
                                    <asp:SessionParameter Name="Faculty_id" SessionField="fid" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="text-align: Center;" colspan="3">
                            &nbsp;<asp:Label ID="Label3" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="text-align: Center;" colspan="3">
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                        </td>
                    </tr>
                </table>
            </td>
            <td style="width: 200px">
                    &nbsp;</td>
        </tr>
    </table>
</asp:Content>

