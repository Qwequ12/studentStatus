using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace studentStatus.student
{
    public partial class Status : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            GridViewRow row = e.Row;
            if (row.RowType == DataControlRowType.DataRow)
            {
                Label lblstat = (Label)e.Row.FindControl("lblstatus");
                Label lblcon = (Label)e.Row.FindControl("lblconfirm");
                LinkButton lbldgprint = (LinkButton)e.Row.FindControl("lblprint");


                if (lblstat.Text == "0" || lblstat.Text == "")
                {
                    lblcon.Text = "<b><font color=#0000FF>Pending</font></b>";
                    //lbldgprint.Visible = false;
                }
                else if (lblstat.Text == "1")
                {
                    lblcon.Text = "<b><font color=#00FF00>Approved</font></b>";
                }
                else
                {
                    lblcon.Text = "<b><font color=#FF0000>Denied</font></b>";
                   // lbldgprint.Visible = false;
                }


            }
        }
    }
}