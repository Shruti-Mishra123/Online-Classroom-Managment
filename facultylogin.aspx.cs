using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class faculty : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString; ;
        cmd.Connection = con;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            cmd.CommandText = "SELECT * FROM facultydetails  WHERE Faculty_id=@Faculty_id AND pswd = @pswd";
            cmd.Parameters.AddWithValue("@Faculty_id", TextBox1.Text);
            cmd.Parameters.AddWithValue("@pswd", TextBox2.Text);
            con.Open();
            dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Session["fid"] = TextBox1.Text;
                Response.Redirect("~/Faculty/studentdailyattendence.aspx");
            }
            else
                Label1.Text = "UserNamE PassworD do nOt mAtch";

        }
        catch
        { }
        finally
        {
            dr.Close();
            con.Close();
        }
    }
}