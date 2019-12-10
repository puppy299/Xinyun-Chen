using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cw2
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Determine whether there is user login information through the server-side session
            if (Session["User"] != null)
            {
                //Show the login successfully information
                Response.Write("Welcome " + Session["User"]);
            }
        }

        protected void btnLogoff_Click1(object sender, EventArgs e)
        {
            //Delete the value corresponding to "User" in the session
            Session.Remove("User");
            Response.Redirect("MainLogin.aspx");
        }
    }
}