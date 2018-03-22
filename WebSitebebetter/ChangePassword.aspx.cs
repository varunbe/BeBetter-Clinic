using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Globalization;
using System.Configuration;


public partial class ChangePassword : System.Web.UI.Page
{
    String UName;
    String Pass_old;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button_cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void Button_submit_Click(object sender, EventArgs e)
    {
        if (TextBox_NewPassword.Text == TextBox_ConfirmationNewPassword.Text)
        {
            SqlConnection SQLConn = new SqlConnection("Data Source=SREEKANTHREDDY\\SQLEXPRESS;Initial Catalog=SR;Integrated Security=True");
            SqlDataAdapter SQLAdapter = new SqlDataAdapter("select * from tblPatient where password='" + TextBox_CurrentPassword.Text + "'", SQLConn);
            DataTable DT = new DataTable();
            SQLAdapter.Fill(DT);

            if (DT.Rows.Count == 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(),
        "alert",
        "alert('Invalid current password');window.location ='Home.aspx';",
         true);
                

            }
            else
            {
                SQLAdapter = new SqlDataAdapter("update tblPatient set password='" + TextBox_NewPassword.Text + "' where Username='" + Session["Username"].ToString() + "'", SQLConn);
                SQLAdapter.Fill(DT);
                ScriptManager.RegisterStartupScript(this, this.GetType(),
        "alert",
        "alert('Password Succeesfully changed');window.location ='Home.aspx';",
         true);


            }
        }
        else
        {

            Response.Write("<script>alert('Password miss match')</script>");
        }
            //SqlConnection con = new SqlConnection("Data Source=SREEKANTHREDDY\\SQLEXPRESS;Initial Catalog=SR;Integrated Security=True");
            //con.Open();
            //SqlDataAdapter da = new SqlDataAdapter("select * from tblPatient where Username='" + TextBox_username.Text + "'", con);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
            //con.Close();
            //con.Open();    
            //SqlCommand cmd = con.CreateCommand();
            //cmd.CommandText = "select Username from tblPatient where Username='"+ TextBox_username.Text;

            //UName= ((String)cmd.ExecuteScalar());
            //con.Close();
            //con.Open();
            //SqlCommand cmd1 = con.CreateCommand();
            //cmd1.CommandText = "select Password from tblPatient where Username='" + TextBox_username.Text;

            //String OLdpassword = ((String)cmd1.ExecuteScalar());
            //con.Close();

            ////string username = new CommandField("select Username from tblPatient where Username='" + TextBox_username.Text + "'",con);
            ////string OLdpassword = Pass_old;
            //if (OLdpassword == TextBox_CurrentPassword.Text)
            //{
            //    if (TextBox_NewPassword.Text == TextBox_ConfirmationNewPassword.Text)
            //    {
            //        con.Open();
            //        SqlCommand cmd2 = new SqlCommand("update tblPatient set Password='" + TextBox_NewPassword.Text + "' where Username='" + TextBox_username.Text + "'");
            //        int querystatus = cmd.ExecuteNonQuery();
            //        if (querystatus > 0)
            //        {
            //            Response.Write("<script>alert('Your Password changed successfully')</script>");
            //        }
            //        else
            //        {
            //            Response.Write("<script>alert('Your Password Not changed')</script>");

            //        }
            //    }
            //    else
            //    {
            //        Response.Write("<script>alert('Password miss match')</script>");
            //    }
            //}
            //else
            //{
            //    Response.Write("<script>alert('Old password is incorrect')</script>");

            //}
        }
 
    //catch
    //        {
    //            Response.Write("Please enter valid Username");
    //        }
    }
