using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HF
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void imgBtnOnlineBanking_Click(object sender, ImageClickEventArgs e)
        {
            // Set the payment type to Online Banking in session
            //Session["PaymentType"] = "Online Banking";
            //Response.Redirect("~/OnlineBanking.aspx");
        }

        protected void imgBtnCreDebit_Click(object sender, ImageClickEventArgs e)
        {
            // Set the payment type to Credit/Debit Card in session
            //Session["PaymentType"] = "Credit/Debit Card";
            //Response.Redirect("~/Card.aspx");
        }
    }
}