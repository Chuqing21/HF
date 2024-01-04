using System;
using System.ComponentModel.DataAnnotations;
using System.Data.SqlClient;
using System.Diagnostics;

namespace HF
{
    public partial class PaymentCompleted : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                // Display the generated payment ID
                int paymentId = GetNextPaymentId();
                lblPayID2.Text = paymentId.ToString();

                // Display the current date and time
                lblPayDate2.Text = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");

                if (Session["PaymentType1"] != null)
                {
                    string paymentType = Session["PaymentType1"].ToString();
                    lblPayMeth2.Text = paymentType;

                    // Store data in the database
                    StorePaymentInDatabase(paymentId, paymentType);

                }

                else if (Session["PaymentType1"] == null)
                {
                    string paymentType = "Credit/Debit Card";
                    lblPayMeth2.Text = paymentType;

                    // Store data in the database
                    StorePaymentInDatabase(paymentId, paymentType);

                }

            }
        }

        private int GetNextPaymentId()
        {
            int paymentIdCounter;

            // Check if the counter is already in the Application state
            if (Application["PaymentIdCounter"] != null)
            {
                paymentIdCounter = (int)Application["PaymentIdCounter"];
            }
            else
            {
                // Initialize the counter if not present
                paymentIdCounter = 10000000;
                Application["PaymentIdCounter"] = paymentIdCounter;
            }

            // Increment the counter
            paymentIdCounter++;

            // Update the Application state
            Application["PaymentIdCounter"] = paymentIdCounter;

            return paymentIdCounter;
        }


        private void StorePaymentInDatabase(int paymentId, string paymentType)
        {
            // Assuming you have a connection string and a table named Payments with columns PaymentID and PaymentType
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBASGMConnectionString"].ConnectionString;
            string insertQuery = "INSERT INTO Payment (PaymentID, PaymentType) VALUES (@PaymentID, @PaymentType)";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(insertQuery, connection))
                    {
                        // Add parameters to the query
                        command.Parameters.AddWithValue("@PaymentID", paymentId);
                        command.Parameters.AddWithValue("@PaymentType", paymentType);

                        connection.Open();
                        command.ExecuteNonQuery();
                        // Data has been successfully inserted
                    }
                }
            }
            catch (Exception ex)
            {
                // Log the error to the console or a log file for better visibility
                Response.Write("Error storing payment data: " + ex.Message);
            }
        }

        protected void btnTimetable_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/ProfileStudent.aspx");
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Homepage.aspx");
        }
    }



}

