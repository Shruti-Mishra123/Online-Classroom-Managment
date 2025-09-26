using System;
using System.Collections;
using System.Configuration;
using System.Data;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;


public partial class _Default : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "";
        con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        con.Open();
        string str1 = "select * from newsInfo";
        SqlDataAdapter da = new SqlDataAdapter(str1, con);
        DataSet ds = new DataSet();
        da.Fill(ds, "newsInfo");
        int i = 1;
        foreach (DataRow dr in ds.Tables["newsInfo"].Rows)
        {

            str += "* " + dr[1] + "</br><hr/></br>";
            i++;
        }

        Label2.Text = str.ToString();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["sid"] = "";
        Response.Redirect("~/home.html");
    }
}
