using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LIbraryManagementSystem.Reports
{
    public partial class Reports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //BindGrid();           
            }
        }

        protected void ddlReportType_SelectedIndexChanged(object sender, EventArgs e)
        {
            string reportType = ddlReportType.SelectedValue;
            string query = string.Empty;

            switch (reportType)
            {
                case "ActiveIssues":
                    query = "SELECT * FROM Transactions WHERE ReturnDate IS NULL";
                    break;
                case "BooksList":
                    query = "SELECT * FROM Books";
                    break;
                case "MembershipList":
                    query = "SELECT * FROM Memberships";
                    break;
                case "OverdueReturns":
                    query = "SELECT * FROM Transactions WHERE ReturnDate < GETDATE() AND ReturnDate IS NOT NULL";
                    break;
                case "PendingRequests":
                    query = "SELECT * FROM Transactions WHERE ReturnDate IS NULL AND IssueDate IS NOT NULL";
                    break;
            }

            BindGrid(query);
        }

        private void BindGrid(string query)
        {
            string connectionString = "Data Source=103.21.54.52; initial catalog=TechnicalSupport; User Id =sa; Password=odpserver550810998@";
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);

                gvReports.DataSource = dt;
                gvReports.DataBind();
            }
        }

        //protected void ddlReportType_SelectedIndexChanged1(object sender, EventArgs e)
        //{
        //    string selectedValue = ddlReportType.SelectedValue;

        //    // Check if the "Master List of Membership" option is selected
        //    if (selectedValue == "masterMembership")
        //    {
        //        // Redirect to membership.aspx
        //        Response.Redirect("MembershipForm.aspx");
        //    }
        //    else if (selectedValue == "otherOption")
        //    {
        //        // Handle other options (if needed)
        //        // Response.Redirect("anotherPage.aspx");
        //    }
        //}
    }
}