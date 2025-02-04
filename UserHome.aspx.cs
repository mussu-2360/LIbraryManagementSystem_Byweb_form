using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LIbraryManagementSystem.Transactions
{
    public partial class UserHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnhomeReport_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Reports/Reports.aspx");

        }

        protected void Transections_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Transactions/Transactions.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Account/Login.aspx");
        }
    }
}