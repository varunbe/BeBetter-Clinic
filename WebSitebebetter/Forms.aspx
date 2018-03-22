<%@ Page Title="" Language="C#" MasterPageFile="./MasterPage2.master" AutoEventWireup="true" CodeFile="Forms.aspx.cs" Inherits="Forms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style271 {
        }

        .auto-style272 {
            z-index: 1;
            left: 624px;
            top: -311px;
            position: relative;
            height: 146px;
            width: 105px;

        }
        h3{
            color: #774615;
            font-family:OpenDyslexic;

        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/IntialEvaluation.aspx">Intial Evaluation</asp:HyperLink>-->
    <div><h3>Forms</h3><br />
        <div class="menu">
            <div class="panel list-group">
                    <a href="#" class="list-group-item" data-toggle="collapse" data-target="#dropdown" style="color:#4ACF50; font-family:OpenDyslexic" data-parent="#menu">Initial Evaluation</a>
                        <div class="sublinks-collapse" id="dropdown">
                            <a class="list-group-item large" style="margin-left:2.5%; font-family:OpenDyslexic" href="Forms/Be Better ADULT Hx Form.pdf">Be Better Adult Hx Form</a>
                            <a class="list-group-item large" style="margin-left:2.5%;font-family:OpenDyslexic" href="Forms/Cancellation Agreement.pdf">Cancellation Agreement</a>
                            <a class="list-group-item large" style="margin-left:2.5%; font-family:OpenDyslexic" href="Forms/Child_Information_Release to Ins.pdf">Child Information Release to Insurance</a>
                            <a class="list-group-item large" style="margin-left:2.5%; font-family:OpenDyslexic" href="Forms/Consent for Release of Confidential Information.pdf">Consent for Release of Confidential Information</a>
                            <a class="list-group-item large" style="margin-left:2.5%; font-family:OpenDyslexic" href="Forms/Consent_And Alternate_Contact_Form.pdf">Consent And Alternate Contact Form</a>
                            <a class="list-group-item large" style="margin-left:2.5%; font-family:OpenDyslexic" href="Forms/Family_Contact_Information.pdf">Family Contact Information</a>
                            <a class="list-group-item large" style="margin-left:2.5%; font-family:OpenDyslexic" href="Forms/HIPAA_Authorization_For_Release_of_Information_Form.pdf">HIPAA Authorization For Release of Information Form</a>
                            <a class="list-group-item large" style="margin-left:2.5%; font-family:OpenDyslexic" href="Forms/Informed Consent Dr. Koulianos.pdf">Informed Consent Dr.Koulianos</a>
                            <a class="list-group-item large" style="margin-left:2.5%; font-family:OpenDyslexic" href="Forms/Informed Consent Dr. Zlomke.pdf">Informed Consent Dr.Zlomke</a>
                            <a class="list-group-item large" style="margin-left:2.5%; font-family:OpenDyslexic" href="Forms/Medical_History_Form_pre-school.pdf">Medical History Form Pre school</a>
                            <a class="list-group-item large" style="margin-left:2.5%; font-family:OpenDyslexic" href="Forms/Medical_History_Form_school age.pdf">Medical History Form School Age</a>
                            <a class="list-group-item large" style="margin-left:2.5%; font-family:OpenDyslexic" href="Forms/notice_of_privacy_practices.pdf">Notice of Privacy Practices</a>
                        </div>
                    
                    <a href="#" class="list-group-item" data-toggle="collapse" data-target="#dropdown1" style="color:#4ACF50; font-family:OpenDyslexic" data-parent="#menu">Surrogacy/Infertility</a>
                        <div class="sublink-collapse" id="dropdown1">      
                            <a class="list-group-item large" style="margin-left:2.5%;font-family:OpenDyslexic" href="Forms/Consent And Agreement (surrogate).pdf">Consent and Agreement Surrogacy</a>
                        </div>
            </div>
        </div>
        <br />

    </div>
</asp:Content>
