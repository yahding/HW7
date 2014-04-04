<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="add.aspx.vb" Inherits="admin_add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Add an New Gecko
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs_GeckoData %>" 
        DeleteCommand="DELETE FROM [Gecko] WHERE [ID] = @ID" 
        InsertCommand="INSERT INTO [Gecko] ([name], [gender], [size], [gecko], [note]) VALUES (@name, @gender, @size, @gecko, @note)" 
        SelectCommand="SELECT * FROM [Gecko] WHERE ([ID] = @ID)" UpdateCommand="UPDATE [Gecko] SET [name] = @name, [gender] = @gender, [size] = @size, [gecko] = @gecko, [note] = @note WHERE [ID] = @ID">
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
        <SelectParameters>
            <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
        </SelectParameters>
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

    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="375px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <Fields>
            <asp:BoundField DataField="name" HeaderText="Gecko Name" SortExpression="name" />
            <asp:BoundField DataField="gender" HeaderText="Gecko Gender" SortExpression="gender" />
            <asp:BoundField DataField="size" HeaderText="Size" SortExpression="size" />
            <asp:BoundField DataField="note" HeaderText="Note" SortExpression="note" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>

</asp:Content>

