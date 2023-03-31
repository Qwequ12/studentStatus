using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace studentStatus.student
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsignup_Click(object sender, EventArgs e)
        {
            DateTime dob = Convert.ToDateTime(txtdob.Text);

            // Connect to the database
            string connectionString = ConfigurationManager.ConnectionStrings["studentstatus"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand("InsertStudent", con);
            con.Open();
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@Fullname", txtfullname.Text));
            cmd.Parameters.Add(new SqlParameter("@Email",txtemail.Text));
            cmd.Parameters.Add(new SqlParameter("@Password",txtpassword.Text));
            cmd.Parameters.Add(new SqlParameter("@Nationality",txtnationality.Text));
            cmd.Parameters.Add(new SqlParameter("@Dateofbirth",dob.ToString()));
            cmd.Parameters.Add(new SqlParameter("@University",txtschool.Text));
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("login.aspx");

        }
    }
}