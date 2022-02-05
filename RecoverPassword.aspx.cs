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
    public partial class RecoverPassword : System.Web.UI.Page
    {
        string GUIDvalue;
        DataTable dt = new DataTable();
        int Uid;


        protected void Page_Load(object sender, EventArgs e)
        {



            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Gift_BoxDB"].ConnectionString))
            {
                con.Open();
                GUIDvalue = Request.QueryString["id"];
                if (GUIDvalue !=null)
                {
                    SqlCommand cmd = new SqlCommand("select * from ForgotPass where Id=@Id",con);
                    cmd.Parameters.AddWithValue("@Id", GUIDvalue);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    
                    sda.Fill(dt);
                    if (dt.Rows.Count != 0)
                    {
                        Uid = Convert.ToInt32(dt.Rows[0][1]);
                    }
                    else
                    {
                        lblmsg.Text = "Your Password Reset Link is Expired or Invalid...try again";
                        lblmsg.ForeColor = System.Drawing.Color.Red;
                    }
                }
                else
                {
                    Response.Redirect("~/Default.aspx");
                }

            }
            if(!IsPostBack)
            {

                if(dt.Rows.Count!=0)
                {
                    txtConfirmPassword.Visible = true;
                    txtNewPassword.Visible = true;
                    lblNewPassword.Visible = true;
                    lblConfirmPassword.Visible = true;
                    btnresetPass.Visible = true;
                }
                else
                {
                    lblmsg.Text = "Your password link is Expired or Invalid......try again";
                    lblmsg.ForeColor = System.Drawing.Color.Red;

                }

            }
        }

        protected void btnresetPass_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Gift_BoxDB"].ConnectionString))
            {
               
                con.Open();
                SqlCommand cmd = new SqlCommand("Update tbl_Users set Password=@p where Uid=@Uid", con);
                cmd.Parameters.AddWithValue("@p", txtNewPassword.Text);
                cmd.Parameters.AddWithValue("@Uid", Uid);
                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Password reset successful');</script>");
            }
        }
    }
}