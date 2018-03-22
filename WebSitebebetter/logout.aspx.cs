using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["LoggedIn"] = "No";
        Session.Clear();
        Response.Write("<script>alert('User: '" + Session["username"] + " Loged out Successfully')</script>");
        Response.Redirect("Home.aspx");
    }
}