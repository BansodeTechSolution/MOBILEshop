using System;
using System.Configuration;
using System.Data.SqlClient;

public partial class reg : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Button1_Click(object sender, EventArgs e)
    {//registration information has been stored
        try
        {
            string insertqry = "insert into logintable values ('" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "');";
            SqlCommand cmd = new SqlCommand(insertqry, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lblerror.Text = TextBox1.Text + " has been register successfully";
            Session["email"] = TextBox1.Text;


        }
        catch (Exception ex)
        {
            lblerror.Text = ex.Message;
        }

    }
}