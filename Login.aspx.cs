using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cw2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCanel_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainLogin.aspx");
        }

        protected void btnNewSign_Click(object sender, EventArgs e)
        {
            string strsql;
            string account = txtAccInput.Text;
            string name = txtNameInput.Text;
            string pass = txtPassInput.Text;

            //Get the connection string of the database
            string str = "Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog=User;Integrated Security=True";
            //Create a database connection instance
            SqlConnection Con = new SqlConnection(str);
            //Open database
            Con.Open();
            //Define database sql data insertion statement
            strsql = "insert into Member (UserName, UserAccount, UserPassword)values('" + name + "','" + account
                 + "','" + pass + "')";
            //Pass the received data into the database
            SqlCommand myCmd = new SqlCommand(strsql, Con);
            //The return value is the number of rows affected by the command
            myCmd.ExecuteNonQuery();
            //Close the database connection
            Con.Close();
            Response.Redirect("MainLogin.aspx");
        }
    }
}