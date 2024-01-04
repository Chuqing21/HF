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
    public partial class SavedStaff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DisplaySavedStaff();
            }
        }

        private void DisplaySavedStaff()
        {
            try
            {
                string conString = "DBASGMConnectionString";
                string connectionString = ConfigurationManager.ConnectionStrings[conString].ConnectionString;

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "SELECT * FROM Staff WHERE StaffID = (SELECT MAX(StaffID) FROM Staff)";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        SqlDataReader reader = command.ExecuteReader();

                        if (reader.Read())
                        {
                            lblstaffid.Text = reader["StaffID"].ToString();
                            lblstaffname.Text = reader["StaffName"].ToString();
                            lblstaffgender.Text = reader["StaffGender"].ToString();
                            lblstaffemail.Text = reader["StaffEmail"].ToString();
                            lblstaffedubg.Text = reader["EducationBackground"].ToString();
                            lblstaffteacharea.Text = reader["TeachingArea"].ToString();
                            lblstaffteachexp.Text = reader["TeachingExperience"].ToString();
                            lblstaffhiredate.Text = reader["HireDate"].ToString();
                        }
                        else
                        {
                            // No staff found
                            errorLabel.Text = "No staff information found.";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Log the exception or display an error message
                errorLabel.Text = "Error during DisplaySavedStaff: " + ex.Message;
            }
        }

        protected void editbutt_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditStaff.aspx");
        }
    }
}