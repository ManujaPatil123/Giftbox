using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;

namespace Online_shop
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnresetPass_Click(object sender, EventArgs e)
        {

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Gift_BoxDB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("Select * from tbl_Users where Email=@Email", con);
                     cmd1.Parameters.AddWithValue("@Email", txtEmailID.Text);
                
                SqlDataAdapter sda = new SqlDataAdapter(cmd1);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    String myGUID = Guid.NewGuid().ToString();
                    int Uid = Convert.ToInt32(dt.Rows[0][0]);

                    SqlCommand cmd = new SqlCommand("Insert into ForgotPass(Id,Uid,RequestDateTime) values('" + myGUID + "','" + Uid + "',GETDATE())", con);
                    cmd.ExecuteNonQuery();


                    //send reset link through email

                    string ToEmailAddress = dt.Rows[0][3].ToString();
                    string Username = dt.Rows[0][1].ToString();
                    string EmailBody ="HI ,"+Username+ ",<br/><br/>Click the link below to reset your Password.<br/> http://localhost:56612/RecoverPassword.aspx?id="+myGUID;

                    MailMessage PassRecMail = new MailMessage("arpanamhatre123456@gmail.com", ToEmailAddress);

                    PassRecMail.Body = EmailBody;
                    PassRecMail.IsBodyHtml = true;
                    PassRecMail.Subject = "Reset Password";


                    using (SmtpClient client = new SmtpClient())
                    {
                        client.EnableSsl = true;
                        client.UseDefaultCredentials = false;
                        client.Credentials = new NetworkCredential("arpanamhatre123456@gmail.com", "sejalmhatre");
                        client.Host = "smtp.gmail.com";
                        client.Port = 587;
                        client.DeliveryMethod = SmtpDeliveryMethod.Network;
                        client.Send(PassRecMail);

                    }


                    //--------------


                    lblresetpasswordMsg.Text = "Reset link sent! Check Email to reset password";
                    lblresetpasswordMsg.ForeColor = System.Drawing.Color.Green;
                    txtEmailID.Text = string.Empty;
                }
                else
                {
                    lblresetpasswordMsg.Text = "OOps! This Email Does Not Exist....Try again";
                    lblresetpasswordMsg.ForeColor = System.Drawing.Color.Red;
                    txtEmailID.Text = string.Empty;
                    txtEmailID.Focus();
                }
                }


            }
        }
    }
