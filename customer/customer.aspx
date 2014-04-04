<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="customer.aspx.vb" Inherits="HW7_customer_customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs_GeckoData %>" 
        DeleteCommand="DELETE FROM [Gecko] WHERE [ID] = @ID" 
        InsertCommand="INSERT INTO [Gecko] ([name], [gender], [size], [gecko], [note]) VALUES (@name, @gender, @size, @gecko, @note)" SelectCommand="SELECT * FROM [Gecko] WHERE ([ID] = @ID)" UpdateCommand="UPDATE [Gecko] SET [name] = @name, [gender] = @gender, [size] = @size, [gecko] = @gecko, [note] = @note WHERE [ID] = @ID">
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
<center>
    <h2>Detail View In Customer Version</h2>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" 
        AllowSorting="True"
        CSSClass="gv" 
        pagesize="5" 
        PagerSettings-Position="TopAndBottom" 
        GridLines="None"
        >
        <Columns>
            <asp:BoundField DataField="name" HeaderText="Gecko Name" SortExpression="name" />
            <asp:BoundField DataField="gender" HeaderText="Gecko Gender" SortExpression="gender" />
            <asp:BoundField DataField="size" HeaderText="Gecko Size" SortExpression="size" />
            <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="view.aspx?ID={0}" HeaderText="DetailView" Text="Select" >
            <HeaderStyle ForeColor="Black" />
            </asp:HyperLinkField>
        </Columns>

<PagerSettings Position="TopAndBottom"></PagerSettings>
    </asp:GridView>

</center>
    </asp:Content>

