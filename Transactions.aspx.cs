using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LIbraryManagementSystem.Transactions
{
    public partial class Transactions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack) {
            //    BindPanel();
            //}

        }

        protected void ddlTransactionType_SelectedIndexChanged(object sender, EventArgs e)
        {
            string transactionType = ddlTransactionType.SelectedValue;
            pnlTransaction.Visible = true;

            switch (transactionType)
            {
                case "CheckAvailability":
                    ShowCheckAvailability();
                    break;
                case "IssueBook":
                    ShowIssueBookForm();
                    break;
                case "ReturnBook":
                    ShowReturnBookForm();
                    break;
                case "PayFine":
                    ShowPayFineForm();
                    break;
            }

        }



        private void ShowCheckAvailability()
        {
            // Display available books
            string query = "SELECT * FROM Books WHERE Availability = 1";
            BindPanel(query);
        }


        private void ShowIssueBookForm()
        {
            // Display form to issue a book
            pnlTransaction.Controls.Clear();
            pnlTransaction.Controls.Add(new Literal { Text = "Issue Book Form (Populate Fields Dynamically)" });
        }

        private void ShowReturnBookForm()
        {
            // Display form to return a book
            pnlTransaction.Controls.Clear();
            pnlTransaction.Controls.Add(new Literal { Text = "Return Book Form (Populate Fields Dynamically)" });
        }

        private void ShowPayFineForm()
        {
            // Display form to pay fines
            pnlTransaction.Controls.Clear();
            pnlTransaction.Controls.Add(new Literal { Text = "Pay Fine Form (Populate Fields Dynamically)" });
        }


        private void BindPanel(string query)
        {
            string connectionString = "Data Source=103.21.54.52; initial catalog=TechnicalSupport; User Id =sa; Password=odpserver550810998@";
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView gv = new GridView();
                gv.DataSource = dt;
                gv.DataBind();

                pnlTransaction.Controls.Clear();
                pnlTransaction.Controls.Add(gv);
            }
        }
    }
}