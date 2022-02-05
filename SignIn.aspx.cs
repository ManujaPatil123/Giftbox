using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Online_shop
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

                if (Request.Cookies["Username"] != null && Request.Cookies["Password"] != null)
                {
                    txtUsername.Text= Request.Cookies["Username"].Value;
                    txtPassword.Text= Request.Cookies["Password"].Value;
                    CheckBox1.Checked = true;
                }

            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {


            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Gift_BoxDB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tbl_Users where Username=@username and Password=@password", con);
                cmd.Parameters.AddWithValue("@username",txtUsername.Text);
                cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {

                    if(CheckBox1.Checked)
                    {
                        Response.Cookies["Username"].Value = txtUsername.Text;
                        Response.Cookies["Password"].Value = txtPassword.Text;

                        Response.Cookies["Username"].Expires = DateTime.Now.AddDays(7);
                        Response.Cookies["Password"].Expires = DateTime.Now.AddDays(7);

                    }
                    else
                    {
                        Response.Cookies["Username"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);
                    }

                    string Usertype;
                    Usertype = dt.Rows[0][5].ToString().Trim();

                    if(Usertype=="User")
                    {
                        Session["Username"] = txtUsername.Text;

                        Response.Redirect("~/Home.aspx");
                    }

                    if (Usertype == "Admin")
                    {
                        Session["Username"] = txtUsername.Text;

                        Response.Redirect("~/AdminDashbord.aspx");
                    }


                }
                else
                {

                    lblError.Text = "Invalid Username or Password";


                }



               // Response.Write("<script> alert('Registration Successfullly done');</script>");
                clr();
                con.Close();

               // lblMsg.Text = "Login Successful";
               // lblMsg.ForeColor = System.Drawing.Color.Green;

            }

        }

        private void clr()
        {
            txtPassword.Text = string.Empty;
            txtUsername.Text = string.Empty;
            txtUsername.Focus();
        }
    }
}