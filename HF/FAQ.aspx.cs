using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HF
{
    public partial class FAQ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnFAQ1_Click(object sender, EventArgs e)
        {
            lblAns1.Visible = !lblAns1.Visible;
            if (lblAns1.Visible)
            {
                lblAns1.Text = "To register for a course, log in to your account on our website, navigate to the \"Course Catalog,\" select the desired course, and click on the \"Enroll\" button.";
            }
        }
       
        protected void btnFAQ3_Click(object sender, EventArgs e)
        {
            lblAns3.Visible = !lblAns3.Visible;

            if (lblAns3.Visible)
            {
                lblAns3.Text = "Once a course registration is completed, changes to the course selection are not permitted. It is important to carefully review and confirm your chosen course before finalizing the registration process. ";
            }
        }

        protected void btnFAQ4_Click(object sender, EventArgs e)
        {
            lblAns4.Visible = !lblAns4.Visible;

            if (lblAns4.Visible)
            {
                lblAns4.Text = "We accept various payment methods, including credit/debit cards and online payment systems. During the registration process, you will be prompted to choose your preferred payment method.";
            }
        }

        protected void btnFAQ5_Click(object sender, EventArgs e)
        {
            lblAns5.Visible = !lblAns5.Visible;

            if (lblAns5.Visible)
            {
                lblAns5.Text = "Yes, you can register for multiple courses simultaneously. ";
            }
        }

        protected void btnFAQ6_Click(object sender, EventArgs e)
        {
            lblAns6.Visible = !lblAns6.Visible;

            if (lblAns6.Visible)
            {
                lblAns6.Text = "Registration deadlines vary for each course and may be found in the course details. It is advisable to register as early as possible to secure your spot, as some courses have limited availability.";
            }
        }

        protected void btnFAQ7_Click(object sender, EventArgs e)
        {
            lblAns7.Visible = !lblAns7.Visible;

            if (lblAns7.Visible)
            {
                lblAns7.Text = "No, unfortunately, registration transfers to another person are not allowed. ";
            }
        }

        
    }
}