using studentStatus.student;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace studentStatus.admin
{
    public partial class AcceptRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PassData();
            viewdata();
        }

        public void PassData()
        {
            TextBox1.Text = Convert.ToInt32(Session["complain"]).ToString();

            TextBox2.Text = (string)Session["mail"];

        }

        public void viewdata()
        {

            string conn = ConfigurationManager.ConnectionStrings["studentstatus"].ConnectionString;
            using (SqlConnection constring = new SqlConnection(conn))
            {
                using (SqlCommand cmd = new SqlCommand("select * from adminView where id = '" + TextBox1.Text + "'", constring))
                {
                    cmd.CommandType = CommandType.Text;
                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        using (DataTable dt = new DataTable())
                        {
                            adapter.Fill(dt);

                            TextBox1.Text = dt.Rows[0]["id"].ToString();
                            TextBox2.Text = dt.Rows[0]["Email"].ToString();
                            txtpassortid.Text = dt.Rows[0]["Passportid"].ToString();
                            txtpurpose.Text = dt.Rows[0]["Purpose"].ToString();
                            txthomeaddress.Text = dt.Rows[0]["HomeAddress"].ToString();
                            txtphonenumber.Text = dt.Rows[0]["Number"].ToString();
                            txtcovid.Text = dt.Rows[0]["covidID"].ToString();
                            txtduration.Text = dt.Rows[0]["Duration"].ToString();
                            txtfathername.Text = dt.Rows[0]["FName"].ToString();
                            txtmothername.Text = dt.Rows[0]["MName"].ToString() ;
                            txtfatherresidence.Text = dt.Rows[0]["FResidence"].ToString();
                            txtmotherresidence.Text = dt.Rows[0]["MResidence"].ToString();
                            txtfathernumber.Text = dt.Rows[0]["FNumber"].ToString();
                            txtmothernumber.Text = dt.Rows[0]["MNumber"].ToString();
                            txtregion.Text = dt.Rows[0]["Region"].ToString();
                            txtdistrict.Text = dt.Rows[0]["District"].ToString();
                            txthouse.Text = dt.Rows[0]["HouseNumber"].ToString();
                            txtyears.Text = dt.Rows[0]["Years"].ToString();
                        }
                    }
                }
            }
        }

        protected void Accept_Click(object sender, EventArgs e)
        {
            string conn = ConfigurationManager.ConnectionStrings["studentstatus"].ConnectionString;

            using (SqlConnection constring = new SqlConnection(conn))
            {
                constring.Open();
                SqlCommand cmd = new SqlCommand("update  ResidenceRequest set Status='" + 1 + "' where id='" + TextBox1.Text + "'", constring);
                cmd.ExecuteNonQuery();
                ActionStatus.Text = String.Format("<font color =#00FF00><b>You have Sucessfully approved this request</font></b>");
            }
        }

        protected void Decline_Click(object sender, EventArgs e)
        {
            string conn = ConfigurationManager.ConnectionStrings["studentstatus"].ConnectionString;
            using (SqlConnection constring = new SqlConnection(conn))
            {
                constring.Open();
                SqlCommand cmd = new SqlCommand("update  ResidenceRequest set Status='" + 2 + "' where id='" + TextBox1.Text + "'", constring);
                cmd.ExecuteNonQuery();

                ActionStatus.Text = String.Format("<font color =#FF0000><b>Request Was Declined</font></b>");
            }
        }
    }
}