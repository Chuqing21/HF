using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HF
{
    public partial class LoginStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLoginStud_Click(object sender, EventArgs e)
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBASGMConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Retrieve Data from the Database
                string query = "SELECT StudentPassword FROM Student WHERE StudentID = @StudentID";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameters to prevent SQL injection
                    command.Parameters.AddWithValue("@StudentID", txtStudID.Text.Trim());

                    connection.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        // Compare Entered Data with Database Data
                        if (reader.Read())
                        {
                            string storedPassword = reader["StudentPassword"].ToString(); // Match the column name
                            string enteredPassword = txtStudPass.Text.Trim();

                            if (enteredPassword == storedPassword)
                            {
                                // Store StudentID in session
                                Session["LoggedInStudentID"] = txtStudID.Text.Trim();
                                Session["StudLogin"] = "Student";

                                // Redirect to the next page (ProfileStudent.aspx) and pass StudentID in the query string
                                Response.Redirect($"ProfileStudent.aspx?studentID={txtStudID.Text.Trim()}");
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
                            lblIncData.Text = "Student ID not found";
                        }



                    }
                }
            }
        }
    }

}