using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LIbraryManagementSystem.Admin
{
    public partial class AdminHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Role"] == null || Session["Role"].ToString() != "Admin")
            {
                Response.Redirect("~/Account/Login.aspx");
            }

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // Clear session and redirect to the login page
            Session.Clear();
            Response.Redirect("~/Account/Login.aspx");
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admint/Login.aspx");
        }

        protected void maintenance_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/Maintenance.aspx");
        }

        protected void reports_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Reports/Reports.aspx");
        }

        protected void transactions_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Transactions/Transactions.aspx");
        }
    }
}