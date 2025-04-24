using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//add class libraries
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;

namespace StudentPortfolio
{
    public partial class Login : System.Web.UI.Page
    {
        private string ComputeSha256Hash(string rawData)
        {
            using (SHA256 sha256Hash = SHA256.Create())
            {
                //create the hash and store it into a byte array
                byte[] bytes = sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(rawData));
                StringBuilder builder = new StringBuilder();

                //build our hexdecimal string
                foreach (byte b in bytes)
                {
                    //taking each byte and coverting to hex and appending it to the string
                    builder.Append(b.ToString("x2"));
                }
                //return hash to whatever called the function
                return builder.ToString();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //no code needed
        }

        protected void btLogin_Click(object sender, EventArgs e)
        {
            string strEmail = txtEmail.Text.ToUpper().Trim();
            string strHashPass = ComputeSha256Hash(txtPassword.Text.Trim());
            string strRetEmail = string.Empty;
            string strRetPass = string.Empty;

            SqlConnection conn = new SqlConnection(dsLogin.ConnectionString);


            try
            {
                // create a command and set its command text and connection properties
                SqlCommand cmd = new SqlCommand(dsLogin.SelectCommand, conn);
                // populate parameter with values
                cmd.Parameters.AddWithValue("@User_Email", strEmail);
                cmd.Parameters.AddWithValue("@User_Pass", strHashPass);

                //open the connection
                conn.Open();

                //execute the select command and fill the data reader
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    //populate the email variable
                    strRetEmail = reader.GetString(0).Trim();
                    strRetPass = reader.GetString(1).Trim();
                }
                if (strRetEmail == strEmail && strRetPass == strHashPass)
                {
                    //if they match
                    Session["Email"] = strEmail;
                    Response.Redirect("LoginSuccess.aspx");
                }
                else
                {
                    lblError.Text = "Invalid Email or password";
                }

            }
            //catch our errors
            catch (Exception ex)
            {
                lblError.Text += ex.Message;
            }

            finally
            {
                if (conn.State == System.Data.ConnectionState.Open)
                {
                    conn.Close();
                }
            }
        }

            /*if (txtEmail.Text.Trim() == strEmail && txtPassword.Text.Trim() == strPass)
            {
                Session["Email"] = txtEmail.Text;
                Response.Redirect("LoginSuccess.aspx");
            }
            else
            {
                lblError.Text = "Incorrect Email or Password";
            }*/
        

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}
