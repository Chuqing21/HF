using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.EnterpriseServices;
using System.Runtime.InteropServices.ComTypes;
using static HF.ProfileStudent;


namespace HF
{
    public partial class ProfileStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pcontent.Style["display"] = "block";
            cpcontent.Style["display"] = "none";
            timecontent.Style["display"] = "none";
            editcontent.Style["display"] = "none";

            btnProfile.Attributes["style"] = "border-top-right-radius: 10px; border-top-left-radius: 10px;" +
                "background-color: #E5DDE8; color: #6B9B90";

            if (!IsPostBack)
            {
                if (Request.QueryString["studentID"] != null)
                {
                    string studentID = Request.QueryString["studentID"];

                    // Fetch student details from the database based on student ID
                    Student student = GetStudentDetailsFromDatabase(studentID);

                    if (student != null)
                    {
                        // Set the values of the labels with the retrieved data
                        StudentID.Text = studentID;
                        lblGetName.Text = student.StudentName;
                        lblGetEmail.Text = student.StudentEmail;
                        lblGetECN.Text = student.EmergencyContactNumber;
                        lblGetPName.Text = student.ParentName;
                    }
                    else
                    {
                        // Handle the case when the student details are not found
                        // You may redirect or display an error message
                        Response.Redirect("ErrorPage.aspx");
                    }
                }
            }

        }
        
        protected void btnProfile_Click(object sender, EventArgs e)
        {
            if (pcontent.Style["display"] == "block")
            {
                btnProfile.Attributes["style"] = "border-top-right-radius: 10px; border-top-left-radius: 10px;" +
               "background-color: #E5DDE8; color: #6B9B90";

                btnChgPass.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
                btnViewTime.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
                btnEditProfile.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
            }
            else
            {
                pcontent.Style["display"] = "none";
            }

            if (Request.QueryString["studentID"] != null)
            {
                string studentID = Request.QueryString["studentID"];

                // Fetch student details from the database based on student ID
                Student student = GetStudentDetailsFromDatabase(studentID);

                if (student != null)
                {
                    // Set the values of the labels with the retrieved data
                    StudentID.Text = studentID;
                    lblGetName.Text = student.StudentName;
                    lblGetEmail.Text = student.StudentEmail;
                    lblGetECN.Text = student.EmergencyContactNumber;
                    lblGetPName.Text = student.ParentName;
                }
                else
                {
                    // Handle the case when the student details are not found
                    // You may redirect or display an error message
                    Response.Redirect("ErrorPage.aspx");
                }
            }
        }

        protected void btnChgPass_Click(object sender, EventArgs e)
        {
            if (cpcontent.Style["display"] == "none")
            {
                pcontent.Style["display"] = "none";
                cpcontent.Style["display"] = "block";
                btnChgPass.Attributes["style"] = "border-top-right-radius: 10px; border-top-left-radius: 10px;" +
               "background-color: #E5DDE8; color: #6B9B90";

                btnProfile.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
                btnViewTime.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
                btnEditProfile.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
            }
            else
            {
                cpcontent.Style["display"] = "none";
            }
        }

        protected void btnViewTime_Click(object sender, EventArgs e)
        {
            if (timecontent.Style["display"] == "none")
            {
                pcontent.Style["display"] = "none";
                timecontent.Style["display"] = "block";
                btnViewTime.Attributes["style"] = "border-top-right-radius: 10px; border-top-left-radius: 10px;" +
               "background-color: #E5DDE8; color: #6B9B90";

                btnChgPass.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
                btnProfile.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
                btnEditProfile.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
            }
            else
            {
                timecontent.Style["display"] = "none";
            }
        }

        protected void btnEditProfile_Click(object sender, EventArgs e)
        {
            if (editcontent.Style["display"] == "none")
            {
                pcontent.Style["display"] = "none";
                editcontent.Style["display"] = "block";
                btnEditProfile.Attributes["style"] = "border-top-right-radius: 10px; border-top-left-radius: 10px;" +
               "background-color: #E5DDE8; color: #6B9B90";

                btnChgPass.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
                btnViewTime.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
                btnProfile.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
            }
            else
            {
                editcontent.Style["display"] = "none";
            }
        }

        protected void btnCancelChange_Click(object sender, EventArgs e)
        {
            txtCurPwd.Text = string.Empty;
            txtNewPwd.Text = string.Empty;
            txtConPwd.Text = string.Empty;

            if (cpcontent.Style["display"] == "none")
            {
                pcontent.Style["display"] = "none";
                cpcontent.Style["display"] = "block";
                btnChgPass.Attributes["style"] = "border-top-right-radius: 10px; border-top-left-radius: 10px;" +
               "background-color: #E5DDE8; color: #6B9B90";

                btnProfile.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
                btnViewTime.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
                btnEditProfile.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
            }
            else
            {
                cpcontent.Style["display"] = "none";
            }
        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            // Check if the student ID is available in the query string
            if (Request.QueryString["studentID"] != null)
            {
                string studentID = Request.QueryString["studentID"];

                // Retrieve the current password from the database
                string currentPasswordFromDatabase = RetrieveCurrentPasswordFromDatabase(studentID);

                // Debug statement to print the retrieved current password
                Console.WriteLine($"Retrieved current password from database: {currentPasswordFromDatabase}");

                // Check if the entered current password matches the one in the database
                if (txtCurPwd.Text.Trim() == currentPasswordFromDatabase)
                {
                    // Valid current password, proceed to update the password

                    // Check if a new password is provided
                    if (!string.IsNullOrEmpty(txtNewPwd.Text.Trim()))
                    {
                        // Assuming you have a function to update the password in the database
                        bool passwordUpdated = UpdatePasswordInDatabase(studentID, txtNewPwd.Text.Trim());

                        if (passwordUpdated)
                        {
                            // Debug statement to indicate that the password update was successful
                            Console.WriteLine("Password successfully updated.");
                            btnChgPass.Attributes["style"] = "background-color: #6B9B90; COLOR: #E5DDE8";

                            // Password successfully updated
                            // Redirect or display a success message
                            string script = "alert('Change Password Successfully.');";
                            ClientScript.RegisterStartupScript(this.GetType(), "SuccessAlert", script, true);
                        }
                        else
                        {
                            // Debug statement to indicate that the password update failed
                            Console.WriteLine("Password update failed.");
                            // Failed to update password, handle accordingly
                            string script = "alert('Change Password Unsuccessfully.');";
                            ClientScript.RegisterStartupScript(this.GetType(), "SuccessAlert", script, true);
                        }
                    }
                    
                }
                
            }
        }

        private string RetrieveCurrentPasswordFromDatabase(string studentID)
        {
            // Replace the connection string with your actual database connection string
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBASGMConnectionString"].ConnectionString;

            // SQL query to retrieve the current password based on studentID
            string query = "SELECT StudentPassword FROM Student WHERE StudentID = @StudentID";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Add parameters to the query
                        command.Parameters.AddWithValue("@StudentID", studentID);

                        connection.Open();

                        // Execute the query and retrieve the password
                        object result = command.ExecuteScalar();

                        // Check if a password was found
                        if (result != null)
                        {
                            return result.ToString();
                        }
                        else
                        {
                            // Handle the case when the student ID is not found
                            // You might want to throw an exception or return a specific value
                            // depending on how you want to handle this situation
                            throw new Exception("Student ID not found in the database.");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Log the error or handle it as needed
                Console.WriteLine("Error retrieving password: " + ex.Message);
                return null; // Return null to indicate an error condition
            }
        }

        private bool UpdatePasswordInDatabase(string studentID, string newPassword)
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBASGMConnectionString"].ConnectionString;
            string updateQuery = "UPDATE Student SET StudentPassword = @NewPassword WHERE StudentID = @StudentID";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(updateQuery, connection))
                    {
                        // Log or print parameter values for debugging
                        Console.WriteLine($"Updating password for StudentID: {studentID}, NewPassword: {newPassword}");

                        command.Parameters.AddWithValue("@NewPassword", newPassword);
                        command.Parameters.AddWithValue("@StudentID", studentID);

                        connection.Open();

                        int rowsAffected = command.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            // Password update successful
                            return true;
                        }
                        else
                        {
                            // Password update failed
                            Console.WriteLine("No rows affected. Password update failed.");
                            return false;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Log the error for debugging
                Console.WriteLine("Error updating password: " + ex.Message);
                return false;
            }
        }

        protected void btnSaveEdit_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["studentID"] != null)
            {
                string studentID = Request.QueryString["studentID"];

                // Update the student data in the database directly
                bool dataUpdated = UpdateStudDataInDatabase(studentID, txtEditEmail.Text.Trim(), txtEditContact.Text.Trim(), txtEditParentName.Text.Trim());

                if (dataUpdated)
                {
                    // Fetch updated student details after the successful edit
                    Student updatedStudent = GetStudentDetailsFromDatabase(studentID);

                    if (updatedStudent != null)
                    {
                        // Update the labels with the new data
                        StudentID.Text = studentID;
                        lblGetName.Text = updatedStudent.StudentName;
                        lblGetEmail.Text = updatedStudent.StudentEmail;
                        lblGetECN.Text = updatedStudent.EmergencyContactNumber;
                        lblGetPName.Text = updatedStudent.ParentName;

                        txtEditEmail.Text = string.Empty;
                        txtEditContact.Text = string.Empty;
                        txtEditParentName.Text = string.Empty;

                        btnEditProfile.Attributes["style"] = "background-color: #6B9B90; COLOR: #E5DDE8";
                        string script = "alert('Change Edit Successfully.');";
                        ClientScript.RegisterStartupScript(this.GetType(), "SuccessAlert", script, true);
                    }

                    
                }
                else
                {
                    string script = "alert('Change Edit Unsuccessfully.');";
                    ClientScript.RegisterStartupScript(this.GetType(), "SuccessAlert", script, true);
                }
            }
            
        }

        private bool UpdateStudDataInDatabase(string studentID, string email, string emergencyContact, string parentName)
        {
            // Replace the connection string with your actual database connection string
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBASGMConnectionString"].ConnectionString;

            // SQL query to update student data based on studentID
            string updateQuery = "UPDATE Student SET StudentEmail = @Email, EmergencyContact = @EmergencyContact, ParentName = @ParentName WHERE StudentID = @StudentID";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(updateQuery, connection))
                    {
                        // Log or print parameter values for debugging
                        Console.WriteLine($"Updating student data for StudentID: {studentID}, Email: {email}, EmergencyContact: {emergencyContact}, ParentName: {parentName}");

                        // Add parameters to the query
                        command.Parameters.AddWithValue("@Email", email);
                        command.Parameters.AddWithValue("@EmergencyContact", emergencyContact);
                        command.Parameters.AddWithValue("@ParentName", parentName);
                        command.Parameters.AddWithValue("@StudentID", studentID);

                        connection.Open();

                        int rowsAffected = command.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            // Data update successful
                            return true;
                        }
                        else
                        {
                            // Data update failed
                            Console.WriteLine("No rows affected. Data update failed.");
                            return false;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Log the error for debugging
                Console.WriteLine("Error updating student data: " + ex.Message);
                return false;
            }
        }

        protected void btnCancelEdit_Click(object sender, EventArgs e)
        {
            txtEditEmail.Text = string.Empty;
            txtEditContact.Text = string.Empty;
            txtEditParentName.Text = string.Empty;

            if (editcontent.Style["display"] == "none")
            {
                pcontent.Style["display"] = "none";
                editcontent.Style["display"] = "block";
                btnEditProfile.Attributes["style"] = "border-top-right-radius: 10px; border-top-left-radius: 10px;" +
               "background-color: #E5DDE8; color: #6B9B90";

                btnChgPass.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
                btnViewTime.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
                btnProfile.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
            }
            else
            {
                editcontent.Style["display"] = "none";
            }
        }

        public class Student
        {
            public string StudentName { get; set; }
            public string StudentEmail { get; set; }
            public string EmergencyContactNumber { get; set; }
            public string ParentName { get; set; }
        }

        private Student GetStudentDetailsFromDatabase(string studentID)
        {
            // Replace this connection string with your actual database connection string
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBASGMConnectionString"].ConnectionString;

            // SQL query to retrieve student details based on studentID
            string query = "SELECT StudentName, StudentEmail, EmergencyContact, ParentName FROM Student WHERE StudentID = @StudentID";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameters to the query to prevent SQL injection
                    command.Parameters.AddWithValue("@StudentID", studentID);

                    connection.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        // Check if there are rows returned
                        if (reader.Read())
                        {
                            // Create a new Student object and populate its properties
                            return new Student
                            {
                                StudentName = reader["StudentName"] != DBNull.Value ? reader["StudentName"].ToString() : null,
                                StudentEmail = reader["StudentEmail"] != DBNull.Value ? reader["StudentEmail"].ToString() : null,
                                EmergencyContactNumber = reader["EmergencyContact"] != DBNull.Value ? reader["EmergencyContact"].ToString() : null,
                                ParentName = reader["ParentName"] != DBNull.Value ? reader["ParentName"].ToString() : null
                            };
                        }
                    }
                }
            }

            // Return null if no data is found
            return null;
        }


    }
}