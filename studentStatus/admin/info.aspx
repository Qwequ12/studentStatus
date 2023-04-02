<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="info.aspx.cs" Inherits="studentStatus.admin.info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../student/gridview.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" CssClass="my-gridview" AutoGenerateColumns="False" DataKeyNames="Email" EmptyDataText="<b><font color=#FF0000>No Records Found</font></b>" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Fullname" HeaderText="Fullname" SortExpression="Fullname" />
            <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
            <asp:BoundField DataField="Nationality" HeaderText="Nationality" SortExpression="Nationality" />
            <asp:BoundField DataField="University" HeaderText="University" SortExpression="University" />
            <asp:BoundField DataField="DateofBirth" HeaderText="Date of Birth" SortExpression="DateofBirth" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:studentstatus %>" SelectCommand="SELECT [Fullname], [Email], [Nationality], [University], [DateofBirth] FROM [student]"></asp:SqlDataSource>
</asp:Content>
