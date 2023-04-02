<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="AcceptRequest.aspx.cs" Inherits="studentStatus.admin.AcceptRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="fs-5 fw-medium text-primary" style="padding-left:40px">About Your Self</p>
    <div class="row g-3" style="padding:40px">
        <div class="col-md-6">
            <div class="form-floating">
                <asp:TextBox ID="txtpassortid" runat="server" Enabled="false" CssClass="form-control" ></asp:TextBox>
            <label for="txtpassortid">Passport Id</label>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-floating">
                <asp:TextBox ID="txtpurpose" runat="server" Enabled="false" CssClass="form-control" ></asp:TextBox>
                <label for="drppurpose">Purpose</label>
            </div>
        </div>
    </div>
    <div class="row g-3" style="padding:40px">
        <div class="col-md-6">
            <div class="form-floating">
                <asp:TextBox ID="txthomeaddress" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                <label for="txthomeaddress">Home Address</label>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-floating">
              <asp:TextBox ID="txtphonenumber" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                <label for="txtphonenumber">Local Phone Number</label>
            </div>
        </div>
    </div>
    <div class="row g-3" style="padding:40px">
        <div class="col-md-6">
            <div class="form-floating">
                <asp:TextBox ID="txtcovid" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                <label for="txtcovid">Covid Vaccine Id</label>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-floating">
                <asp:TextBox ID="txtduration" runat="server" Enabled="false" CssClass="form-control" ></asp:TextBox>
                <label for="drpduration"> Duration</label>
            </div>
        </div>
    </div>
    <p class="fs-5 fw-medium text-primary" style="padding-left:40px">About Parent Or Gurdian</p>
    <div class="row g-3" style="padding:40px">
        <div class="col-md-6">
            <div class="form-floating">
                <asp:TextBox ID="txtfathername" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                <label for="txtfathername">Father's Name</label>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-floating">
                <asp:TextBox ID="txtmothername" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                <label for="txttxtmothername">Mother's Name</label>
            </div>
        </div>
    </div>
    <div class="row g-3" style="padding:40px">
        <div class="col-md-6">
            <div class="form-floating">
                <asp:TextBox ID="txtfatherresidence" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                <label for="txtfatherresidence">Father's Residence</label>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-floating">
                <asp:TextBox ID="txtmotherresidence" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                <label for="txtmotherresidence">Mother's Residence</label>
            </div>
        </div>
    </div>
    <div class="row g-3" style="padding:40px">
        <div class="col-md-6">
            <div class="form-floating">
                <asp:TextBox ID="txtfathernumber" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                <label for="txtfathernumber">Father's Mobile Number</label>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-floating">
                <asp:TextBox ID="txtmothernumber" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                <label for="txtmothernumber">Mother's Mobile Number</label>
            </div>
        </div>
    </div>
   <p class="fs-5 fw-medium text-primary" style="padding-left:40px">Current Residence</p>
    <div class="row g-3" style="padding:40px">
        <div class="col-md-6">
            <div class="form-floating">
                <asp:TextBox ID="txtregion" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                <label for="txtregion">Region</label>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-floating">
                <asp:TextBox ID="txtdistrict" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                <label for="txtdistrict">District</label>
            </div>
        </div>
    </div>
    <div class="row g-3" style="padding:40px">
        <div class="col-md-6">
            <div class="form-floating">
                <asp:TextBox ID="txthouse" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                <label for="txthouse">House Number</label>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-floating">
                <asp:TextBox ID="txtyears" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                <label for="txtyears">Years to Spend</label>
            </div>
        </div>
    </div>
    <div align="center" style="padding-top:40px">
        <asp:Label ID="ActionStatus" runat="server" CssClass="Important"></asp:Label>
    </div>
    <div align="center" style="padding-block:50px" class="row g-3">
        <div class="col-md-6">
            <asp:Button ID="Accept" runat="server" CssClass="btn btn-primary w-30 py-3" Text="Accept" OnClick="Accept_Click" />
        </div>
        <div style="padding-top:40px" class="col-md-6">
            <asp:Button ID="Decline" runat="server" CssClass="btn btn-danger w-30 py-30" Text="Decline" OnClick="Decline_Click" />
        </div>
    </div>
    <div style="padding-top:60px">
        <asp:TextBox ID="TextBox1" runat="server" Visible="false"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Visible="false"></asp:TextBox>
    </div>
</asp:Content>
