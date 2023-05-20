<%@ Page Title="" Language="VB" MasterPageFile="~/Admin.master" AutoEventWireup="false" CodeFile="Page1.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Text="Doctor"></asp:Label>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="D_ID" DataSourceID="SqlDataSource6" style="margin-left: 448px" 
        Width="546px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="D_ID" HeaderText="D_ID" ReadOnly="True" 
                SortExpression="D_ID" />
            <asp:BoundField DataField="F_Name" HeaderText="F_Name" 
                SortExpression="F_Name" />
            <asp:BoundField DataField="L_Name" HeaderText="L_Name" 
                SortExpression="L_Name" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:BoundField DataField="Specialized" HeaderText="Specialized" 
                SortExpression="Specialized" />
            <asp:BoundField DataField="Supervise_D_ID" HeaderText="Supervise_D_ID" 
                SortExpression="Supervise_D_ID" />
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
        ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
        SelectCommand="SELECT D_ID, F_Name, L_Name, DOB, Specialized, Supervise_D_ID FROM Doctor WHERE (D_ID BETWEEN 1 AND 10) ORDER BY F_Name, L_Name">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
        SelectCommand="SELECT * FROM [Doctor]"></asp:SqlDataSource>
</p>
<p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="Receptionist"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" Width="553px" 
        AutoGenerateColumns="False" DataKeyNames="R_ID" DataSourceID="SqlDataSource9" 
        style="margin-left: 441px" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="R_ID" HeaderText="R_ID" ReadOnly="True" 
                SortExpression="R_ID" />
            <asp:BoundField DataField="F_Name" HeaderText="F_Name" 
                SortExpression="F_Name" />
            <asp:BoundField DataField="L_Name" HeaderText="L_Name" 
                SortExpression="L_Name" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                SortExpression="Gender" />
            <asp:BoundField DataField="position" HeaderText="position" 
                SortExpression="position" />
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
    <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
        ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
        SelectCommand="SELECT R_ID, F_Name, L_Name, DOB, Gender, position FROM Receptionist WHERE (R_ID BETWEEN 1 AND 5) ORDER BY F_Name, L_Name DESC">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
        ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
        SelectCommand="SELECT D_ID, F_Name, L_Name, DOB, Specialized, Supervise_D_ID FROM Doctor WHERE (D_ID BETWEEN 1 AND 5) ORDER BY F_Name, L_Name DESC">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:projectConnectionString2 %>" 
        SelectCommand="SELECT * FROM [Receptionist]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
</p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="Label3" runat="server" Text="Medicine"></asp:Label>
<asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="Medicine_Code" DataSourceID="SqlDataSource10" 
    style="text-align: center; margin-left: 359px" Width="708px" 
    CellPadding="4" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="Medicine_Code" HeaderText="Medicine_Code" 
            ReadOnly="True" SortExpression="Medicine_Code" />
        <asp:BoundField DataField="M_Name" HeaderText="M_Name" 
            SortExpression="M_Name" />
        <asp:BoundField DataField="C_Name" HeaderText="C_Name" 
            SortExpression="C_Name" />
        <asp:BoundField DataField="ProductionDate" HeaderText="ProductionDate" 
            SortExpression="ProductionDate" />
        <asp:BoundField DataField="ExpirationDate" HeaderText="ExpirationDate" 
            SortExpression="ExpirationDate" />
        <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
            SortExpression="Quantity" />
        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
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
<asp:SqlDataSource ID="SqlDataSource10" runat="server" 
    ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
    SelectCommand="select  * from Medicine  order by C_NAME DESC;">
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource8" runat="server"></asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource5" runat="server" 
    ConnectionString="<%$ ConnectionStrings:projectConnectionString2 %>" 
    SelectCommand="SELECT * FROM [Medicine]"></asp:SqlDataSource>
<p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</asp:Content>

