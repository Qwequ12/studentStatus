<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="info.aspx.cs" Inherits="studentStatus.admin.info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../student/gridview.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" CssClass="my-gridview"></asp:GridView>
</asp:Content>
