using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class home : System.Web.UI.Page
{
    SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["id"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con1.Open();
        String str = "";
        for (int i = 0; i <= CheckBoxList1.Items.Count - 1; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                if (str == "")
                {
                    str = CheckBoxList1.Items[i].Text;
                }
                else
                {
                    str += "," + CheckBoxList1.Items[i].Text;
                }
            }
        }

        String str1 = "";
        for (int i = 0; i <= CheckBoxList2.Items.Count - 1; i++)
        {
            if (CheckBoxList2.Items[i].Selected)
            {
                if (str1 == "")
                {
                    str1 = CheckBoxList2.Items[i].Text;
                }
                else
                {
                    str1 += "," + CheckBoxList2.Items[i].Text;
                }
            }
        }

        String str2 = "";
        for (int i = 0; i <= CheckBoxList3.Items.Count - 1; i++)
        {
            if (CheckBoxList3.Items[i].Selected)
            {
                if (str2 == "")
                {
                    str2 = CheckBoxList3.Items[i].Text;
                }
                else
                {
                    str2 += "," + CheckBoxList3.Items[i].Text;
                }
            }
        }

        String str3 = "";
        for (int i = 0; i <= CheckBoxList4.Items.Count - 1; i++)
        {
            if (CheckBoxList4.Items[i].Selected)
            {
                if (str3 == "")
                {
                    str3 = CheckBoxList4.Items[i].Text;
                }
                else
                {
                    str2 += "," + CheckBoxList4.Items[i].Text;
                }
            }
        }

        String str4 = "";
        for (int i = 0; i <= CheckBoxList6.Items.Count - 1; i++)
        {
            if (CheckBoxList6.Items[i].Selected)
            {
                if (str4 == "")
                {
                    str4 = CheckBoxList6.Items[i].Text;
                }
                else
                {
                    str4 += "," + CheckBoxList6.Items[i].Text;
                }
            }
        }

        String str5 = "";
        for (int i = 0; i <= CheckBoxList5.Items.Count - 1; i++)
        {
            if (CheckBoxList5.Items[i].Selected)
            {
                if (str5 == "")
                {
                    str5 = CheckBoxList5.Items[i].Text;
                }
                else
                {
                    str5 += "," + CheckBoxList5.Items[i].Text;
                }
            }
        }

        String str6 = "";
        for (int i = 0; i <= CheckBoxList7.Items.Count - 1; i++)
        {
            if (CheckBoxList7.Items[i].Selected)
            {
                if (str6 == "")
                {
                    str6 = CheckBoxList7.Items[i].Text;
                }
                else
                {
                    str6 += "," + CheckBoxList7.Items[i].Text;
                }
            }
        }

        SqlCommand cmd = new SqlCommand("Insert into itemdetails(whohastopay) values('" + str + "')", con1);
        cmd.ExecuteNonQuery();


        SqlCommand accmd = new SqlCommand("insert into itemdet(sessionid, rent, rentpayer, wifi, wifipayer, party, partypayer, food, foodpayer, electricity, electricitypayer, gas, gaspayer, other, otherpayer, status) values (@sessionid, @rent, @rentpayer, @wifi, @wifipayer, @party, @partypayer, @food, @foodpayer, @electricity, @electricitypayer, @gas, @gaspayer, @other, @otherpayer, @status)", con1);
        accmd.Parameters.AddWithValue("@sessionid", Label1.Text);
        accmd.Parameters.AddWithValue("@rent", TextBox1.Text);
        accmd.Parameters.AddWithValue("@rentpayer", str);
        accmd.Parameters.AddWithValue("@wifi", TextBox2.Text);
        accmd.Parameters.AddWithValue("@wifipayer", str1);
        accmd.Parameters.AddWithValue("@party", TextBox3.Text);
        accmd.Parameters.AddWithValue("@partypayer", str2);
        accmd.Parameters.AddWithValue("@food", TextBox4.Text);
        accmd.Parameters.AddWithValue("@foodpayer", str3);
        accmd.Parameters.AddWithValue("@electricity", TextBox6.Text);
        accmd.Parameters.AddWithValue("@electricitypayer", str4);
        accmd.Parameters.AddWithValue("@gas", TextBox5.Text);
        accmd.Parameters.AddWithValue("@gaspayer", str5);
        accmd.Parameters.AddWithValue("@other", TextBox8.Text);
        accmd.Parameters.AddWithValue("@otherpayer", str6);
        accmd.Parameters.AddWithValue("@status", "Active");
        accmd.ExecuteNonQuery();


        con1.Close();
    }
}