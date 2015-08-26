using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UsersConnectionString"].ConnectionString);

        conn.Open();
        string checkIfValidUser = "SELECT COUNT(*) FROM Users WHERE username = '" + TextBoxUsername.Text + "'";
        SqlCommand validusercomm = new SqlCommand(checkIfValidUser, conn);
        int foundUsernameCount = Convert.ToInt32(validusercomm.ExecuteScalar().ToString());
        conn.Close();

        if (foundUsernameCount >= 1)
        {
            /* Verify username and password */
            conn.Open();
            string verifyUserQuery = "SELECT password FROM Users WHERE username = '" + TextBoxUsername.Text + "'";
            SqlCommand correctpasswordcomm = new SqlCommand(verifyUserQuery, conn);
            string password = correctpasswordcomm.ExecuteScalar().ToString();
            conn.Close();

            if (password == TextBoxPassword.Text)
            {
                conn.Open();
                string getUserDataQuery = "SELECT * FROM Users WHERE username = '" + TextBoxUsername.Text + "'";
                SqlCommand userdatacomm = new SqlCommand(getUserDataQuery, conn);
                SqlDataReader userdatareader = userdatacomm.ExecuteReader();
                if (userdatareader.Read())
                {
                    Dictionary<string, string> sessionData = new Dictionary<string, string>();
                    sessionData.Add("id", userdatareader[0].ToString());
                    sessionData.Add("firstname", userdatareader[1].ToString());
                    sessionData.Add("lastname", userdatareader[2].ToString());
                    sessionData.Add("gender", userdatareader[3].ToString());
                    sessionData.Add("salutation", userdatareader[4].ToString());
                    sessionData.Add("birthday", userdatareader[5].ToString());
                    sessionData.Add("username", userdatareader[6].ToString());
                    sessionData.Add("password", userdatareader[7].ToString());
                    sessionData.Add("aboutme", userdatareader[8].ToString());
                    sessionData.Add("accesslevel", userdatareader[9].ToString());
                    Session["UserSessionData"] = sessionData;
                }
                conn.Close();

                Response.Write("Login Successful!");
                Response.Redirect("LandingPage.aspx");
            }
            else
            {
                Response.Write("Wrong password.");
            }
        }
        else
        {
            Response.Write("Username doesn't exist!");
        }
    }
}