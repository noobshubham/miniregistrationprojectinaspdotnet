using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class registration : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Add_Your_Database_String_Here");

    protected void Button_login_Click(object sender, EventArgs e)
    {
        SqlDataAdapter adapter = new SqlDataAdapter("SELECT count(*) FROM register WHERE email='" + TextBox_email.Text + "' and password='" + TextBox_Password.Text + "' ", conn);
        DataTable dataTable = new DataTable();
        adapter.Fill(dataTable);
        if (dataTable.Rows[0][0].ToString() == "1")
        {
            Label_login.Text = "You're Login Successfully!";
        }
        else
        {
            Label_login.Text = "Data Not Found, Try Again!";
        }
    }
}