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
    public partial class AddCourse : System.Web.UI.Page
    {
        string conString = "DBASGMConnectionString";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                Increment();
            }
        }

        void Increment()
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings[conString].ConnectionString;

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = "SELECT CourseID FROM Course ORDER BY CourseID";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();

                        List<int> existingNumericValues = new List<int>();

                        while (reader.Read())
                        {
                            string staffID = reader["CourseID"].ToString();
                            int numericValue;

                            if (int.TryParse(staffID.Substring(1), out numericValue))
                            {
                                existingNumericValues.Add(numericValue);
                            }
                        }

                        // Find the next available numeric value
                        int nextNumericValue = 1;

                        while (existingNumericValues.Contains(nextNumericValue))
                        {
                            nextNumericValue++;
                        }

                        string newCourseID = $"C{nextNumericValue:D3}";

                        lblCourseID.Text = newCourseID;
                    }
                }
            }
            catch (Exception ex)
            {
                // Log the exception or display an error message
                Response.Write("Error during Increment: " + ex.Message);
            }
        }


        protected void Addbutt_Click(object sender, EventArgs e)
        {
            try
            {
                // Retrieve values from controls
                string CourseID = lblCourseID.Text;
                string CourseName = txtCourseN.Text;
                string Description = txtDes.Text;
                string Price = txtCourseP.Text;


                InsertDataIntoDatabase(CourseID, CourseName, Description, Price);

                Response.Redirect("SavedCourse.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("Error during Addbutt_Click: " + ex.Message);
            }
        }

        private void InsertDataIntoDatabase(string CourseID, string CourseName, string Description, string Price)
        {
            string connectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["DBASGMConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string sqlQuery = "INSERT INTO Course (CourseID, CourseName, CourseDescription, CoursePrice) " +
                                  "VALUES (@CourseID, @CourseName, @CourseDescription, @CoursePrice)";

                using (SqlCommand command = new SqlCommand(sqlQuery, connection))
                {
                    command.Parameters.AddWithValue("@CourseID", CourseID);
                    command.Parameters.AddWithValue("@CourseName", CourseName);
                    command.Parameters.AddWithValue("@CourseDescription", Description);
                    command.Parameters.AddWithValue("@CoursePrice", Price);

                    command.ExecuteNonQuery();
                }
            }
        }

        protected void clearbutt_Click1(object sender, EventArgs e)
        {
            txtCourseN.Text = string.Empty;
            txtCourseP.Text = string.Empty;
            txtDes.Text = string.Empty;

        }



    }
}