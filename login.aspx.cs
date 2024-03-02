using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["email"] != null)
            Session["email"] = null;
    }
    
    protected void btnLog_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataAdapter sda = new SqlDataAdapter("Select Count(*) from logintable where emailaddress='" + txtUsername.Text + "' and password='" + txtPassword.Text + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows[0][0].ToString() == "1")
            {
                Session["email"] = txtUsername.Text;
                if (txtUsername.Text == "admin@gmail.com")
                    Response.Redirect("index2.aspx");
                else
                    Response.Redirect("index.aspx");


            }
            else
            {
                lblerror.Text = "Username or Password is Wrong";
            }
        }
        catch (Exception ex) { lblerror.Text = ex.Message; }
    }
}