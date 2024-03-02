using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null)
        {
            Label13.Text = "LOGIN";
            Label14.Text = "";
            Response.Redirect("login.aspx");
            
        }
        else
        {
            Label14.Text = Session["email"].ToString();
            Label13.Text = "LOGOUT";
            
        }
            
    }
    
}
