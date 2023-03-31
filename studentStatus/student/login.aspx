<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="studentStatus.student.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <title>Login</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../../assets/vendors/mdi/css/materialdesignicons.min.css"/>
    <link rel="stylesheet" href="../../assets/vendors/css/vendor.bundle.base.css"/>
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="../../assets/css/style.css"/>
    <!-- End layout styles -->
    <!--<link rel="shortcut icon" href="../../assets/images/favicon.png" />-->
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="row w-100 m-0">
          <div class="content-wrapper full-page-wrapper d-flex align-items-center auth login-bg">
            <div class="card col-lg-4 mx-auto">
              <div class="card-body px-5 py-5">
                <h3 class="card-title text-left mb-3">Login</h3>
                <form>
                  <div class="form-group">
                    <label> Email *</label>
                    <asp:TextBox ID="txtemail" runat="server" TextMode="Email" CssClass="form-control p_input"></asp:TextBox>
                  </div>
                  <div class="form-group">
                    <label>Password *</label>
                      <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" CssClass="form-control p_input"></asp:TextBox>
                  </div>
                  <div class="form-group d-flex align-items-center justify-content-between">
                    <a href="#" class="forgot-pass">Forgot password</a>
                  </div>
                    <div>
                        <asp:Label ID="ActionStatus" runat="server" CssClass="Important" ForeColor="Red"></asp:Label>
                    </div>
                  <div class="text-center">
                      <asp:Button ID="btnlogin" runat="server" CssClass="btn btn-primary btn-block enter-btn" Text="Login" OnClick="btnlogin_Click" />
                  </div>
                  <p class="sign-up">Don't have an Account?<a href="signup.aspx"> Sign Up</a></p>
                </form>
              </div>
            </div>
          </div>
          <!-- content-wrapper ends -->
        </div>
        <!-- row ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="../../assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="../../assets/js/off-canvas.js"></script>
    <script src="../../assets/js/hoverable-collapse.js"></script>
    <script src="../../assets/js/misc.js"></script>
    <script src="../../assets/js/settings.js"></script>
    <script src="../../assets/js/todolist.js"></script>
    <!-- endinject -->
    </form>
</body>
</html>
