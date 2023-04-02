using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace studentStatus.admin
{
    public partial class Login : System.Web.UI.Page
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
            string query = "SELECT * FROM admin WHERE username=@username AND password=@password";
            SqlCommand command = new SqlCommand(query, con);
            command.Parameters.AddWithValue("@username", txtemail.Text);
            command.Parameters.AddWithValue("@password", txtpassword.Text);
            SqlDataReader reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                Response.Redirect("statusRequest.aspx");
            }
            else
            {
                InvalidCredentialsMessage.Visible = true;
            }

            con.Close();
        }
    }
}