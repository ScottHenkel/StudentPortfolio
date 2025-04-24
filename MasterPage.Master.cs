using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentPortfolio
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Get the current page's filename.
            string currentPage = System.IO.Path.GetFileName(Request.Url.AbsolutePath);

            // If user is not logged in and not already on Login.aspx, redirect to Login.aspx.
            if (Session["Email"] == null &&
                !currentPage.Equals("Login.aspx", StringComparison.OrdinalIgnoreCase) &&
                !currentPage.Equals("Register.aspx", StringComparison.OrdinalIgnoreCase) &&
                !currentPage.Equals("AccountCreated.aspx", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("Login.aspx");
            }

        }
    }
}