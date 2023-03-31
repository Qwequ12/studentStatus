<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="studentStatus.student.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <title>Sign Up</title>
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
</head>
<body>
    <form id="form1" runat="server">
       <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="row w-100 m-0">
          <div class="content-wrapper full-page-wrapper d-flex align-items-center auth login-bg">
            <div class="card col-lg-4 mx-auto">
              <div class="card-body px-5 py-5">
                <h3 class="card-title text-left mb-3">Register</h3>
                <form>
                  <div class="form-group">
                    <label>Full Name</label>
                      <asp:TextBox ID="txtfullname" runat="server" CssClass="form-control p_input"></asp:TextBox>
                  </div>
                  <div class="form-group">
                    <label>Email</label>
                    <asp:TextBox ID="txtemail" TextMode="Email" runat="server" CssClass="form-control p_input"></asp:TextBox>
                  </div>
                  <div class="form-group">
                    <label>Password</label>
                    <asp:TextBox ID="txtpassword" TextMode="Password" runat="server" CssClass="form-control p_input"></asp:TextBox>
                  </div>
                    <div style="padding-top:10px">
                        <label>Nationality</label>
                        <asp:TextBox ID="txtnationality" runat="server" CssClass="form-control p_input"></asp:TextBox>
                    </div>
                    <div>
                        <label style="padding-top:10px">Date of Birth</label>
                        <asp:TextBox ID="txtdob" runat="server" TextMode="Date" CssClass="form-control p_input"></asp:TextBox>
                    </div>
                    <div style="padding-top:10px">
                        <label> Name of University</label>
                        <asp:TextBox ID="txtschool" runat="server" CssClass="form-control p_input"></asp:TextBox>
                    </div>
                  <div class="text-center" style="padding-top:30px">
                      <asp:Button ID="btnsignup" runat="server" CssClass="btn btn-primary btn-block enter-btn" Text="Signup" OnClick="btnsignup_Click" />
                  </div>
                  <p class="sign-up text-center">Already have an Account?<a href="login.aspx"> Login</a></p>
                  <p class="terms">By creating an account you are accepting our<a href="#"> Terms & Conditions</a></p>
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
