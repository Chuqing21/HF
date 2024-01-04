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
    public partial class AddStaff : System.Web.UI.Page
    {
        string conString = "DBASGMConnectionString";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendar1.Visible = false;
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
                    string query = "SELECT StaffID FROM Staff ORDER BY StaffID";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();

                        List<int> existingNumericValues = new List<int>();

                        while (reader.Read())
                        {
                            string staffID = reader["StaffID"].ToString();
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

                        string newStaffID = $"S{nextNumericValue:D3}";

                        staffidlbl.Text = newStaffID;
                    }
                }
            }
            catch (Exception ex)
            {
                // Log the exception or display an error message
                Response.Write("Error during Increment: " + ex.Message);
            }
        }

        private string IncrementStaffID(string lastStaffID)
        {
            // Assuming the format is "S" followed by a numeric part
            // Extract the numeric part, increment it, and format it back
            string prefix = lastStaffID.Substring(0, 1); // Assuming the prefix is always one character
            string numericPart = lastStaffID.Substring(1);
            int numericValue = int.Parse(numericPart) + 1;

            // Format the new staff ID (assuming a fixed length of numeric part, adjust as needed)
            string newStaffID = $"{prefix}{numericValue:D3}";

            return newStaffID;
        }

        protected void Addbutt_Click(object sender, EventArgs e)
        {
            try
            {
                // Retrieve values from controls
                string staffId = staffidlbl.Text;
                string staffName = staffname.Text;
                string gender = RadioButtonList1.SelectedValue;
                string email = staffemail.Text;
                string educationBackground = DropDownList1.SelectedValue;
                string teachingArea = DropDownList2.SelectedValue;
                string teachingExperience = teachingexp.Text;
                string hiredDate = txtHireDate.Text;
                string staffPassword = "0";

                InsertDataIntoDatabase(staffId, staffName, gender, email, educationBackground, teachingArea, teachingExperience, hiredDate, staffPassword);

                Response.Redirect("SavedStaff.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("Error during Addbutt_Click: " + ex.Message);
            }
        }

        private void InsertDataIntoDatabase(string staffId, string staffName, string gender, string email, string educationBackground, string teachingArea, string teachingExperience, string hiredDate, string staffPassword)
        {
            string connectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["DBASGMConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string sqlQuery = "INSERT INTO Staff (StaffID, StaffName, StaffGender, StaffEmail, EducationBackground, TeachingArea, TeachingExperience, HireDate, StaffPassword) " +
                                  "VALUES (@StaffID, @StaffName, @StaffGender, @StaffEmail, @EducationBackground, @TeachingArea, @TeachingExperience, @HireDate, @StaffPassword)";

                using (SqlCommand command = new SqlCommand(sqlQuery, connection))
                {
                    command.Parameters.AddWithValue("@StaffID", staffId);
                    command.Parameters.AddWithValue("@StaffName", staffName);
                    command.Parameters.AddWithValue("@StaffGender", gender);
                    command.Parameters.AddWithValue("@StaffEmail", email);
                    command.Parameters.AddWithValue("@EducationBackground", educationBackground);
                    command.Parameters.AddWithValue("@TeachingArea", teachingArea);
                    command.Parameters.AddWithValue("@TeachingExperience", teachingExperience);
                    command.Parameters.AddWithValue("@HireDate", hiredDate);
                    command.Parameters.AddWithValue("@StaffPassword", staffPassword);

                    command.ExecuteNonQuery();
                }
            }
        }


        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }
            Calendar1.Attributes.Add("style", "position:absolute");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtHireDate.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            Calendar1.Visible = false;
        }

        protected void clearbutt_Click(object sender, EventArgs e)
        {
            // Clear TextBoxes
            staffname.Text = string.Empty;
            staffemail.Text = string.Empty;
            teachingexp.Text = string.Empty;
            txtHireDate.Text = string.Empty;

            DropDownList1.SelectedIndex = -1;
            DropDownList2.SelectedIndex = -1;

            // Clear RadioButtonList selection
            RadioButtonList1.ClearSelection();
        }
    }
}