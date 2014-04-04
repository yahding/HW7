<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="admin.aspx.vb" Inherits="HW7_admin_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs_GeckoData %>" 
        DeleteCommand="DELETE FROM [Gecko] WHERE [ID] = @original_ID AND [name] = @original_name AND [gender] = @original_gender AND [size] = @original_size AND (([gecko] = @original_gecko) OR ([gecko] IS NULL AND @original_gecko IS NULL)) AND (([note] = @original_note) OR ([note] IS NULL AND @original_note IS NULL))" 
        InsertCommand="INSERT INTO [Gecko] ([name], [gender], [size], [gecko], [note]) VALUES (@name, @gender, @size, @gecko, @note)" SelectCommand="SELECT * FROM [Gecko]" UpdateCommand="UPDATE [Gecko] SET [name] = @name, [gender] = @gender, [size] = @size, [gecko] = @gecko, [note] = @note WHERE [ID] = @original_ID AND [name] = @original_name AND [gender] = @original_gender AND [size] = @original_size AND (([gecko] = @original_gecko) OR ([gecko] IS NULL AND @original_gecko IS NULL)) AND (([note] = @original_note) OR ([note] IS NULL AND @original_note IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_gender" Type="String" />
            <asp:Parameter Name="original_size" Type="String" />
            <asp:Parameter Name="original_gecko" Type="Object" />
            <asp:Parameter Name="original_note" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="size" Type="String" />
            <asp:Parameter Name="gecko" Type="Object" />
            <asp:Parameter Name="note" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="size" Type="String" />
            <asp:Parameter Name="gecko" Type="Object" />
            <asp:Parameter Name="note" Type="String" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_gender" Type="String" />
            <asp:Parameter Name="original_size" Type="String" />
            <asp:Parameter Name="original_gecko" Type="Object" />
            <asp:Parameter Name="original_note" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <br />
    <center>   
        <h2> Welcome to Admin Page</h2>
        <br />

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" 
        DataSourceID="SqlDataSource1" Width="500px" CSSClass="gv"
        pagesize="5" PagerSettings-Position="TopAndBottom" GridLines="None">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="Gecko Name" SortExpression="name" />
            <asp:BoundField DataField="gender" HeaderText="Gecko Gender" SortExpression="gender" />
            <asp:BoundField DataField="size" HeaderText="Gecko Size" SortExpression="size" />
            <asp:BoundField DataField="note" HeaderText="Gecko Note" SortExpression="note" />
            <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="edit.aspx?ID={0}" HeaderText="Editing" SortExpression="ID" Text="Select" />
        </Columns>
    </asp:GridView>
    </center>

</asp:Content>

