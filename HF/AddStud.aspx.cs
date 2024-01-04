using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HF
{
    public partial class AddStud : System.Web.UI.Page
    {
        string conString = "DBASGMConnectionString";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {



                if (!IsPostBack)
                {
                    Increment();
                }

            }
        }
        void Increment()
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings[conString].ConnectionString;

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = "SELECT StudentID FROM Student ORDER BY StudentID";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();

                        List<int> existingNumericValues = new List<int>();

                        while (reader.Read())
                        {
                            string studentID = reader["StudentID"].ToString();
                            int numericValue;

                            if (int.TryParse(studentID.Substring(1), out numericValue))
                            {
                                existingNumericValues.Add(numericValue);
                            }
                        }

                        // Find the next available numeric value
                        int nextNumericValue = 1;

                        // Find the next available numeric value
                        while (existingNumericValues.Contains(nextNumericValue))
                        {
                            nextNumericValue++;
                        }

                        string newStudentID = $"{nextNumericValue:D4}";  // Use D4 to ensure a fixed length of 4 digits
                        lblStudentID.Text = newStudentID;





                    }
                }
            }
            catch (Exception ex)
            {
                // Log the exception or display an error message
                Response.Write("Error during Increment: " + ex.Message);
            }
        }



        private void InsertDataIntoDatabase(string studentId, string studentName, string gender, string email, string studentP, string parentC, string parentN)
        {
            string connectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["DBASGMConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string sqlQuery = "INSERT INTO Student (StudentID, StudentName, StudentGender, StudentEmail, StudentPassword, EmergencyContact, ParentName) " +
                                  "VALUES (@StudentID, @StudentName, @StudentGender, @StudentEmail, @StudentPassword, @EmergencyContact, @ParentName)";

                using (SqlCommand command = new SqlCommand(sqlQuery, connection))
                {
                    command.Parameters.AddWithValue("@StudentID", studentId);
                    command.Parameters.AddWithValue("@StudentName", studentName);
                    command.Parameters.AddWithValue("@StudentGender", gender);
                    command.Parameters.AddWithValue("@StudentEmail", email);
                    command.Parameters.AddWithValue("@StudentPassword", studentP);
                    command.Parameters.AddWithValue("@EmergencyContact", parentC);
                    command.Parameters.AddWithValue("@ParentName", parentN);


                    command.ExecuteNonQuery();
                }
            }
        }



        protected void clearbutt_Click(object sender, EventArgs e)
        {
            txtParentC.Text = string.Empty;
            txtParentN.Text = string.Empty;
            txtPsw.Text = string.Empty;
            txtStudentemail.Text = string.Empty;
            rblGender.SelectedIndex = -1;
            txtStudentname.Text = string.Empty;



        }

        protected void Addbutt_Click(object sender, EventArgs e)
        {
            if (!IsEmailAlreadyExists(txtStudentemail.Text))
            {
                //if no repeated email detected, add new record
                try
                {
                    // Retrieve values from controls
                    string studentId = lblStudentID.Text;
                    string studentName = txtStudentname.Text;
                    string gender = rblGender.SelectedValue;
                    string email = txtStudentemail.Text;
                    string studentP = txtPsw.Text;
                    string parentC = txtParentC.Text;
                    string parentN = txtParentN.Text;

                    InsertDataIntoDatabase(studentId, studentName, gender, email, studentP, parentC, parentN);


                    Response.Redirect("SavedStudent.aspx");
                }
                catch (Exception ex)
                {
                    Response.Write("Error during Addbutt_Click: " + ex.Message);
                }



            }



            //if detect repeated email
            else
            {
                lblStudent.Visible = true;
                lblStudent.Text = "Repeated email is detected. Try another email.";
            }


        }
        private bool IsEmailAlreadyExists(string email)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBASGMConnectionString"].ConnectionString))
            {
                con.Open();
                string query = "SELECT COUNT(*) FROM Student WHERE StudentEmail = @Email";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Email", email);

                int count = (int)cmd.ExecuteScalar();

                return count > 0;
            }
        }
    }
}