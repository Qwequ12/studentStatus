<%@ Page Title="" Language="C#" MasterPageFile="~/student/Site1.Master" AutoEventWireup="true" CodeBehind="complain.aspx.cs" Inherits="studentStatus.student.complain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="gridview.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">  
     <p class="fs-5 fw-medium text-primary" style="padding-left:40px">Make a Complain</p>
    <div style="padding:40px" class="row g-3">
            <div class="form-floating">
                <asp:TextBox ID="txtissue" runat="server" CssClass="form-control" TextMode="MultiLine" placeholder="Complain" Height="174px" Width="1074px"></asp:TextBox>
                <label for="txtissue"> Complain</label>
            </div> 
    </div>
     <div align="center" style="padding-block:50px" class="row-g3">
        <div class="col-md-6">
            <asp:Button ID="submit" runat="server" CssClass="btn btn-primary w-30 py-3" Text="Submit" OnClick="submit_Click" />
        </div>
    </div>
    <div align="center" style="padding-block:50px">
        <asp:Label ID="ActionStatus" runat="server" CssClass="Important" ForeColor="#33CC33"></asp:Label>
    </div>
    <p class="fs-5 fw-medium text-primary" style="padding-left:40px">Solutions</p>
    <div>
        <asp:GridView ID="GridView1" runat="server" CssClass="my-gridview" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="<b><font color=#FF0000>No Records Found</font></b>">
            <Columns>
                <asp:BoundField DataField="Fullname" HeaderText="Fullname" SortExpression="Fullname" />
                <asp:BoundField DataField="Issue" HeaderText="Issue" SortExpression="Issue" />
                <asp:BoundField DataField="Answer" HeaderText="Answer" SortExpression="Answer" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" Visible="false" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:studentstatus %>" SelectCommand="SELECT [Fullname], [Issue], [Answer], [Email] FROM [CompalinView]" ></asp:SqlDataSource>
    </div>
</asp:Content>
