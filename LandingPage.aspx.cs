using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LandingPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserSessionData"] != null && Session["UserSessionData"] is Dictionary<string, string>)
        {
            Dictionary<string, string> sessionData = (Dictionary<string, string>)Session["UserSessionData"];
            
            if (sessionData.ContainsKey("salutation") != null &&
                sessionData.ContainsKey("firstname") != null &&
                sessionData.ContainsKey("lastname") != null)
            {
                LabelWelcome.Text = "Welcome, " + sessionData["salutation"] + " " +
                    sessionData["firstname"] + " " +
                    sessionData["lastname"];
            }

            if (sessionData.ContainsKey("username") != null)
            {
                LabelUsername.Text = "Username: " + sessionData["username"];
            }

            if (sessionData.ContainsKey("gender") != null)
            {
                LabelGender.Text = "Gender: " + sessionData["gender"];
            }

            if (sessionData.ContainsKey("birthday") != null)
            {
                LabelBirthdate.Text = "Birthdate: " + sessionData["birthday"];
            }
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void ButtonLogout_Click(object sender, EventArgs e)
    {
        Session["UserSessionData"] = null;
        Response.Redirect("Login.aspx");
    }
}