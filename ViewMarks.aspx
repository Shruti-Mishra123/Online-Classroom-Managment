<%@ Page Title="" Language="C#" MasterPageFile="~/registration.master" AutoEventWireup="true" CodeFile="ViewMarks.aspx.cs" Inherits="Faculty_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <center> <table class="style1" width="650">
        <tr>
            <td class="style2">
                                &nbsp;</td>
            <td style="text-align: right">
                &nbsp;</td>
            <td>
                                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                                &nbsp;</td>
            <td style="text-align: center; background-color: #FF9999; font-size: 16px; font-family: 'book Antiqua'; font-weight: bold; font-style: italic;">
                                View Student Marks</td>
            <td>
                                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                                &nbsp;</td>
            <td style="text-align: center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Choose Subject 
                                ID :
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                                    DataSourceID="SqlDataSource3" DataTextField="Sub_id" DataValueField="Sub_id" 
                                    Width="200px">
                            </asp:DropDownList>
                            &nbsp;<asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    
                                
                    SelectCommand="SELECT DISTINCT [Sub_id] FROM [feedmarks]">
                            </asp:SqlDataSource>
                        </td>
            <td>
                                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                                &nbsp;</td>
            <td>
                                &nbsp;</td>
            <td>
                                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                                &nbsp;</td>
            <td style="font-family: 'book Antiqua'; font-size: 14px">
              <center>  
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                                    GridLines="None" Width="600px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Student_Name" HeaderText="Student_Name" 
                                            SortExpression="Student_Name" />
                        <asp:BoundField DataField="Student_id" HeaderText="Student_id" 
                                            SortExpression="Student_id" />
                        <asp:BoundField DataField="Sub_name" HeaderText="Sub_name" 
                                            SortExpression="Sub_name" />
                        <asp:BoundField DataField="Sub_id" HeaderText="Sub_id" 
                                            SortExpression="Sub_id" />
                        <asp:BoundField DataField="Marks" HeaderText="Marks" SortExpression="Marks" />
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
                      
                      SelectCommand="SELECT * FROM [feedmarks] WHERE ([Sub_id] = @Sub_id) ORDER BY [Sub_id], [Student_id]">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="DropDownList2" Name="Sub_id" 
                              PropertyName="SelectedValue" Type="String" />
                      </SelectParameters>
                  </asp:SqlDataSource>
                </center>
            </td>
            <td>
                                &nbsp;</td>
        </tr>
    </table> </center>
</asp:Content>

