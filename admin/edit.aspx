<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="edit.aspx.vb" Inherits="HW7_admin_edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

Editing Gecko's Information 

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
    <center>
        <h2>Editing Section</h2>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="375px" AllowPaging="True" 
            CSSClass="cc" 
            Headerstyle-CssClass="ccheader"
            FieldHeaderStyle-CssClass="ccfieldheader"
            ItemStyle-CssClass="ccitem"
            PagerStyle-CssClass="ccpager"
            CommandRowStyle-CssClass="cccommand"
            AlternatingRowStyle-CssClass="alt" 
            AlternatingColumnStyle-CssClass="col"
        AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" DefaultMode="Edit">
        <Fields>
            <asp:BoundField DataField="ID" HeaderText="Gecko ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="name" HeaderText="Gecko Name" SortExpression="name" />
            <asp:BoundField DataField="gender" HeaderText="Gecko Gender" SortExpression="gender" />
            <asp:BoundField DataField="size" HeaderText="Gecko Size" SortExpression="size" />
            <asp:BoundField DataField="note" HeaderText="Note" SortExpression="note" />
            <asp:DynamicField DataField="gecko" HeaderText="Gecko Image" />
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
        </Fields>
</asp:DetailsView>
</center>
</asp:Content>

