using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;



public partial class registration : System.Web.UI.Page
{
    SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select email from registration where email = @email ", con1);
        cmd.Parameters.AddWithValue("@email", TextBox2.Text);

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        con1.Open();
        int i = cmd.ExecuteNonQuery();

        if (dt.Rows.Count > 0)
        {
            Label1.Text = "Email already exsist";

        }
        else {
            SqlCommand accmd = new SqlCommand("insert into registration(name, email, contact, password, DateTimeOfRegistration) values (@Name, @Email, @ContactNo, @Password, @DateTimeOfRegistration)", con1);
            accmd.Parameters.AddWithValue("@Name", TextBox1.Text);
            accmd.Parameters.AddWithValue("@Email", TextBox2.Text);
            accmd.Parameters.AddWithValue("@ContactNo", TextBox3.Text);
            accmd.Parameters.AddWithValue("@Password", TextBox4.Text);
            accmd.Parameters.AddWithValue("@DateTimeOfRegistration", DateTime.Now);
            accmd.ExecuteNonQuery();
            Response.Redirect("Login.aspx");
            con1.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}