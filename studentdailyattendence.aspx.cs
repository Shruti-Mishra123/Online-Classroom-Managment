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
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            string s1;
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox txt = (CheckBox)(GridView1.Rows[i].Cells[4].FindControl("CheckBox1"));
                if (txt.Checked)
                    s1 = "P";
                else
                    s1 = "A";

                cmd.CommandText = "INSERT INTO studentAttendance VALUES(@Student_Name,@Student_id,@Faculty_id,@Date,@Timing,@Sub_Id,@status,@Sub_name)";
                cmd.Parameters.AddWithValue("@Student_Name", GridView1.Rows[i].Cells[1].Text);
                cmd.Parameters.AddWithValue("@Student_id", GridView1.Rows[i].Cells[0].Text);
                cmd.Parameters.AddWithValue("@Faculty_id", GridView1.Rows[i].Cells[4].Text);
                cmd.Parameters.AddWithValue("@Date", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Timing",DropDownList7.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@Sub_id", GridView1.Rows[i].Cells[2].Text);
                cmd.Parameters.AddWithValue("@status",s1);
                cmd.Parameters.AddWithValue("@Sub_name", GridView1.Rows[i].Cells[3].Text);

                cmd.ExecuteNonQuery();
                cmd.Parameters.Clear();
            }
                Label3.Text = "Inserted sucessfully ";
            }

        
        catch
        {
           Label3.Text ="Already exist.";
        }
        finally
        {
            con.Close();

        }
    }
    protected void Calendar1_SelectionChanged(object sender, System.EventArgs e)
    {

        TextBox1.Text = Calendar1.SelectedDate.ToString("dd-MMM yyyy");
        Calendar1.Visible = false;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
}