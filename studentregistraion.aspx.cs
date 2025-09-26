using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class studentregistraion : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString; ;
        cmd.Connection = con;


    }
    protected void Button1_Click2(object sender, EventArgs e)
    {
        
        try
        {
            cmd.CommandText = "INSERT INTO studentdeatils VALUES(@Student_Name,@Student_id,@Course,@Session,@Branch,@sem,@phone_no,@Email_id,@password)";
            cmd.Parameters.AddWithValue("@Student_Name",TextBox1.Text);
            cmd.Parameters.AddWithValue("@Student_id", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Course" ,DropDownList1.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@Session" , TextBox5.Text);
            cmd.Parameters.AddWithValue("@Branch", DropDownList2.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@sem" , TextBox9.Text);
            cmd.Parameters.AddWithValue("@Phone_no" , TextBox7.Text);
            cmd.Parameters.AddWithValue("@Email_id" , TextBox8.Text);
            cmd.Parameters.AddWithValue("@password", TextBox10.Text);
            
            con.Open();
            cmd.ExecuteNonQuery();
            Label1.Text = "Successful Registration";
        }
        catch
        {
            Label1.Text = "Unsuccessful Registration";
        }
        finally
        {
            con.Close();

        }

     

    }
}