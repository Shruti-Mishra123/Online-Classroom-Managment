using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Member_MemberIn_ReturnBook : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";
        cmd.Connection = conn;
    }
    protected void btnstatus_Click(object sender, EventArgs e)
    {
       
        conn.Open();
        try
        {
            cmd.CommandText = "select * from facultydetails WHERE Faculty_id ='" + txtbook0.Text + "' AND  pswd='" + txtbook.Text + "'";

            dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                dr.Close();
                cmd.Parameters.Clear();
                cmd.CommandText = "update facultydetails set pswd='" + txtstud0.Text + "' WHERE Faculty_id='" + txtbook0.Text + "'";

                cmd.ExecuteNonQuery();
                lblmsg.Text = "Password Successfully updated...";
            }
        }
        catch
        {
            lblmsg.Text = "Password not updated...";
        }
    }
    protected void btnchange_Click(object sender, EventArgs e)
    {
        
    }
}