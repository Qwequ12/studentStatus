<%@ Page Title="" Language="C#" MasterPageFile="~/student/Site1.Master" AutoEventWireup="true" CodeBehind="Request.aspx.cs" Inherits="studentStatus.student.Request" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="fs-5 fw-medium text-primary" style="padding-left:40px">About Your Self</p>
    <div class="row g-3" style="padding:40px">
        <div class="col-md-6">
            <div class="form-floating">
                <asp:TextBox ID="txtpassortid" runat="server" CssClass="form-control" placeholder="Passport Id" ></asp:TextBox>
            <label for="txtpassortid">Passport Id</label>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-floating">
               <asp:DropDownList ID="drppurpose" runat="server" CssClass="form-select" placeholder="Purpose">
                   <asp:ListItem>Work</asp:ListItem>
                   <asp:ListItem>Study</asp:ListItem>
                   <asp:ListItem>Visit</asp:ListItem>
                </asp:DropDownList>
                <label for="drppurpose">Purpose</label>
            </div>
        </div>
    </div>
    <div class="row g-3" style="padding:40px">
        <div class="col-md-6">
            <div class="form-floating">
                <asp:TextBox ID="txthomeaddress" runat="server" CssClass="form-control" placeholder="Home Address"></asp:TextBox>
                <label for="txthomeaddress">Home Address</label>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-floating">
              <asp:TextBox ID="txtphonenumber" runat="server" CssClass="form-control" placeholder="Local Phone Number"></asp:TextBox>
                <label for="txtphonenumber">Local Phone Number</label>
            </div>
        </div>
    </div>
    <div class="row g-3" style="padding:40px">
        <div class="col-md-6">
            <div class="form-floating">
                <asp:TextBox ID="txtcovid" runat="server" CssClass="form-control" placeholder="Covid Vaccine Id"></asp:TextBox>
                <label for="txtcovid">Covid Vaccine Id</label>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-floating">
                <asp:DropDownList ID="drpduration" runat="server" CssClass="form-select" placeholder="Duration">
                    <asp:ListItem>Temporary</asp:ListItem>
                    <asp:ListItem>Permanent</asp:ListItem>
                </asp:DropDownList>
                <label for="drpduration"> Duration</label>
            </div>
        </div>
    </div>
    <p class="fs-5 fw-medium text-primary" style="padding-left:40px">About Parent Or Gurdian</p>
    <div class="row g-3" style="padding:40px">
        <div class="col-md-6">
            <div class="form-floating">
                <asp:TextBox ID="txtfathername" runat="server" CssClass="form-control" placeholder="Father's Name"></asp:TextBox>
                <label for="txtfathername">Father's Name</label>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-floating">
                <asp:TextBox ID="txtmothername" runat="server" CssClass="form-control" placeholder="Mother's Name"></asp:TextBox>
                <label for="txttxtmothername">Mother's Name</label>
            </div>
        </div>
    </div>
    <div class="row g-3" style="padding:40px">
        <div class="col-md-6">
            <div class="form-floating">
                <asp:TextBox ID="txtfatherresidence" runat="server" CssClass="form-control" placeholder="Father's Residence"></asp:TextBox>
                <label for="txtfatherresidence">Father's Residence</label>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-floating">
                <asp:TextBox ID="txtmotherresidence" runat="server" CssClass="form-control" placeholder="Mother's Residence"></asp:TextBox>
                <label for="txtmotherresidence">Mother's Residence</label>
            </div>
        </div>
    </div>
    <div class="row g-3" style="padding:40px">
        <div class="col-md-6">
            <div class="form-floating">
                <asp:TextBox ID="txtfathernumber" runat="server" CssClass="form-control" placeholder="Father's Mobile Number"></asp:TextBox>
                <label for="txtfathernumber">Father's Mobile Number</label>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-floating">
                <asp:TextBox ID="txtmothernumber" runat="server" CssClass="form-control" placeholder="Mother's Mobile Number"></asp:TextBox>
                <label for="txtmothernumber">Mother's Mobile Number</label>
            </div>
        </div>
    </div>
   <p class="fs-5 fw-medium text-primary" style="padding-left:40px">Current Residence</p>
    <div class="row g-3" style="padding:40px">
        <div class="col-md-6">
            <div class="form-floating">
                <asp:TextBox ID="txtregion" runat="server" CssClass="form-control" placeholder="Region"></asp:TextBox>
                <label for="txtregion">Region</label>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-floating">
                <asp:TextBox ID="txtdistrict" runat="server" CssClass="form-control" placeholder="District"></asp:TextBox>
                <label for="txtdistrict">District</label>
            </div>
        </div>
    </div>
    <div class="row g-3" style="padding:40px">
        <div class="col-md-6">
            <div class="form-floating">
                <asp:TextBox ID="txthouse" runat="server" CssClass="form-control" placeholder="House Number"></asp:TextBox>
                <label for="txthouse">House Number</label>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-floating">
                <asp:TextBox ID="txtyears" runat="server" CssClass="form-control" placeholder="Years to Spend"></asp:TextBox>
                <label for="txtyears">Years to Spend</label>
            </div>
        </div>
    </div>
    <div>
        <asp:Label ID="ActionStatus" runat="server" CssClass="Important" ForeColor="#33CC33"></asp:Label>
    </div>
    <div align="center" style="padding-block:50px" class="row-g3">
        <div class="col-md-6">
            <asp:Button ID="submit" runat="server" CssClass="btn btn-primary w-30 py-3" Text="Submit" OnClick="submit_Click" />
        </div>
    </div>
    <div style="padding-top:60px"></div>
</asp:Content>
