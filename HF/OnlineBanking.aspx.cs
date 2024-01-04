using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace HF
{
    public partial class OnlineBanking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ddlBankSelection_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlBankSelection.SelectedIndex == 0)
            {
                lblBankSelected.Text = "Please select your bank";
            }
            else if (ddlBankSelection.SelectedIndex == 1)
            {
                lblBankSelected.Text = "CIMB Bank";
            }
            else if (ddlBankSelection.SelectedIndex == 2)
            {
                lblBankSelected.Text = "Maybank";
            }
            else if (ddlBankSelection.SelectedIndex == 3)
            {
                lblBankSelected.Text = "Public Bank";
            }
            else if (ddlBankSelection.SelectedIndex == 4)
            {
                lblBankSelected.Text = "Hong Leong Bank";
            }
            else if (ddlBankSelection.SelectedIndex == 5)
            {
                lblBankSelected.Text = "RHB Bank";
            }
            else if (ddlBankSelection.SelectedIndex == 6)
            {
                lblBankSelected.Text = "AM Bank";
            }

            // if select the bank again, clear the text box
            if (IsPostBack == true)
            {
                txtAccNo.Text = string.Empty;
                txtAccPassword.Text = string.Empty;
            }


        }

        protected Boolean isValidAccNum(string accNum)
        {
            Boolean isValid = false;

            if (Regex.IsMatch(accNum, "^\\d{10}$") && ((ddlBankSelection.SelectedIndex == 1) || (ddlBankSelection.SelectedIndex == 3)))
            {
                //cimb bank & public bank
                isValid = true;
            }

            else if (Regex.IsMatch(accNum, "^\\d{11}$") && (ddlBankSelection.SelectedIndex == 4))
            {
                //hong leong bank
                isValid = true;
            }

            else if (Regex.IsMatch(accNum, "^\\d{12}$") && (ddlBankSelection.SelectedIndex == 2))
            {
                //maybank
                isValid = true;
            }

            else if (Regex.IsMatch(accNum, "^\\d{13}$") && (ddlBankSelection.SelectedIndex == 6))
            {
                //am bank
                isValid = true;
            }

            else if (Regex.IsMatch(accNum, "^\\d{14}$") && (ddlBankSelection.SelectedIndex == 5))
            {
                //rhb bank
                isValid = true;
            }

            return isValid;

        }



        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            if (!isValidAccNum(txtAccNo.Text))
            {
                revAccNum.IsValid = false;
                if ((ddlBankSelection.SelectedIndex == 1) || (ddlBankSelection.SelectedIndex == 3))
                {
                    //cimb public bank
                    revAccNum.ErrorMessage = "Account Number should be 10-digit.";
                }

                else if (ddlBankSelection.SelectedIndex == 2)
                {
                    // maybank
                    revAccNum.ErrorMessage = "Account Number should be 12-digit.";
                }

                else if (ddlBankSelection.SelectedIndex == 4)
                {
                    // hong leong bank
                    revAccNum.ErrorMessage = "Account Number should be 11-digit.";
                }

                else if (ddlBankSelection.SelectedIndex == 5)
                {
                    // rhb bank
                    revAccNum.ErrorMessage = "Account Number should be 14-digit.";
                }

                else if (ddlBankSelection.SelectedIndex == 6)
                {
                    // bank
                    revAccNum.ErrorMessage = "Account Number should be 13-digit.";
                }


            }

            if (Page.IsValid)
            {
                // Set payment type in Session for online banking
                Session["PaymentType1"] = "Online Banking";

                Response.Redirect("~/PaymentCompleted.aspx");
            }

        }



    }
}