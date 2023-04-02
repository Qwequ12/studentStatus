<%@ Page Title="" Language="C#" MasterPageFile="~/student/Site1.Master" AutoEventWireup="true" CodeBehind="Renew.aspx.cs" Inherits="studentStatus.student.Renew" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="gridview.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" CssClass="my-gridview" EmptyDataText="<b><font color=#FF0000>No Records Found</font></b>" AutoGenerateColumns="False" DataKeyNames="Email" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="false" />
            <asp:BoundField DataField="Passportid" HeaderText="Passportid" SortExpression="Passportid" />
            <asp:BoundField DataField="Purpose" HeaderText="Purpose" SortExpression="Purpose" />
            <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
            <asp:BoundField DataField="Fullname" HeaderText="Fullname" SortExpression="Fullname" />
            <asp:BoundField DataField="University" HeaderText="University" SortExpression="University" />
            <asp:BoundField DataField="Nationality" HeaderText="Nationality" SortExpression="Nationality" />
            <asp:BoundField DataField="Years" HeaderText="Years" SortExpression="Years" />
            <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
            <asp:TemplateField HeaderText="Status">
            <ItemTemplate>
                 <asp:Label runat="server" ID="lblstatus" Visible="false" Text='<%# Eval("Status") %>'></asp:Label>
                 <asp:Label runat="server" ID="lblconfirm"></asp:Label>
             </ItemTemplate>
                </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:studentstatusConnectionString %>" SelectCommand="SELECT        dbo.ResidenceRequest.id, dbo.ResidenceRequest.Passportid, dbo.ResidenceRequest.Purpose, dbo.student.Email, dbo.student.Fullname, dbo.student.University, dbo.student.Nationality, dbo.ResidenceRequest.Years, dbo.ResidenceRequest.Duration,dbo.ResidenceRequest.Status

FROM            dbo.ResidenceRequest INNER JOIN
                         dbo.student ON dbo.ResidenceRequest.Email = dbo.student.Email
WHERE        (dbo.ResidenceRequest.Duration = 'Temporary')"></asp:SqlDataSource>
</asp:Content>
