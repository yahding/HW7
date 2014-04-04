<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="view.aspx.vb" Inherits="HW7_customer_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_GeckoData %>" SelectCommand="SELECT * FROM [Gecko] WHERE ([ID] = @ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <center>

    <h2>View Details</h2>
        <br />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="375px" 
        AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ID" 
         CSSClass="cc" 
            Headerstyle-CssClass="ccheader"
            FieldHeaderStyle-CssClass="ccfieldheader"
            ItemStyle-CssClass="ccitem"
            PagerStyle-CssClass="ccpager"
            CommandRowStyle-CssClass="cccommand"
            AlternatingRowStyle-CssClass="alt" 
            AlternatingColumnStyle-CssClass="col"
        DataSourceID="SqlDataSource1">
        <Fields>
            <asp:DynamicField DataField="ID" HeaderText="ID" />
            <asp:BoundField DataField="name" HeaderText="Gecko Name" SortExpression="name" />
            <asp:BoundField DataField="gender" HeaderText="Gecko Gender" SortExpression="gender" />
            <asp:BoundField DataField="size" HeaderText="Gecko Size" SortExpression="size" />
            <asp:BoundField DataField="note" HeaderText="Note" SortExpression="note" />
        </Fields>
    </asp:DetailsView>
    </center>
</asp:Content>

