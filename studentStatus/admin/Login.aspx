<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="studentStatus.admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Login</title>
    <!-- Custom fonts for this template-->
    <link href="../bootstrap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
     <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet"/>

    <!-- Custom styles for this template-->
    <link href="../bootstrap/css/sb-admin-2.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
        <div class="form-group" style="padding-top:80px">
            <label for="Enterusername1">Email</label> 
            <asp:TextBox ID="txtemail" runat="server" CssClass="form-control form-control-user" Width="400px"></asp:TextBox>
          
        </div>
      <div class="form-group">
        <label for="Enterpassword">Password</label>
          <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control"  TextMode="Password" Width="400px"></asp:TextBox>
    </div>
            <div class="form-group" style="padding-top:20px">
                <asp:Label ID="InvalidCredentialsMessage" runat="server" Text="Label" Visible="false" ForeColor="Red" >InvalidCredentialsMessage</asp:Label>
            </div>
                <div style="padding-top:20px">
                    <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="btnlogin_Click" />
            </div>
    </div>
    </form>
     <!-- Bootstrap core JavaScript-->
    <script src="../bootstrap/vendor/jquery/jquery.min.js"></script>
    <script src="../bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../bootstrap/vendor/jquery-easing/jquery.easing.min.js"></script>

     <!-- Custom scripts for all pages-->
    <script src="../bootstrap/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="../bootstrap/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="../bootstrap/js/demo/chart-area-demo.js"></script>
    <script src="../bootstrap/js/demo/chart-pie-demo.js"></script>
</body>
</html>
