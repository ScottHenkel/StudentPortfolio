using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentPortfolio
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btLogin_Click(object sender, EventArgs e) //Static Login
                                                                 //User ID: scrappy@unt.edu
                                                                 //Password: P@ss1   
        {
            string strEmail = "scrappy@unt.edu";
            string strPass = "P@ss1";

            if (txtEmail.Text.Trim() == strEmail && txtPassword.Text.Trim() == strPass)
            {
                Session["Email"] = txtEmail.Text;
                Response.Redirect("LoginSuccess.aspx");
            }
            else
            {
                lblError.Text = "Incorrect Email or Password";
            }
        }
    }
}
