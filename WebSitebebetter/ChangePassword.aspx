<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="col-lg-6 col-lg-offset-3">
<div style="max-width:900px">
<div class="well well-lg">
<h2 > Change Password </h2><br />
<asp:Label ID="Label_detail" Cssclass="labels" runat="server" Text="Please enter following details:"></asp:Label><br /><br />
<asp:Label ID="Label_currentpasword" Cssclass="labels" runat="server" Text="Current Password :"></asp:Label><br />
<asp:TextBox ID="TextBox_CurrentPassword" Cssclass="labels" runat="server"></asp:TextBox><br />
<asp:Label ID="Label_Newpassword" Cssclass="labels" runat="server" Text="New Password :"></asp:Label><br />
<asp:TextBox ID="TextBox_NewPassword" Cssclass="labels" runat="server"></asp:TextBox><br />
<asp:Label ID="Label_Confirm" Cssclass="labels" runat="server" Text="Confirm New Password :"></asp:Label><br />
<asp:TextBox ID="TextBox_ConfirmationNewPassword" Cssclass="labels" runat="server"></asp:TextBox><br /><br />
<asp:Button ID="Button_submit" Cssclass="button" runat="server" OnClick="Button_submit_Click" Text="Submit" />
<asp:Button ID="Button_cancel" Cssclass="button" runat="server" OnClick="Button_cancel_Click" Text="Cancel" />
</div>
</div>
</div>
</asp:Content>

