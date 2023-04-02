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
    public partial class solution : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PassData();
            viewdata();
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string conn = ConfigurationManager.ConnectionStrings["studentstatus"].ConnectionString;

            using (SqlConnection constring = new SqlConnection(conn))
            {
                constring.Open();
                SqlCommand cmd = new SqlCommand("update  Complain set answer='" + txtanswer.Text + "' where id='" + TextBox1.Text + "'", constring);
                cmd.ExecuteNonQuery();
            }

            txtanswer.Text = "";
            txtissue.Text = "";

            //ActionStatus.Text = String.Format("<font color =#00FF00><b>You have Sucessfully approved this request</font></b>");
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
                using (SqlCommand cmd = new SqlCommand("select * from admincomplainview where id = '" + TextBox1.Text + "'", constring))
                {
                    cmd.CommandType = CommandType.Text;
                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        using (DataTable dt = new DataTable())
                        {
                            adapter.Fill(dt);

                            TextBox1.Text = dt.Rows[0]["id"].ToString();
                            TextBox2.Text = dt.Rows[0]["Email"].ToString();
                            txtissue.Text = dt.Rows[0]["Issue"].ToString();
                        }
                    }
                }
            }


        }
    }
}