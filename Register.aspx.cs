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
    public partial class Register : System.Web.UI.Page
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
            //no code needed here
        }

        protected void btnRegister_Click1(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(dsReg.ConnectionString);

            SqlCommand cmd = new SqlCommand(dsReg.InsertCommand, conn);
            cmd.Parameters.AddWithValue("@User_Email", txtConfEmail.Text.Trim().ToUpper());
            cmd.Parameters.AddWithValue("@User_Pass", ComputeSha256Hash(txtConfPass.Text.Trim()));
            cmd.Parameters.AddWithValue("@User_FName", txtFName.Text.Trim());
            cmd.Parameters.AddWithValue("@User_LName", txtLName.Text.Trim());
            cmd.Parameters.AddWithValue("@User_YOB", Convert.ToInt64(txtYOB.Text.Trim()));

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("AccountCreated.aspx");

            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
            finally
            {
                if (conn.State == System.Data.ConnectionState.Open)
                {
                    conn.Close();
                }

            }

        }
    }
}