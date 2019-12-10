using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace cw2
{
    public partial class MainLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //Obtain the connection string of the database
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
            //Creat the database connection
            con.Open();
            //Define database sql data insertion statemen
            String query = "select count(*) from Member where UserAccount='" + txtUsername.Text + "' and UserPassword='" + txtPassword.Text + "'";
            //Pass the received data into the database
            SqlCommand cmd = new SqlCommand(query, con);
            //Return the value of the row
            String output = cmd.ExecuteScalar().ToString();

            //If loop determines user type
            if (output == "1")
            {
                //To Session [ "User"] assignment that stores the user name
                Session["User"] = txtUsername.Text;
                //Jump to Homepage
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                //Show the error detail massage
                Response.Write("Your username or password is wrong!");
            }
        }

        protected void btnSign_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}