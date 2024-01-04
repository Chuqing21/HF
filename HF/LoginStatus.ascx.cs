using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static HF.ProfileStudent;

namespace HF
{
    public partial class LoginStatus : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["LoggedInStudentID"] != null)
            {
                // Set the values of the labels with the retrieved data
                lblUsername.Text = Session["LoggedInStudentID"].ToString();
            }
            else if (Session["LoggedInStaffID"] != null)
            {
                // Set the values of the labels with the retrieved data
                lblUsername.Text = Session["LoggedInStaffID"].ToString();
            }
            else if (Session["LoggedInAdminID"] != null)
            {
                // Set the values of the labels with the retrieved data
                lblUsername.Text = Session["LoggedInAdminID"].ToString();
            }

            lblLoginTime.Text = DateTime.Now.ToString();

            UpdateLoginStatus();


        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // Perform logout logic here
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Login.aspx");
        }

        protected void btnLogout_Click1(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Login.aspx");
        }

        private void UpdateLoginStatus()
        {
            if (Session["LoggedInStudentID"] != null)
            {
                // Show the logout button if the user is logged in
                btnLogout.Visible = true;
            }
            else if (Session["LoggedInStaffID"] != null)
            {
                // Show the logout button if the user is logged in
                btnLogout.Visible = true;
            }
            else if (Session["LoggedInAdminID"] != null)
            {
                // Show the logout button if the user is logged in
                btnLogout.Visible = true;
            }
            else
            {
                // Hide the logout button if the user is not logged in
                btnLogout.Visible = false;
            }
        }


    }

        
    }