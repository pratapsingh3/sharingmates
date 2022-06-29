using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class joinroom : System.Web.UI.Page
{
    SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["id"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select id, password from room where id = @id and Password = @Password", con1);
        cmd.Parameters.AddWithValue("@id", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        con1.Open();
        int i = cmd.ExecuteNonQuery();
  

        if (dt.Rows.Count > 0)
        {
            SqlCommand accmd = new SqlCommand("insert into room(id, session, dateofcreate, joinorcreate, status) values (@id, @session, @dateofcreate, @joinorcreate, @status)", con1);
            accmd.Parameters.AddWithValue("@id", TextBox1.Text);
            accmd.Parameters.AddWithValue("@session", Label2.Text);
            accmd.Parameters.AddWithValue("@dateofcreate", DateTime.Now);
            accmd.Parameters.AddWithValue("@joinorcreate", "join");
            accmd.Parameters.AddWithValue("@status", "Active");
            accmd.ExecuteNonQuery();
            Response.Redirect("Home.aspx");
            con1.Close();

            Session.RemoveAll();

            
        }
        else
        {
            Label1.Text = "* Your Room id or password is incorrect";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
    }
}