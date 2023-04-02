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
    public partial class complain : System.Web.UI.Page
    {
        string email;
        protected void Page_Load(object sender, EventArgs e)
        {
            email = (string)Session["email"];
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["studentstatus"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand("InsertComplain", con);
            con.Open();
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@Email", email));
            cmd.Parameters.Add(new SqlParameter("@Issue", txtissue.Text));
            cmd.ExecuteNonQuery();
            con.Close();

            txtissue.Text = "";

            ActionStatus.Text = string.Format("Sucessfully");
        }
    }
}