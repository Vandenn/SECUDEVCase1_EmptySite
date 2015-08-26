using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UsersConnectionString"].ConnectionString);

            conn.Open();
            string checkIfValidUser = "SELECT COUNT(*) FROM Users WHERE username = '" + TextBoxUsername.Text + "'";
            SqlCommand sqlcomm = new SqlCommand(checkIfValidUser, conn);
            int sameUsernameCount = Convert.ToInt32(sqlcomm.ExecuteScalar().ToString());
            conn.Close();

            if (sameUsernameCount >= 1)
            {
                Response.Write("Username already taken!");
            }
        }
    }
    protected void RegisterButton_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UsersConnectionString"].ConnectionString);

            conn.Open();
            string addUserToDBQuery = "INSERT INTO Users (firstname, lastname, gender, salutation, birthday, username, password, aboutme, accesslevel)" +
                "VALUES (@firstname, @lastname, @gender, @salutation, @birthday, @username, @password, @aboutme, @accesslevel)";
            SqlCommand sqlcomm = new SqlCommand(addUserToDBQuery, conn);
            sqlcomm.Parameters.AddWithValue("@firstname", TextBoxFirstName.Text);
            sqlcomm.Parameters.AddWithValue("@lastname", TextBoxLastName.Text);
            sqlcomm.Parameters.AddWithValue("@gender", RadioButtonListGender.SelectedValue.ToString());
            sqlcomm.Parameters.AddWithValue("@salutation", DropDownListSalutation.SelectedValue.ToString());
            sqlcomm.Parameters.AddWithValue("@birthday", DropDownListBirthMonth.SelectedValue.ToString() + "/" + DropDownListBirthDay.SelectedValue.ToString() + "/" + DropDownListBirthYear.SelectedValue.ToString());
            sqlcomm.Parameters.AddWithValue("@username", TextBoxUsername.Text);
            sqlcomm.Parameters.AddWithValue("@password", TextBoxPassword.Text);
            sqlcomm.Parameters.AddWithValue("@aboutme", TextBoxAboutMe.Text);
            sqlcomm.Parameters.AddWithValue("@accesslevel", DropDownListAccessLevel.SelectedValue.ToString());
            sqlcomm.ExecuteNonQuery();
            Response.Write("Registration successful!");
            Response.Redirect("Login.aspx");
            conn.Close();
        }
        catch (Exception exp)
        {
            Response.Write(exp.ToString());
        }
    }
}