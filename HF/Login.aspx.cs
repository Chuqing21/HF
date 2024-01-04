using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HF
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the user is logged in (you need to implement your own login logic)
            bool isLoggedIn = CheckIfUserIsLoggedIn();

            // Set the visibility of the login status control based on login status
            LoginStatus.Visible = isLoggedIn;

            if (isLoggedIn)
            {
                imgBtnStudent.Enabled = false;
                imgBtnTeacher.Enabled = false;
                imgBtnStaff.Enabled = false;

                hplStudent.Enabled = false;
                hplStaff.Enabled=false;
                hplAdmin.Enabled = false;

                lblLogoutMsg.Text = "Please Logout Before Login Another Account";


            }
        }

        private bool CheckIfUserIsLoggedIn()
        {
            if (Session["LoggedInStudentID"] == null && Session["LoggedInStaffID"] == null && Session["LoggedInAdminID"] == null)
            {
                // User is not logged in
                return false;
            }
            else
            {
                // User is logged in
                return true;
            }
        }

        protected void imgBtnStudent_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void imgBtnTeacher_Click(object sender, ImageClickEventArgs e)
        {
        }

        protected void imgBtnStaff_Click(object sender, ImageClickEventArgs e)
        {
            
        }
    }
}