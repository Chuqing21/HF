using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HF
{
    public partial class ProfileAdmin : System.Web.UI.Page
    {
  

        protected void Page_Load(object sender, EventArgs e)
        {

            pcontent.Style["display"] = "block";

            btnProfile.Attributes["style"] = "border-top-right-radius: 10px; border-top-left-radius: 10px;" +
               "background-color: #E5DDE8; color: #6B9B90";

            if (!IsPostBack)
            {
                // Call the method to populate the label with the result of the query
                UpdateAdminLabels();

                if (Request.QueryString["adminID"] != null)
                {
                    string adminID = Request.QueryString["adminID"];
                    //lblAdminID.Text = adminID;

                }

            }

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void btnProfile_Click(object sender, EventArgs e)
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

        protected void btnMCourses_Click(object sender, EventArgs e)
        {

        }

        protected void UpdateAdminLabels()
        {
            string adminId = "A001";
            DisplayAdminData(adminId);
        }

        protected void DisplayAdminData(string adminId)
        {
            // Set the connection string and SQL query
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBASGMConnectionString"].ConnectionString;
            string selectQuery = $"SELECT [AdminID], [AdminName], [AdminContactNo] FROM [Admin] WHERE [AdminID] = '{adminId}'";

            // Create a connection and command
            using (System.Data.SqlClient.SqlConnection connection = new System.Data.SqlClient.SqlConnection(connectionString))
            using (System.Data.SqlClient.SqlCommand command = new System.Data.SqlClient.SqlCommand(selectQuery, connection))
            {
                connection.Open();

                // Execute the query
                using (System.Data.SqlClient.SqlDataReader reader = command.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        // Get data from the result set
                        string adminID = reader["AdminID"].ToString();
                        string adminName = reader["AdminName"].ToString();
                        string adminContactNo = reader["AdminContactNo"].ToString();

                        // Display data in the labels
                        lblAdminId.Text = $"{adminID}";
                        lblAdminName.Text = $"{adminName}";
                        lblContact.Text = $"{adminContactNo}";
                    }
                    else
                    {
                        // No data found for the specified Admin ID
                        lblAdminId.Text = "No data found for Admin ID: " + adminId;
                        lblAdminName.Text = "";
                        lblContact.Text = "";
                    }
                }

                connection.Close();
            }
        }


    }
}