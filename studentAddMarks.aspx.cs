using System;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

        con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString; ;
        cmd.Connection = con;
        if (IsPostBack)
        {

            GridView1.Visible = true;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                TextBox txt = (TextBox)(GridView1.Rows[i].Cells[4].FindControl("TextBox2"));
                cmd.CommandText = "INSERT INTO feedmarks VALUES(@Student_Name,@Student_id,@Sub_name,@Sub_id,@marks)";
                cmd.Parameters.AddWithValue("@Student_Name", GridView1.Rows[i].Cells[1].Text);
                cmd.Parameters.AddWithValue("@Student_id", GridView1.Rows[i].Cells[0].Text);
                cmd.Parameters.AddWithValue("@Sub_name", GridView1.Rows[i].Cells[3].Text);
                cmd.Parameters.AddWithValue("@Sub_id", GridView1.Rows[i].Cells[2].Text);
                cmd.Parameters.AddWithValue("@marks", txt.Text);

                cmd.ExecuteNonQuery();
                cmd.Parameters.Clear();                
            }
            Label3.Text = "Inserted sucessfully ";

        }
        catch
        {
           Label3.Text = "Already Exist";
        }
        finally
        {
            con.Close();

        }
    }
}