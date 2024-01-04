using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HF
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoggedInStudentID"] == null && Session["LoggedInStaffID"] == null && Session["LoggedInAdminID"] == null)
            {
                // User is not logged in, display a message box or redirect to the login page
                ClientScript.RegisterStartupScript(this.GetType(), "NotLoggedInAlert", "alert('Please log in to view your profile.'); window.location.href='Login.aspx';", true);
            }
            else
            {
                // User is logged in, check the user type
                if (Session["LoggedInStudentID"] != null)
                {
                    // Redirect to the student profile page
                    Response.Redirect($"ProfileStudent.aspx?studentID={Session["LoggedInStudentID"]}");
                }
                else if (Session["LoggedInStaffID"] != null)
                {
                    // Redirect to the staff profile page
                    Response.Redirect($"ProfileStaff.aspx?staffID={Session["LoggedInStaffID"]}");
                }
                else if (Session["LoggedInAdminID"] != null)
                {
                    // Redirect to the admin profile page
                    Response.Redirect($"ProfileAdmin.aspx?adminID={Session["LoggedInAdminID"]}");
                }
                
            }
        }
    }
}
    
