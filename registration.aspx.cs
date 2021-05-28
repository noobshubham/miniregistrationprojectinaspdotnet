using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class registration : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Add_Your_Database_String_Here");

    protected void Button_register_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("INSERT INTO register (username, email, password) VALUES ('" + TextBox_Username.Text + "', '" + TextBox_email.Text + "', '" + TextBox_Password.Text + "')", conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        Label_registeration.Text = "Registration Successful!";
        conn.Close();
    }
    protected void Button_login_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}