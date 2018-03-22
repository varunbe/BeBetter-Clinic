<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Forgot.aspx.cs" Inherits="Forfot1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="col-lg-6 col-lg-offset-3">
    <div style="max-width:800px">
        <div class="well well-lg">
            <h2> Change Password </h2><br />
            <div class="panel panel-default">
            <br />
            <div class="form-horizontal">
            <div class="form-group"> 
            <asp:Label ID="Label1" runat="server" Style="float: left; padding-left: 25px" Text="Please enter your EmailID to get the password :"></asp:Label><br /><br />
            <asp:Label ID="Label2" runat="server" Style="float: left; padding-left: 25px" Text="EmailID"></asp:Label>
            <div class="col-sm-10">
            <asp:TextBox ID="TextBox_Email" runat="server"></asp:TextBox> <br /><br />
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button ID="Button_submit" runat="server" OnClick="Button_submit_Click" Text="Submit" />
                    <asp:Button ID="Button_cancel" runat="server" OnClick="Button_cancel_Click" Text="Cancel" />
                </div>
                </div>
            </div>
            </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>

