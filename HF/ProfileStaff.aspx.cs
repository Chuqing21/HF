using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static HF.ProfileStudent;

namespace HF
{
    public partial class ProfileStaff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["staffID"] != null)
                {
                    string staffID = Request.QueryString["staffID"];
                    lblStaffID.Text = staffID;

                }
            }
        }
    }
}