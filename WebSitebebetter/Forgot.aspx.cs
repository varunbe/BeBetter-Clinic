using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Drawing;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Forfot1 : System.Web.UI.Page
{
    string username;
    string password;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button_submit_Click(object sender, EventArgs e)
    {
        SqlConnection sqlcon = new SqlConnection("Data Source=SREEKANTHREDDY\\SQLEXPRESS;Initial Catalog=SR;Integrated Security=True");

        using (SqlCommand cmd = new SqlCommand("SELECT PatientEmail,Username,Password FROM tblPatient WHERE PatientEmail = @PatientEmail"))
        {
            cmd.Parameters.AddWithValue("@PatientEmail", TextBox_Email.Text.Trim());
            cmd.Connection = sqlcon;
            sqlcon.Open();
            using (SqlDataReader sdr = cmd.ExecuteReader())
            {
                if (sdr.Read())
                {
                    username = sdr["Username"].ToString();
                    password = sdr["Password"].ToString();
                    //                    patientemail=["PatientEmail"].Tostring();
                }
            }
            sqlcon.Close();
        }



        if (!string.IsNullOrEmpty(password))
        {
            MailMessage mm = new MailMessage("forgotpassswordbebetternoreply@gmail.com", TextBox_Email.Text.Trim());
            mm.Subject = "Password Recovery";
            mm.Body = string.Format("Hi {0},<br /><br />Your password is {1}.<br /><br />Thank You.", username, password);
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential();
            NetworkCred.UserName = "forgotpassswordbebetternoreply@gmail.com";
            NetworkCred.Password = "Better143";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);

            //string script = @"<script language=""javascript""> alert('Password sent successfully');
            //       </script>; ";
            ScriptManager.RegisterStartupScript(this, this.GetType(),
            "alert",
            "alert('password sent sucessfully');window.location ='Login.aspx';",
             true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(),
            "alert",
            "alert('Not in patient list');window.location ='Login.aspx';",
            true);
        }
    }
    protected void Button_cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");

    }
}