using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//add class libraries
using System.Data;
using System.Data.Sql;


namespace StudentPortfolio
{
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            if (!IsPostBack)
            {
                LoadUserData();
            }
        }

        protected void btnUpdate_Click1(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(dsUpdate.ConnectionString);

            SqlCommand cmd = new SqlCommand(dsUpdate.UpdateCommand, conn);
            cmd.Parameters.AddWithValue("@User_Email", lblEmail.Text.Trim().ToUpper());

            if(txtPass.Text.Trim() == string.Empty)
            {
                // use most recent password
                cmd.Parameters.AddWithValue("@User_Pass", lblPass.Text.Trim());
            }
            else
            {
                //we hash the value in the confirm txt box
                cmd.Parameters.AddWithValue("@User_Pass", ComputeSha256Hash(txtConfPass.Text.Trim()));
            }
            
            cmd.Parameters.AddWithValue("@User_FName", txtFName.Text.Trim());
            cmd.Parameters.AddWithValue("@User_LName", txtLName.Text.Trim());
            cmd.Parameters.AddWithValue("@User_YOB", Convert.ToInt64(txtYOB.Text.Trim()));

            try
            {
                dsUpdate.Update();
                conn.Open();
                cmd.ExecuteNonQuery();
                lblError.Text = "Password has been updated!";
                conn.Close();
                LoadUserData();

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

        private void LoadUserData()
        {
            //create and open the connection
            SqlConnection conn = new SqlConnection(dsUpdate.ConnectionString);

            //Create the command
            SqlCommand cmd = new SqlCommand(dsUpdate.SelectCommand, conn);
            cmd.Parameters.AddWithValue("@User_Email", Session["Email"].ToString());

            //process the read
            try
            {
                //open the conn
                conn.Open();

                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    //populate the controls
                    lblEmail.Text = reader[0].ToString();
                    lblPass.Text = reader[1].ToString();
                    txtFName.Text = reader[2].ToString();
                    txtLName.Text = reader[3].ToString();   
                    txtYOB.Text = reader[4].ToString(); 


                }
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message; 

            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }
            
        }

    }
}