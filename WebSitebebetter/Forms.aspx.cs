using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forms : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"]== null)
        {
            Session.Clear();
            Response.Redirect("Login.aspx");
            Response.Write("Welcome to Login Form");
        }
        //for PROTECTING THE PAGE WITH LOGIN PROTECTION
        //if logged in OK...
        //if not WILL BE REDIRECTED TO LOGIN PAGE UNTILL SUCCESSFULL LOGIN
        //if (Session["LoggedIn"].Equals("No"))
        //{
        //    Response.Redirect("Login.aspx");
        //}
       // Session test = "test";
       // Boolean isLoggedIn = Session["LoggedIn"].ToString()";

        //if (isLoggedIn)
        //{
        //    Response.Redirect("Login.aspx");
        //}
      /*  else
        {
            Response.Redirect("Forms.aspx");
        }
        */

        
    }
}