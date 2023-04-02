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
    public partial class Request : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("InsertResidence", con);
            con.Open();
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@Passportid", txtpassortid.Text));
            cmd.Parameters.Add(new SqlParameter("@Purpose",drppurpose.Text));
            cmd.Parameters.Add(new SqlParameter("@HomeAddress",txthomeaddress.Text));
            cmd.Parameters.Add(new SqlParameter("@Number",txtphonenumber.Text));
            cmd.Parameters.Add(new SqlParameter("@CovidID",txtcovid.Text));
            cmd.Parameters.Add(new SqlParameter("@Duration",drpduration.Text));
            cmd.Parameters.Add(new SqlParameter("@FName",txtfathername.Text));
            cmd.Parameters.Add(new SqlParameter("@MName",txtmothername.Text));
            cmd.Parameters.Add(new SqlParameter("@Fnumber",txtfathernumber.Text));
            cmd.Parameters.Add(new SqlParameter("@MNumber",txtmothernumber.Text));
            cmd.Parameters.Add(new SqlParameter("@Region",txtregion.Text));
            cmd.Parameters.Add(new SqlParameter("@District",txtdistrict.Text));
            cmd.Parameters.Add(new SqlParameter("@HouseNumber",txthouse.Text));
            cmd.Parameters.Add(new SqlParameter("@Years",txtyears.Text));
            cmd.Parameters.Add(new SqlParameter("@Email", email));
            cmd.ExecuteNonQuery();
            con.Close();

            txtpassortid.Text = "";
            txthomeaddress.Text = "";
            txtphonenumber.Text = "";
            txtcovid.Text = "";
            txtfathername.Text = "";
            txtmothername.Text = "";
            txtmothernumber.Text = "";
            txtfathernumber.Text = "";
            txtregion.Text = "";
            txtdistrict.Text = "";
            txthouse.Text = "";
            txtyears.Text = "";

            ActionStatus.Text = string.Format("Sucessfully Requested");
        }
    }
}