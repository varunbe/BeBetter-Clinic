using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Appointment : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            this.MasterPageFile = "~/MasterPage2.master";
        }
        else {
            Session.Clear();
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

        
    }
}