<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Appointment.aspx.cs" Inherits="Appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <div class="centered">
        <div class="well well-lg">
            <h2> Please contact our office phone number (251)-300-2743 </h2>
            <p>
                <br />
                <asp:Image ID="Image1" runat="server" Height="308px" ImageUrl="~/images/image.png" Width="495px" CssClass="img-responsive" /> 
            </p>
        </div>
    </div>
    <%--<asp:Table ID="Table1" runat="server" style="font-family:OpenDyslexic;font-size:15px;">
    <asp:TableRow>
        <asp:TableHeaderCell HorizontalAlign="Right" style="padding-bottom:10px;">Appointment Type</asp:TableHeaderCell>
        <asp:TableHeaderCell HorizontalAlign="Left">
            <asp:DropDownList ID="id_Appointment" runat="server" style="height: 25px; width: 200px;font-family:OpenDyslexic;">
                <asp:ListItem>Initial Evaluation</asp:ListItem>
                <asp:ListItem>Testing</asp:ListItem>
                <asp:ListItem>Feedback</asp:ListItem>
                <asp:ListItem>ADOS</asp:ListItem>
                <asp:ListItem>CRM</asp:ListItem>
                <asp:ListItem>Consultation</asp:ListItem>
            </asp:DropDownList>
        </asp:TableHeaderCell>            
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableHeaderCell HorizontalAlign="Right" style="padding-bottom:10px;">Provider</asp:TableHeaderCell>
        <asp:TableHeaderCell HorizontalAlign="Left">
            <asp:DropDownList ID="id_Provider" runat="server" style="height: 25px; width: 200px;font-family:OpenDyslexic;">
                <asp:ListItem>Dr. Joanna T. Koulianos</asp:ListItem>
                <asp:ListItem>Dr. Kimberly R. Zlomke</asp:ListItem>
                <asp:ListItem>Shelby L. Cotner</asp:ListItem>
            </asp:DropDownList>
        </asp:TableHeaderCell>            
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableHeaderCell HorizontalAlign="Right" style="padding-bottom:10px;">Available Appointment</asp:TableHeaderCell>
        <asp:TableHeaderCell HorizontalAlign="Left"></asp:TableHeaderCell>            
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableHeaderCell HorizontalAlign="Right"><asp:Button ID="submit"  runat="server"  Text="Submit" PostBackUrl="~/WebsiteBebetterr/WebSitebebetter/images/underconstruction.jpg" /></asp:TableHeaderCell>
        <asp:TableHeaderCell></asp:TableHeaderCell>            
    </asp:TableRow>
    </asp:Table>--%>
</asp:Content>