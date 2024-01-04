using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HF
{
    public partial class LoginAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLoginAdmin_Click(object sender, EventArgs e)
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBASGMConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Retrieve Data from the Database
                string query = "SELECT AdminPassword FROM Admin WHERE AdminID = @AdminID";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameters to prevent SQL injection
                    command.Parameters.AddWithValue("@AdminID", txtAdminID.Text.Trim());

                    connection.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        // Compare Entered Data with Database Data
                        if (reader.Read())
                        {
                            string storedPassword = reader["AdminPassword"].ToString(); // Match the column name
                            string enteredPassword = txtAdminPass.Text.Trim();

                            if (enteredPassword == storedPassword)
                            {
                                // Store StudentID in session
                                Session["LoggedInAdminID"] = txtAdminID.Text.Trim();
                                Session["AdminLogin"] = "Admin";

                                // Redirect to the next page (ProfileStudent.aspx) and pass StudentID in the query string
                                Response.Redirect($"ProfileAdmin.aspx?adminID={txtAdminID.Text.Trim()}");
                            }
                            else
                            {
                                // Passwords do not match - Display an error message
                                lblIncData.Text = "Incorrect Password";
                            }
                        }
                        else
                        {
                            // Student ID not found - Display an error message
                            lblIncData.Text = "Admin ID not found";
                        }



                    }
                }
            }
        }
    }
}