using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HF
{
    public partial class EditAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            pcontent.Style["display"] = "block";

            btnEditP.Attributes["style"] = "border-top-right-radius: 10px; border-top-left-radius: 10px;" +
               "background-color: #E5DDE8; color: #6B9B90";

            if (!IsPostBack)
            {
                LoadAdminDetails();
            }
        }

        protected void btnEditP_Click(object sender, EventArgs e)
        {

            if (pcontent.Style["display"] == "block")
            {
                btnProfile.Attributes["style"] = "border-top-right-radius: 10px; border-top-left-radius: 10px;" +
               "background-color: #E5DDE8; color: #6B9B90";
                btnMCourses.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
                btnMStaff.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
                btnMStudent.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";

            }
            else
            {
                pcontent.Style["display"] = "none";
            }
        }

        protected void LoadAdminDetails()
        {
            // Retrieve and display admin ID based on the logged-in admin's ID
            string loggedInAdminID = "A001"; // Get the actual AdminID from your authentication system
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBASGMConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string selectQuery = $"SELECT [AdminID] FROM [Admin] WHERE [AdminID] = '{loggedInAdminID}'";

                using (SqlCommand command = new SqlCommand(selectQuery, connection))
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        string adminID = reader["AdminID"].ToString();

                        // Display AdminID in the label
                        lblAdminId.Text = $"{adminID}";
                    }
                    else
                    {
                        // No data found for the specified Admin ID
                        lblAdminId.Text = "No data found for Admin ID: " + loggedInAdminID;
                    }
                }
            }
        }

        protected void clearbutt_Click1(object sender, EventArgs e)
        {

            txtCont.Text = string.Empty;
            txtName.Text = string.Empty;


        }

        protected void Addbutt_Click(object sender, EventArgs e)
        {
            try
            {
                // Update admin details in the database
                string loggedInAdminID = "A001"; // Get the actual AdminID from your authentication system
                string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBASGMConnectionString"].ConnectionString;

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string updateQuery = $"UPDATE [Admin] SET [AdminName] = @AdminName, [AdminContactNo] = @AdminContactNo WHERE [AdminID] = '{loggedInAdminID}'";

                    using (SqlCommand command = new SqlCommand(updateQuery, connection))
                    {
                        command.Parameters.AddWithValue("@AdminName", txtName.Text);
                        command.Parameters.AddWithValue("@AdminContactNo", txtCont.Text);

                        int rowsAffected = command.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            string script = "alert('Profile updated successfully!');";
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "ProfileUpdatedAlert", script, true);
                            // The update was successful
                            // Optionally, you can display a success message
                        }
                        else
                        {
                            string script = "alert('Profile updated failed!');";
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "ProfileUpdatedAlert", script, true);

                            // The update failed
                            // Optionally, you can display an error message
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error during Addbutt_Click: " + ex.Message);
            }

        }
    }
}