using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString; ;
        cmd.Connection = con;


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            cmd.CommandText = "INSERT INTO subjectaloted VALUES(@Sub_id,@Sub_name,@faculty_id,@Faculty_name,@Course,@Branch)";
            cmd.Parameters.AddWithValue("@Sub_id", DropDownList2.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@Sub_name", DropDownList6.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@Faculty_id", DropDownList5.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@Faculty_name", DropDownList7.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@Course", DropDownList1.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@Branch", DropDownList3.SelectedItem.ToString());

            con.Open();
            cmd.ExecuteNonQuery();
            Label1.Text = "Successful";
        }
        catch
        {
            Label1.Text = "Unsuccessful";
        }
        finally
        {
            con.Close();

        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
}