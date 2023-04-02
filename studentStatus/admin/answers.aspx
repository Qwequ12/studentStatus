<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="answers.aspx.cs" Inherits="studentStatus.admin.answers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../student/gridview.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" CssClass="my-gridview" EmptyDataText="<b><font color=#FF0000>No Records Found</font></b>" AutoGenerateColumns="False" DataKeyNames="id,Email" DataSourceID="SqlDataSource1" OnRowUpdating="GridView1_RowUpdating">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" Visible="false" />
            <asp:BoundField DataField="Fullname" HeaderText="Fullname" SortExpression="Fullname" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Issue" HeaderText="Issue" SortExpression="Issue" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Eval("id") %>' ID="lblid" Visible="false"></asp:Label>
                    <asp:LinkButton ID="lblprint" runat="server" CommandName="update" Text="Answer"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:studentstatus %>" SelectCommand="SELECT [id], [Fullname], [Email], [Issue],[Answer] FROM [admincomplainview]"></asp:SqlDataSource>
</asp:Content>
