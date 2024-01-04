using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HF
{
    public partial class LoginStaff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLoginStaff_Click(object sender, EventArgs e)
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBASGMConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Retrieve Data from the Database
                string query = "SELECT StaffPassword FROM Staff WHERE StaffID = @StaffID";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameters to prevent SQL injection
                    command.Parameters.AddWithValue("@StaffID", txtStaffID.Text.Trim());

                    connection.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        // Compare Entered Data with Database Data
                        if (reader.Read())
                        {
                            string storedPassword = reader["StaffPassword"].ToString(); // Match the column name
                            string enteredPassword = txtStaffPass.Text.Trim();

                            if (enteredPassword == storedPassword)
                            {
                                // Store StudentID in session
                                Session["LoggedInStaffID"] = txtStaffID.Text.Trim();
                                Session["StaffLogin"] = "Staff";

                                // Redirect to the next page (ProfileStudent.aspx) and pass StudentID in the query string
                                Response.Redirect($"ProfileStaff.aspx?staffID={txtStaffID.Text.Trim()}");
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
                            lblIncData.Text = "Staff ID not found";
                        }



                    }
                }
            }
        }
    }
}