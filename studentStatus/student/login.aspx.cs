using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace studentStatus.student
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = txtemail.Text;
            Session["email"] = email;
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["studentstatus"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            string query = "SELECT * FROM student WHERE Email=@Email AND Password=@Password";
            SqlCommand command = new SqlCommand(query, con);
            command.Parameters.AddWithValue("@Email", txtemail.Text);
            command.Parameters.AddWithValue("@Password", txtpassword.Text);
            SqlDataReader reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                Response.Redirect("Request.aspx");
            }
            else
            {
                ActionStatus.Text = string.Format("Invalid username or password.");
            }

            con.Close();

        }

    }
}