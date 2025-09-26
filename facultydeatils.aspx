<%@ Page Title="" Language="C#" MasterPageFile="~/registration.master" AutoEventWireup="true" CodeFile="facultydeatils.aspx.cs" Inherits="facultydeatils" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <center>   <table style="font-family: 'book Antiqua'; font-size: 15px" width="650">
    <tr>
        <td 
                
            style="text-align: center; background-color: #FF9999; font-size: 16px; font-family: 'book Antiqua'; font-weight: bold; font-style: italic;">
            Faculty Details<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [facultydetails] WHERE ([Faculty_id] = @Faculty_id)">
                <SelectParameters>
                    <asp:SessionParameter Name="Faculty_id" SessionField="fid" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td 
                
            style="text-align: center; background-color: #FFFFFF; font-size: large;">
         <center>   <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" 
                BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                CellPadding="3" CellSpacing="1">
                <EditItemTemplate>
                    Faculty_id:
                    <asp:TextBox ID="Faculty_idTextBox" runat="server" 
                        Text='<%# Bind("Faculty_id") %>' />
                    <br />
                    Faculty_name:
                    <asp:TextBox ID="Faculty_nameTextBox" runat="server" 
                        Text='<%# Bind("Faculty_name") %>' />
                    <br />
                    phone:
                    <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                    <br />
                    email:
                    <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                    <br />
                    pswd:
                    <asp:TextBox ID="pswdTextBox" runat="server" Text='<%# Bind("pswd") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <InsertItemTemplate>
                    Faculty_id:
                    <asp:TextBox ID="Faculty_idTextBox0" runat="server" 
                        Text='<%# Bind("Faculty_id") %>' />
                    <br />
                    Faculty_name:
                    <asp:TextBox ID="Faculty_nameTextBox0" runat="server" 
                        Text='<%# Bind("Faculty_name") %>' />
                    <br />
                    phone:
                    <asp:TextBox ID="phoneTextBox0" runat="server" Text='<%# Bind("phone") %>' />
                    <br />
                    email:
                    <asp:TextBox ID="emailTextBox0" runat="server" Text='<%# Bind("email") %>' />
                    <br />
                    pswd:
                    <asp:TextBox ID="pswdTextBox0" runat="server" Text='<%# Bind("pswd") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Faculty_id:
                    <asp:Label ID="Faculty_idLabel" runat="server" 
                        Text='<%# Bind("Faculty_id") %>' />
                    <br />
                    Faculty_name:
                    <asp:Label ID="Faculty_nameLabel" runat="server" 
                        Text='<%# Bind("Faculty_name") %>' />
                    <br />
                    phone:
                    <asp:Label ID="phoneLabel" runat="server" Text='<%# Bind("phone") %>' />
                    <br />
                    email:
                    <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                    <br />
                    pswd:
                    <asp:Label ID="pswdLabel" runat="server" Text='<%# Bind("pswd") %>' />
                    <br />

                </ItemTemplate>
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            </asp:FormView></center></td>
    </tr>
    </table></center>
</asp:Content>

