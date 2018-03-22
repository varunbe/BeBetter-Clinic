using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Globalization;
using System.Net;
using System.Net.Mail;


public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["R"] == null)
        {
            Response.Redirect("Login.aspx");
        }
    }
    public void MsgBox(String msg)
    {
        Page.ClientScript.RegisterStartupScript(Page.GetType(), "Message Box", "<script language='javascript'>alert('" + msg + "')</script>");
    }
    public bool passwordValid()
    {
        int special = 0, digits = 0, capital = 0;

        foreach (var ch in PasswordTextBox.Value)
        {
            if (char.IsUpper(ch))
                capital++;
            if (char.IsDigit(ch))
                digits++;
            if (!((ch > 47 && ch < 58) || (ch > 64 && ch < 91) || (ch > 96 && ch < 123)))
                special++;

        }
        if (digits == 0 || special == 0 || capital == 0)
            return false;

        else
            return true;
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        if (fTextBox.Text == "" || lTextBox.Text == "" || DOBTextBox.Text == "" || ageTextBox.Text == "" ||
            zipCodeTextBox.Text == "" || streetTextBox.Text == "" || StatesDDL.SelectedItem.Text == "Select State" ||
            cityTextBox.Text == "" || PhoneTextBox.Text == ""
            || userTextBox.Text == "" || PasswordTextBox.Value == "" || confirm_PasswordTextBox.Value == " " || EmailID_TextBox.Text == " ")
        {
            MsgBox("Please complete all required fields.");
        }

        else if (insuranceDDL.SelectedItem.Text == "Please Select")
        {
            MsgBox("Please Select Insurance Type");
        }
        else if (userTextBox.Text.Length < 6)
        {
            MsgBox("Username must contain atleast 6 characters");
        }
        else
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-FK8T1TI\\SQLEXPRESS;Initial Catalog=SR;Integrated Security=True");
            con.Open();
            SqlCommand checkEmail = new SqlCommand("select Count(*) from tblPatient  where PatientEmail = '" + EmailID_TextBox.Text + "'", con);
            int count = Convert.ToInt32(checkEmail.ExecuteScalar().ToString());
            SqlCommand checkUsername = new SqlCommand("select Count(*) from tblPatient  where Username = '" + userTextBox.Text + "'", con);
            int temp = Convert.ToInt32(checkUsername.ExecuteScalar().ToString());
            if (count == 1)
            {
                MsgBox("EmailID already registered");
                EmailID_TextBox.Text = "";
                EmailID_TextBox.Focus();
            }
            else if (temp == 1)
            {
                MsgBox("Username already exist, choose a different one");
                userTextBox.Text = "";
                userTextBox.Focus();
            }
            else if (PasswordTextBox.Value.Length < 8)
            {
                MsgBox("your password must contain atleast 8 characters");
            }
            else if (!passwordValid())
            {
                Response.Write("<script>alert('Passowrd must contain atleast one number and a special character')</script>");
            }

            else if (PasswordTextBox.Value != confirm_PasswordTextBox.Value)
            {
                MsgBox("confirm Password doesnt match.");
            }
            else if ((Convert.ToInt32(ageTextBox.Text) <= 18) && (GFTextBox.Text == "NA" || LNTextBox.Text == "NA"))
            {
                MsgBox("Please provide Guardian information.");
            }
            else
            {
                SqlCommand cmd = new SqlCommand("AddPatientdetails", con);

                cmd.CommandType = CommandType.StoredProcedure;
                //SqlParameter IdIn = cmd.Parameters.Add
                //("@PatientFirstName", SqlDbType.VarChar);
                //      IdIn.Direction = ParameterDirection.Input;
                cmd.Parameters.Add("@PatientEmail", System.Data.SqlDbType.VarChar).Value = EmailID_TextBox.Text;
                cmd.Parameters.Add("@PatientFirstName", System.Data.SqlDbType.VarChar).Value = fTextBox.Text;
                cmd.Parameters.Add("@PatientMiddleName", SqlDbType.VarChar).Value = mTextBox.Text;
                cmd.Parameters.Add("@PatientLastName", SqlDbType.VarChar).Value = lTextBox.Text;
                cmd.Parameters.Add("@PatientDOB", SqlDbType.Date).Value = DateTime.ParseExact(DOBTextBox.Text, "MM/dd/yyyy", CultureInfo.InvariantCulture).Date;
                // cmd.Parameters.Add("@PatientDOB", SqlDbType.Date).Value = DateTime.Parse(DOBTextBox.Text.Trim()).ToString("mm/dd/yyyy", CultureInfo.InvariantCulture); 
                cmd.Parameters.Add("@PatientAge", SqlDbType.VarChar).Value = ageTextBox.Text;
                cmd.Parameters.Add("@PatientStreet", SqlDbType.VarChar).Value = streetTextBox.Text;
                cmd.Parameters.Add("@PatientCity", SqlDbType.VarChar).Value = cityTextBox.Text;
                cmd.Parameters.Add("@PatientTelephone", SqlDbType.NVarChar).Value = PhoneTextBox.Text;
                //   cmd.Parameters.Add("@PatientState", SqlDbType.VarChar).Value = stateTextBox.Text;
                cmd.Parameters.Add("@PatientState", SqlDbType.VarChar).Value = StatesDDL.Text;

                cmd.Parameters.Add("@PatientZip", SqlDbType.VarChar).Value = zipCodeTextBox.Text;

                cmd.Parameters.Add("GuardianFirstName", SqlDbType.VarChar).Value = GFTextBox.Text;

                cmd.Parameters.Add("@GuardianMiddleName", SqlDbType.VarChar).Value = MNTextBox.Text;

                cmd.Parameters.Add("@GuardianLastName", SqlDbType.VarChar).Value = LNTextBox.Text;

                cmd.Parameters.AddWithValue("@Insurance", SqlDbType.VarChar).Value = insuranceDDL.Text;

                cmd.Parameters.AddWithValue("@Username", SqlDbType.VarChar).Value = userTextBox.Text;

                cmd.Parameters.AddWithValue("@Password", SqlDbType.NVarChar).Value = PasswordTextBox.Value;

                cmd.Parameters.Add("@ConfirmationPassword", SqlDbType.NVarChar).Value = confirm_PasswordTextBox.Value;
                //   cmd.Parameters.Add("@LastAppointment", SqlDbType.Date).Value = DateTime.Parse(lastapptTextBox.Text.Trim()).ToString("mm/dd/yyyy", CultureInfo.InvariantCulture);
                //   cmd.Parameters.Add("@PatientDOB", SqlDbType.Date).Value = DateTime.Parse(DOBTextBox.Text.Trim()).ToString("mm/dd/yyyy", CultureInfo.InvariantCulture); 

                //  cmd.Parameters.Add("@LastAppointment", SqlDbType.Date).Value = DateTime.ParseExact(lastapptTextBox.Text, "mm/dd/yyyy", null).Date;
                //cmd.Parameters.Add("@LastAppointment", SqlDbType.Date).Value = DateTime.ParseExact(lastapptTextBox.Text,"mm/dd/yyyy", null).Date;




                // con.Open();

                cmd.ExecuteNonQuery();
                con.Close();

                MailMessage mm = new MailMessage("forgotpassswordbebetternoreply@gmail.com", EmailID_TextBox.Text.Trim());
                mm.Subject = "Thank You For Registering";
                mm.Body = string.Format("Hi {0},<br /><br />You have sucessfully registered.<br /><br />Thank You.", fTextBox.Text);
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

                ScriptManager.RegisterStartupScript(this, this.GetType(),
                "alert",
                "alert('Your information has been submitted successfully');window.location ='Login.aspx';",
                 true);
                //Response.Write("<script>alert('Your information has been submitted successfully')</script>");

                fTextBox.Text = "";
                lTextBox.Text = "";
                DOBTextBox.Text = "";
                ageTextBox.Text = "";
                streetTextBox.Text = "";
                zipCodeTextBox.Text = "";
                cityTextBox.Text = "";
                StatesDDL.ClearSelection();
                PhoneTextBox.Text = "";
                insuranceDDL.ClearSelection();

            }
        }
    }
}