<%@ Page Title="" Language="VB" MasterPageFile="~/Admin.master" AutoEventWireup="false" CodeFile="Page3.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label2" runat="server" Text="SubQuery 1"></asp:Label>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
    GridLines="None" style="margin-left: 453px" Width="431px">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
        <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
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
    ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
    SelectCommand="SELECT FName, LName FROM Patient WHERE (P_ID IN (SELECT Patient.P_ID FROM Medical_Record WHERE (Drugs = (SELECT Drugs FROM Medical_Record AS Medical_Record_1 WHERE (Drugs = 'Antiviral medication')))))">
</asp:SqlDataSource>
<br />
<br />
<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" 
    GridLines="None" style="margin-left: 432px" Width="456px">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
        <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
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
<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
    SelectCommand="SELECT FName, LName FROM Patient WHERE (R_ID = (SELECT R_ID FROM Receptionist WHERE (R_ID = 2)))">
</asp:SqlDataSource>
<br />
</asp:Content>

