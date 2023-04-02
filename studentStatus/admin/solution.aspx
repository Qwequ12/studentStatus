<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="solution.aspx.cs" Inherits="studentStatus.admin.solution" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="fs-5 fw-medium text-primary" style="padding-left:40px">Make a Complain</p>
    <div style="padding:40px" class="row g-3">
            <div class="form-floating">
                <asp:TextBox ID="txtissue" runat="server" Enabled="false" CssClass="form-control" TextMode="MultiLine" placeholder="Complain" Height="174px" Width="1074px"></asp:TextBox>
                <label for="txtissue"> Complain</label>
            </div> 
    </div>
    <div style="padding:40px" class="row g-3">
            <div class="form-floating">
                <asp:TextBox ID="txtanswer" runat="server" CssClass="form-control" TextMode="MultiLine" placeholder="Answer" Height="174px" Width="1074px"></asp:TextBox>
                <label for="txtissue"> Answer</label>
            </div> 
    </div>
     <div align="center" style="padding-block:50px" class="row-g3">
        <div class="col-md-6">
            <asp:Button ID="submit" runat="server" CssClass="btn btn-primary w-30 py-3" Text="Submit" OnClick="submit_Click" />
        </div>
    </div>
    <asp:TextBox ID="TextBox1" runat="server" Visible="false"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" Visible="false"></asp:TextBox>
</asp:Content>
