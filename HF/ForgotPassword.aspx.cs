using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HF
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Get user input
            string userId = txtUserID.Text.Trim();
            string userEmail = txtUserEmail.Text.Trim();

            // Check the format of user ID and perform database queries accordingly
            if (userId.Length == 4 && userId.StartsWith("S"))
            {
                // User input format is like S001, so perform staff database query
                bool isValidStaff = CheckStaffCredentials(userId, userEmail);
                
            }
            else if (userId.Length == 4 && int.TryParse(userId, out _))
            {
                // User input format is like 0001, so perform student database query
                bool isValidStudent = CheckStudentCredentials(userId, userEmail);
                
            }
            
        }


        private bool CheckStudentCredentials(string studentId, string studentEmail)
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBASGMConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Retrieve Data from the Database
                string query = "SELECT StudentEmail, StudentPassword FROM Student WHERE StudentID = @StudentID";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameters to prevent SQL injection
                    command.Parameters.AddWithValue("@StudentID", studentId); // Use the parameter passed to the method

                    connection.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        // Compare Entered Data with Database Data
                        if (reader.Read())
                        {
                            string storedEmail = reader["StudentEmail"].ToString(); // Match the column name
                            string storedPassword = reader["StudentPassword"].ToString(); // Assuming a column named StudentPassword
                            string enteredEmail = studentEmail; // Use the parameter passed to the method

                            if (enteredEmail == storedEmail)
                            {
                                // Display the password in lblFeedback
                                lblFeedback.Text = $"Password: {storedPassword} <br/> Please Change Your Password";
                                return true; // Credentials are valid
                            }
                            else
                            {
                                // Passwords do not match - Display an error message
                                lblFeedback.Text = "Email Not Matched with ID";
                            }
                        }
                        else
                        {
                            // Student ID not found - Display an error message
                            lblFeedback.Text = "This ID not found";
                        }
                    }
                }
            }
            return false;
        }


        private bool CheckStaffCredentials(string staffId, string staffEmail)
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBASGMConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Retrieve Data from the Database
                string query = "SELECT StaffEmail, StaffPassword FROM Staff WHERE StaffID = @StaffID";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameters to prevent SQL injection
                    command.Parameters.AddWithValue("@StaffID", staffId); // Use the parameter passed to the method

                    connection.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        // Compare Entered Data with Database Data
                        if (reader.Read())
                        {
                            string storedEmail = reader["StaffEmail"].ToString(); // Match the column name
                            string storedPassword = reader["StaffPassword"].ToString(); // Assuming a column named StaffPassword
                            string enteredEmail = staffEmail; // Use the parameter passed to the method

                            if (enteredEmail == storedEmail)
                            {
                                // Display the password in lblFeedback
                                lblFeedback.Text = $"Password: {storedPassword}";
                                return true; // Credentials are valid
                            }
                            else
                            {
                                // Passwords do not match - Display an error message
                                lblFeedback.Text = "Email Not Matched with ID";
                            }
                        }
                        else
                        {
                            // Staff ID not found - Display an error message
                            lblFeedback.Text = "This ID not found";
                        }
                    }
                }
            }
            return false;
        }



    }
}