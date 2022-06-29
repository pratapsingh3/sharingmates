using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class monthly : System.Web.UI.Page
{
    SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    int count = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["id"].ToString();
        Panel1.Visible = false;
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand("select * from itemdet", con1);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        // dt is datatable and by using Compute Property we are calculating Sum of Price Column
        string sum = dt.Compute("Sum(rent)", "").ToString();
        Label5.Text = sum.ToString();
        string sum1 = dt.Compute("Sum(wifi)", "").ToString();
        Label8.Text = sum1.ToString();
        string sum2 = dt.Compute("Sum(party)", "").ToString();
        Label11.Text = sum2.ToString();
        string sum3 = dt.Compute("Sum(food)", "").ToString();
        Label14.Text = sum3.ToString();
        string sum4 = dt.Compute("Sum(electricity)", "").ToString();
        Label17.Text = sum4.ToString();
        string sum5 = dt.Compute("Sum(gas)", "").ToString();
        Label20.Text = sum5.ToString();
        string sum6 = dt.Compute("Sum(other)", "").ToString();
        Label23.Text = sum6.ToString();

        double total = int.Parse(sum) + int.Parse(sum1) + int.Parse(sum2) + int.Parse(sum3) + int.Parse(sum4) + int.Parse(sum5) + int.Parse(sum6);
        Label2.Text = total.ToString();
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;

        con1.Open();
        SqlCommand bcmd = new SqlCommand("select count(session) from room ", con1);
        count = (int)bcmd.ExecuteScalar();
        if (count > 0)
        {
            Label24.Text = " " + count + " ";
        }
        con1.Close();
    }
}