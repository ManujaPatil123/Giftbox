using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Online_shop
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Gift_BoxDB"].ConnectionString);
        }

        protected void txtLogin_Click(object sender, EventArgs e)
        {
            if(isformvalid())
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Gift_BoxDB"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into tbl_Users (Username,Password,Email,Name,Usetype) Values('" + txtUsername.Text + "','" + txtPassword.Text + "','" + txtEmail.Text + "','" + txtName + "','User')", con);
                    cmd.ExecuteNonQuery();

                    Response.Write("<script> alert('Registration Successfullly done');</script>");
                    clr();
                    con.Close();

                    lblMsg.Text = "Registration Successfullly done";
                    lblMsg.ForeColor = System.Drawing.Color.Green;

                }
                Response.Redirect("~/SignIn.aspx");
            }

            else
            {
                Response.Write("<script> alert('Registration Failed');</script>");


                lblMsg.Text = "All Fields Are Mandatory";
                lblMsg.ForeColor = System.Drawing.Color.Red;
                

            }

        }

        private bool isformvalid()
        {
            if (txtUsername.Text == "")
            {
                Response.Write("<script> alert('username invalid');</script>");
                txtUsername.Focus();
                return false;
            }

            else if (txtPassword.Text == "")
            {
                Response.Write("<script> alert('Password invalid');</script>");
                txtPassword.Focus();
                return false;
            }

            else if (txtCpassword.Text != txtPassword.Text)
            {
                Response.Write("<script> alert('Password does not match');</script>");
                txtCpassword.Focus();
                return false;

            }


            else if (txtEmail.Text == "")
            {
                Response.Write("<script> alert('Email invalid');</script>");
                txtEmail.Focus();
                return false;
            }

            else if (txtName.Text == "")
            {
                Response.Write("<script> alert('Name invalid');</script>");
                txtName.Focus();
                return false;
            }

            return true;

        }

        private void clr()
        {
            txtName.Text = string.Empty;
            txtPassword.Text = string.Empty;
            txtUsername.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtCpassword.Text = string.Empty;
        }

    }




   

}