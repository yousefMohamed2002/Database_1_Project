<%@ Page Title="" Language="VB" MasterPageFile="~/Admin.master" AutoEventWireup="false" CodeFile="Page2.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;
<br />
<asp:Label ID="Label2" runat="server" Text="Max Price Of Medicine "></asp:Label>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" 
    GridLines="None" style="margin-left: 326px" Width="487px">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="Max_Price" 
            HeaderText="Max_Price" ReadOnly="True" 
            SortExpression="Max_Price" />
        <asp:BoundField DataField="M_Name" HeaderText="M_Name" 
            SortExpression="M_Name" />
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
        SelectCommand="SELECT MAX(Price) AS Max_Price, M_Name FROM Medicine GROUP BY M_Name HAVING (MAX(Price) &gt; 5) ORDER BY M_Name">
    </asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource4" runat="server" 
    ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand=" Select Max(StaffNo)  as MIN_Number_Of_Staff, H_Name from Health_Office
  GROUP BY H_Name
  Having Min(StaffNo)&gt;2
ORDER BY H_Name ASC;
"></asp:SqlDataSource>
<br />
<asp:Label ID="Label3" runat="server" 
    Text="Min Number of Staff IN Each Health Office"></asp:Label>
<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" 
    GridLines="None" style="margin-left: 322px" Width="497px">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="MIN_Number_Of_Staff" 
            HeaderText="MIN_Number_Of_Staff" ReadOnly="True" 
            SortExpression="MIN_Number_Of_Staff" />
        <asp:BoundField DataField="H_Name" HeaderText="H_Name" 
            SortExpression="H_Name" />
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
<asp:SqlDataSource ID="SqlDataSource3" runat="server" 
    ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand=" Select Min(StaffNo)  as MIN_Number_Of_Staff, H_Name from Health_Office
  GROUP BY H_Name
  Having Min(StaffNo)&gt;2
ORDER BY H_Name ASC;
"></asp:SqlDataSource>
<br />
<asp:Label ID="Label4" runat="server" Text="Age From BOD"></asp:Label>
<asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" DataKeyNames="P_ID" DataSourceID="SqlDataSource1" 
    ForeColor="#333333" GridLines="None" style="margin-left: 304px" Width="532px">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="P_ID" HeaderText="P_ID" ReadOnly="True" 
            SortExpression="P_ID" />
        <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
        <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
        <asp:BoundField DataField="Gender" HeaderText="Gender" 
            SortExpression="Gender" />
        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
        <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
        <asp:BoundField DataField="R_ID" HeaderText="R_ID" SortExpression="R_ID" />
        <asp:BoundField DataField="currentdate" HeaderText="currentdate" 
            ReadOnly="True" SortExpression="currentdate" />
        <asp:BoundField DataField="AGE" HeaderText="AGE" ReadOnly="True" 
            SortExpression="AGE" />
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
    SelectCommand="SELECT P_ID, FName, LName, Gender, DOB, Notes, R_ID, GETDATE() AS currentdate, DATEDIFF(YY, DOB, GETDATE()) AS AGE FROM Patient ORDER BY AGE">
</asp:SqlDataSource>
</asp:Content>

