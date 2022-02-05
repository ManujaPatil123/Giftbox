using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_shop
{
    public partial class UserDashbord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)

            {
                lblSuccess.Text = "Login Successful, Welcome" + Session["Username"].ToString();
            }
            else
            {
                Response.Redirect("~/SignIn.aspx");
            }

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SignIn.aspx");
            Session["Username"] = null;
        }
    }
}