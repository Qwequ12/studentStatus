<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="statusRequest.aspx.cs" Inherits="studentStatus.admin.statusRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../student/gridview.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" CssClass="my-gridview" AutoGenerateColumns="False" DataKeyNames="id,Email" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound" OnRowUpdating="GridView1_RowUpdating">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" Visible="false" SortExpression="id" />
            <asp:BoundField DataField="Fullname" HeaderText="Fullname" SortExpression="Fullname" />
            <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
            <asp:BoundField DataField="Passportid" HeaderText="Passportid" SortExpression="Passportid" Visible="false" />
            <asp:BoundField DataField="Purpose" HeaderText="Purpose" SortExpression="Purpose" />
            <asp:BoundField DataField="HomeAddress" HeaderText="HomeAddress" SortExpression="HomeAddress" Visible="false" />
            <asp:BoundField DataField="Number" HeaderText="Number" SortExpression="Number" />
            <asp:BoundField DataField="Nationality" HeaderText="Nationality" SortExpression="Nationality" />
            <asp:BoundField DataField="University" HeaderText="University" SortExpression="University" />
            <asp:BoundField DataField="DateofBirth" HeaderText="DateofBirth" SortExpression="DateofBirth" Visible="false" />
            <asp:BoundField DataField="covidID" HeaderText="covidID" SortExpression="covidID" Visible="false" />
            <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
            <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" Visible="false" />
            <asp:BoundField DataField="MName" HeaderText="MName" SortExpression="MName" Visible="false" />
            <asp:BoundField DataField="FNumber" HeaderText="FNumber" SortExpression="FNumber" Visible="false" />
            <asp:BoundField DataField="MNumber" HeaderText="MNumber" SortExpression="MNumber" Visible="false" />
            <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
            <asp:BoundField DataField="District" HeaderText="District" SortExpression="District" Visible="false" />
            <asp:BoundField DataField="HouseNumber" HeaderText="HouseNumber" SortExpression="HouseNumber" Visible="false" />
            <asp:BoundField DataField="Years" HeaderText="Years" SortExpression="Years" Visible="false" />
             <asp:TemplateField HeaderText="Status">
            <ItemTemplate>
                 <asp:Label runat="server" ID="lblstatus" Visible="false" Text='<%# Eval("Status") %>'></asp:Label>
                 <asp:Label runat="server" ID="lblconfirm"></asp:Label>
             </ItemTemplate>
                </asp:TemplateField>
             <asp:TemplateField>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Eval("id") %>' ID="lblreqid" Visible="false"></asp:Label>
                    <asp:LinkButton ID="lblprint" runat="server" CommandName="update" Text="Print"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:studentstatus %>" SelectCommand="SELECT [id], [Fullname], [Email], [Passportid], [Purpose], [HomeAddress], [Number], [Nationality], [University], [DateofBirth], [covidID], [Duration], [FName], [MName], [FNumber], [MNumber], [Region], [District], [HouseNumber], [Years], [Status] FROM [adminView]"></asp:SqlDataSource>
</asp:Content>
