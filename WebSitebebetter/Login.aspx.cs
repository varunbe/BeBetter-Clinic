using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.HtmlControls;

public partial class Login : System.Web.UI.Page
{
    public string registerPassword = "22bebetter";
    public string adminUserName = "jkoulianos";
    public string adminPassword = "Psych@22#*";


    protected void Page_Load(object sender, EventArgs e)
    {
        HtmlInputText text = new HtmlInputText();
        text.Value = "Password";
        text.MaxLength = 20;
        text.Size = 22;

        // Add the control to the Controls collection of the 
        // PlaceHolder control.
        passwordTextBox.Controls.Clear();
        passwordTextBox.Controls.Add(text);

        if(passwordTextBox.Text == registerPassword)
        {
            Session.Add("R", passwordTextBox.Text);
            Response.Redirect("Register.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {       
    }
protected void submitButton_Click(object sender, EventArgs e)
{
    if (usrTextBox.Text == adminUserName && pwdTextBox.Text == adminPassword)
    {
        Session["username"] = usrTextBox.Text;
        Response.Redirect("AdminHome.aspx");
    }
    else if (usrTextBox.Text == "" || pwdTextBox.Text == "")
    {
        Response.Write("<script>alert('Please enter username and password')</script>");
    }

    else
    {
        SqlConnection con;
        SqlCommand cmd;
        con = new SqlConnection("Data Source=DESKTOP-FK8T1TI\\SQLEXPRESS;Initial Catalog=SR;Integrated Security=True");

        con.Open();
        cmd = new SqlCommand("select Count(*) from tblPatient  where Username = '" + usrTextBox.Text + "'", con);
        int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
        con.Close();
        if (temp == 1)
        {
            con.Open();
            String checkPassword = ("Select Password from tblPatient WHERE Username= '" + usrTextBox.Text + "'");
            SqlCommand passCmd = new SqlCommand(checkPassword, con);
            String password = passCmd.ExecuteScalar().ToString();
            con.Close();
            if (password == pwdTextBox.Text)
            {
                Session["username"] = usrTextBox.Text;
                Response.Redirect("Forms.aspx");
            }
            else
            {
                Response.Write("<script>alert('Password is incorrect')</script>");
            }


        }
        else
        {
            Response.Write("<script>alert('username does not exist')</script>");
        }

    }
}
protected void registerButton_Click(object sender, EventArgs e)
{
    if (passwordTextBox.Text == registerPassword)
    {
        Response.Redirect("Register.aspx");

    }
    else{
        
        Response.Write("<script>alert('Please Enter valid UserName and Password')</script>");
    }
   


}
protected void Button_forgot_Click(object sender, EventArgs e)
{
    Response.Redirect("Forgot.aspx");
}
}