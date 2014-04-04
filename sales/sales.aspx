<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="sales.aspx.vb" Inherits="HW7_sales_sales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlGeckoSource" runat="server" ConnectionString="<%$ ConnectionStrings:cs_GeckoData %>" DeleteCommand="DELETE FROM [Gecko] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Gecko] ([name], [gender], [size], [gecko], [note]) VALUES (@name, @gender, @size, @gecko, @note)" SelectCommand="SELECT * FROM [Gecko]" UpdateCommand="UPDATE [Gecko] SET [name] = @name, [gender] = @gender, [size] = @size, [gecko] = @gecko, [note] = @note WHERE [ID] = @ID">
    <DeleteParameters>
        <asp:Parameter Name="ID" Type="Int32" />
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
        <asp:Parameter Name="ID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
    <br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlGeckoSource" Width="450px" pagesize="5" PagerSettings-Position="TopAndBottom">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="Gecko Name" SortExpression="name" />
            <asp:BoundField DataField="gender" HeaderText="Gecko Gender" SortExpression="gender" />
            <asp:BoundField DataField="size" HeaderText="Gecko Size" SortExpression="size" />
            <asp:BoundField DataField="note" HeaderText="Note" SortExpression="note" />
        </Columns>

<PagerSettings Position="TopAndBottom"></PagerSettings>
    </asp:GridView>
    <br />

</asp:Content>

