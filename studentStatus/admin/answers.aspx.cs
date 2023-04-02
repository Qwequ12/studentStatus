using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace studentStatus.admin
{
    public partial class answers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int complain = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0].ToString());
            Session["complain"] = complain;

            string mail = GridView1.DataKeys[e.RowIndex].Values[1].ToString();
            Session["mail"] = mail;

            Response.Redirect("solution.aspx");
        }
    }
}