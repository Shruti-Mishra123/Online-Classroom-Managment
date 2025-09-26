using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class Adminlogin : System.Web.UI.Page
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
            cmd.CommandText = "INSERT INTO subdetails VALUES(@Sub_id,@Sub_name,@course,@branch,@semester,@G_total,@Subject_uniueid)";
            cmd.Parameters.AddWithValue("@Sub_id", TextBox1.Text);
            cmd.Parameters.AddWithValue("@sub_name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@course", DropDownList2.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@branch", DropDownList3.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@semester", DropDownList4.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@G_total","");
            cmd.Parameters.AddWithValue("@Subject_uniueid","");
                
                con.Open();
            cmd.ExecuteNonQuery();
            Label2.Text = "Successful Added";
        }
        catch
        {
            Label2.Text = "Unsuccessful/already Exists.";
        }
        finally
        {
            con.Close();

        }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}