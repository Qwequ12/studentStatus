<%@ Page Title="" Language="C#" MasterPageFile="~/student/Site1.Master" AutoEventWireup="true" CodeBehind="Status.aspx.cs" Inherits="studentStatus.student.Status" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="gridview.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" EmptyDataText="<b><font color=#FF0000>No Records Found</font></b>" CssClass="my-gridview" AutoGenerateColumns="False" DataKeyNames="Email" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
        <Columns>
            <asp:BoundField DataField="Fullname" HeaderText="Fullname" SortExpression="Fullname" />
            <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" Visible="false" />
            <asp:BoundField DataField="Passportid" HeaderText="Passportid" SortExpression="Passportid" />
            <asp:BoundField DataField="Purpose" HeaderText="Purpose" SortExpression="Purpose" />
            <asp:BoundField DataField="Number" HeaderText="Number" SortExpression="Number" />
            <asp:BoundField DataField="Nationality" HeaderText="Nationality" SortExpression="Nationality" />
            <asp:BoundField DataField="University" HeaderText="University" SortExpression="University" />
            <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
            <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
            <asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
            <asp:BoundField DataField="HouseNumber" HeaderText="HouseNumber" SortExpression="HouseNumber" />
            <asp:BoundField DataField="Years" HeaderText="Years" SortExpression="Years" />
            <asp:TemplateField HeaderText="Status">
            <ItemTemplate>
                 <asp:Label runat="server" ID="lblstatus" Visible="false" Text='<%# Eval("Status") %>'></asp:Label>
                 <asp:Label runat="server" ID="lblconfirm"></asp:Label>
             </ItemTemplate>
                </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:studentstatusConnectionString %>" SelectCommand="SELECT        dbo.student.Fullname, dbo.student.Email, dbo.ResidenceRequest.Passportid, dbo.ResidenceRequest.Purpose, dbo.ResidenceRequest.Number, dbo.student.Nationality, dbo.student.University, dbo.ResidenceRequest.Duration, 
                         dbo.ResidenceRequest.Region, dbo.ResidenceRequest.District, dbo.ResidenceRequest.HouseNumber, dbo.ResidenceRequest.Years,dbo.ResidenceRequest.Status

FROM            dbo.ResidenceRequest INNER JOIN
                         dbo.student ON dbo.ResidenceRequest.Email = dbo.student.Email
WHERE        (dbo.student.Email = @Email)">
        <SelectParameters>
            <asp:SessionParameter Name="Email" SessionField="email" />
        </SelectParameters>
    </asp:SqlDataSource>
    <div style="padding-top:50px">

    </div>
</asp:Content>
