using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LIbraryManagementSystem.Admin
{
    public partial class Maintenance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            string title = txtTitle.Text;
            string author = txtAuthor.Text;
            string type = ddlOptions.SelectedValue;

            string connectionString = "Data Source=103.21.54.52; initial catalog=TechnicalSupport; User Id =sa; Password=odpserver550810998@";
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                string query = "INSERT INTO Books (Title, Author,Category,SerialNumber,Availability) VALUES (@Title, @Author,@Category,@SerialNumber,@Availability,1)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Title", title);
                cmd.Parameters.AddWithValue("@Author", author);
                cmd.Parameters.AddWithValue("@Category", type);
                //cmd.Parameters.AddWithValue("@SerialNumber", );
                //cmd.Parameters.AddWithValue("@Availability", );

                int rows = cmd.ExecuteNonQuery();
                if (rows > 0)
                    lblMessage.Text = "Record added successfully!";
                else
                    lblMessage.Text = "Error adding record!";
            }
        }
    }
}