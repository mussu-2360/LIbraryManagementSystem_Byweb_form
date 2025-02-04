using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LIbraryManagementSystem.Transactions
{
    public partial class BookIssue : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            ddlBookName.SelectedIndex = 0;
            txtAuthor.Text = string.Empty;
            txtIssueDate.Text = string.Empty;
            txtReturnDate.Text = string.Empty;
            txtRemarks.Text = string.Empty;
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            string bookName = ddlBookName.SelectedValue;
            string author = txtAuthor.Text;
            //DateTime issueDate = Convert.ToDateTime(txtIssueDate.Text);
           // DateTime returnDate = Convert.ToDateTime(txtReturnDate.Text);
            //string remarks = txtRemarks.Text;

        }
    }
}