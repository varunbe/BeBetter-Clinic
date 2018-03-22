<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="col-lg-6 col-lg-offset-3">    
        <div style="max-width:600px">
        <div class="well well-lg">
        
        <h2>Register</h2>
        <p>
        Login is required to complete forms or schedule an appointment. To complete the login process, please either log in below or register.
        </p>
        <div class="panel panel-default">
            <div class="form-horizontal" role="form">
                <div class="form-group">
                <br />                
                <asp:Label ID="Label1" runat="server" Text="Password" Style= "float: left; padding-left: 25px; font-family: OpenDyslexic; font-size: 12px;" AssociatedControlID="passwordTextBox"></asp:Label>    
                    <div class="col-sm-10">
                        <asp:TextBox ID="passwordTextBox" runat="server" Style="font-family: OpenDyslexic; font-size: 15px;"></asp:TextBox>
                    </div>
                    <br />
                </div>    
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            
                            <asp:Button ID="registerButton" runat="server" Text="Register" Cssclass="button" Style="font-family: OpenDyslexic; font-size: 15px;" OnClick="registerButton_Click" />
                        </div>
                     </div>
                
            </div>       
        </div>
        <p>
        If you are a new user, please enter the password provided by the office when you scheduled your appointment and register below.
        </p>
        </div>
        </div>
        </div>
        <div class="col-lg-6 col-lg-offset-3">
            <div style="max-width: 600px">
                <div class="well well-lg">
                    <h2>Login</h2>
                    <p>
                        If you have already registered, then please enter your login credentials below -
                    </p>

                    <div class="panel panel-default">
                        <br />
                        <div class="form-horizontal" role="form">
                            <div class="form-group">
                                <asp:Label ID="userlbl" runat="server" Style="float: left; padding-left: 25px; font-family: OpenDyslexic; font-size: 12px;" Text="UserName" AssociatedControlID="usrTextBox"></asp:Label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="usrTextBox" Style="font-family: OpenDyslexic; font-size: 15px;" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <div class="form-group">

                                <asp:Label ID="pwlbl" runat="server" Style="float: left; padding-left: 25px;  font-family: OpenDyslexic; font-size: 12px;" Text="Password" AssociatedControlID="pwdTextBox"></asp:Label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="pwdTextBox" runat="server" Style="font-family: OpenDyslexic; font-size: 15px;" TextMode="Password"></asp:TextBox>
                                </div>
                                <br />
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <asp:Button ID="submitButton" runat="server" Cssclass="button" Style="font-family: OpenDyslexic; font-size: 15px;" OnClick="submitButton_Click" Text="Submit" />
                                    <asp:Button ID="Button_forgot" runat="server" Cssclass="button" Style="font-family: OpenDyslexic; font-size: 15px;" OnClick="Button_forgot_Click" Text="Forgot Password" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>
    </div>
</asp:Content>