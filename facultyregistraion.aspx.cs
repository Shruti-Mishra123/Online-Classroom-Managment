using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class facultyregistraion : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString; ;
        cmd.Connection = con;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            cmd.CommandText = "INSERT INTO facultydetails VALUES(@Faculty_id,@Faculty_name,@phone,@email,@pswd)";
            cmd.Parameters.AddWithValue("@Faculty_id", TextBox1.Text);
            cmd.Parameters.AddWithValue("@faculty_name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@phone", TextBox3.Text);
            cmd.Parameters.AddWithValue("@email", TextBox4.Text);
            cmd.Parameters.AddWithValue("@pswd", TextBox5.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            Label2.Text = "Successful Registration";
        }
        catch
        {
            Label2.Text = "unsuccessful Registration";
        }
        finally
        {
            con.Close();

        }


    }
}