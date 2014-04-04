<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="contact">
    <!-- Check to see if you are in postback. If not, display the contact form. -->
    <%If Not IsPostBack Then%>
                <h5> Your email address:</h5>
        <asp:TextBox ID="senderAddress" runat="server" Width="289px" style="margin-left: 0px"></asp:TextBox>
                <h5>Your message:</h5>
    <!-- to make your box bigger add rows, columns, and textmode -->
    <asp:TextBox ID="senderMessage" runat="server" Rows="15" Columns="35" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
    <asp:Button ID="sendMail" runat="server" Text="Send" />
    <!-- If you are in postback, display the confirmation label. -->
    <%Else%>
        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>
    <!-- End your 'If' statement. -->
    <%End If%>
    </div>

</asp:Content>

