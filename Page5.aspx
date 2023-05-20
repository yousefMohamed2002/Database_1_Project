<%@ Page Title="" Language="VB" MasterPageFile="~/Admin.master" AutoEventWireup="false" CodeFile="Page5.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label2" runat="server" Text="Join Bettwen Doctor and Med_record"></asp:Label>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" DataKeyNames="MR_ID,Expr1" DataSourceID="SqlDataSource1" 
    ForeColor="#333333" GridLines="None" style="margin-left: 183px" Width="895px">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="MR_ID" HeaderText="MR_ID" ReadOnly="True" 
            SortExpression="MR_ID" />
        <asp:BoundField DataField="MR_Date" HeaderText="MR_Date" 
            SortExpression="MR_Date" />
        <asp:BoundField DataField="Diagnosis" HeaderText="Diagnosis" 
            SortExpression="Diagnosis" />
        <asp:BoundField DataField="Drugs" HeaderText="Drugs" SortExpression="Drugs" />
        <asp:BoundField DataField="MR_References" HeaderText="MR_References" 
            SortExpression="MR_References" />
        <asp:BoundField DataField="D_ID" HeaderText="D_ID" SortExpression="D_ID" />
        <asp:BoundField DataField="R_ID" HeaderText="R_ID" SortExpression="R_ID" />
        <asp:BoundField DataField="Expr1" HeaderText="Expr1" ReadOnly="True" 
            SortExpression="Expr1" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
    SelectCommand="SELECT Medical_Record.MR_ID, Medical_Record.MR_Date, Medical_Record.Diagnosis, Medical_Record.Drugs, Medical_Record.MR_References, Medical_Record.D_ID, Medical_Record.R_ID, Doctor.D_ID AS Expr1, Doctor.F_Name, Doctor.L_Name, Doctor.DOB, Doctor.Specialized, Doctor.Supervise_D_ID FROM Medical_Record INNER JOIN Doctor ON Medical_Record.D_ID = Doctor.D_ID">
</asp:SqlDataSource>
<br />
<asp:Label ID="Label3" runat="server" 
    Text="Left join between Rec_Medical_record"></asp:Label>
<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" 
    GridLines="None" style="margin-left: 209px" Width="867px">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="R_ID" HeaderText="R_ID" SortExpression="R_ID" />
        <asp:BoundField DataField="F_Name" HeaderText="F_Name" 
            SortExpression="F_Name" />
        <asp:BoundField DataField="L_Name" HeaderText="L_Name" 
            SortExpression="L_Name" />
        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
        <asp:BoundField DataField="Gender" HeaderText="Gender" 
            SortExpression="Gender" />
        <asp:BoundField DataField="position" HeaderText="position" 
            SortExpression="position" />
        <asp:BoundField DataField="MR_ID" HeaderText="MR_ID" SortExpression="MR_ID" />
        <asp:BoundField DataField="MR_Date" HeaderText="MR_Date" 
            SortExpression="MR_Date" />
        <asp:BoundField DataField="Diagnosis" HeaderText="Diagnosis" 
            SortExpression="Diagnosis" />
        <asp:BoundField DataField="Drugs" HeaderText="Drugs" SortExpression="Drugs" />
        <asp:BoundField DataField="MR_References" HeaderText="MR_References" 
            SortExpression="MR_References" />
        <asp:BoundField DataField="D_ID" HeaderText="D_ID" SortExpression="D_ID" />
        <asp:BoundField DataField="Expr1" HeaderText="Expr1" SortExpression="Expr1" />
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
    SelectCommand="SELECT Receptionist.R_ID, Receptionist.F_Name, Receptionist.L_Name, Receptionist.DOB, Receptionist.Gender, Receptionist.position, Medical_Record.MR_ID, Medical_Record.MR_Date, Medical_Record.Diagnosis, Medical_Record.Drugs, Medical_Record.MR_References, Medical_Record.D_ID, Medical_Record.R_ID AS Expr1 FROM Receptionist LEFT OUTER JOIN Medical_Record ON Receptionist.R_ID = Medical_Record.R_ID">
</asp:SqlDataSource>
</asp:Content>

