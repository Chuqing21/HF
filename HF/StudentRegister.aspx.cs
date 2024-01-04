using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.Remoting.Contexts;

namespace HF
{
    public partial class StudentRegister : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\DBASGM.mdf;Integrated Security=True;Connect Timeout=30");

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                txtStudID.ReadOnly = true;
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBASGMConnectionString"].ConnectionString);
                con.Open();
                string qry = "select max(StudentID) from Student ";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    int cid = Convert.ToInt32(dr[0]) + 1;

                    // Use a formatting string to pad cid with zeros based on its length
                    txtStudID.Text = string.Format("{0:D4}", cid);
                }
                con.Close();
            }


            catch (Exception ex)
            {
                // Handle or log the exception
                // Log the exception or display an error message
                Response.Write("An error occurred while loading the page." + ex.Message);

            }

        }

        protected void btnRegister_Click(object sender, EventArgs e)

        {

            try
            {
                if (!IsEmailAlreadyExists(txtEmail.Text))
                {

                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "insert into Student values('" + txtStudID.Text + "','" + txtStudName.Text + "','" + rblGender.SelectedValue + "','" + txtEmail.Text + "','" + txtConfPsw.Text + "','" + txtParentContact.Text + "','" + txtParentName.Text + "')";
                    cmd.ExecuteNonQuery();
                    con.Close();


                    //after select registerbutton

                    lblStudent.Visible = true;
                    lblStudent.Text = " Registration Successful !!! <br />" + txtStudName.Text + " , Welcome to A+ Education. <br />This is your student ID : " + txtStudID.Text;

                    btnRegister.Enabled = false;
                    btnReset.Enabled = false;

                }

                else
                {
                    lblStudent.Visible = true;
                    lblStudent.Text = "This email has been registered. Try another email.";
                }

            }
            catch (Exception ex)
            {
                // Handle or log the exception
                // Log the exception or display an error message
                Response.Write("An error occurred while registering the student." + ex.Message);

            }



        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtEmail.Text = string.Empty;
            txtParentContact.Text = string.Empty;
            txtParentName.Text = string.Empty;
            txtPsw.Text = string.Empty;
            txtStudName.Text = string.Empty;
            txtConfPsw.Text = string.Empty;
            rblGender.SelectedIndex = -1;
            rblTerm.SelectedIndex = -1;

        }



        private bool IsEmailAlreadyExists(string email)

        {

            try
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

            catch (Exception ex)
            {
                // Handle or log the exception
                Response.Write("An error occurred while checking the email existence." + ex.Message);

                return false;
            }
        }

    }

    


}