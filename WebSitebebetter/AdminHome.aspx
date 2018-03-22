<%@ Page Title="" Language="C#" MasterPageFile="MasterPage2.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="WebsiteBebetterr_WebSitebebetter_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 713px;
            left: 31px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div style="height: 593px; width: 100%;"class="well well-lg">
        <div class="container-fluid">
            <div class="row">        
            <asp:Label ID="Label1" runat="server" Cssclass="labels" BackColor="#4CAF50" BorderColor="#653F14" BorderStyle="Double" BorderWidth="3px" Font-Bold="True" Font-Size="X-Large" ForeColor="#653F14" Style="z-index: 1; left: 605px; top: 476px; position: absolute" Text="Administrative Home Page"></asp:Label>
            </div>
            <br /><br />
            <div class="row">
                <div class="col-sm-1 col-md-6 col-lg-4">
                    <asp:HyperLink ID="patientUpdateLink" Cssclass="labels" runat="server" NavigateUrl="AdminPatients.aspx" Font-Bold="True" ForeColor="#653F14">Update Patient Information</asp:HyperLink><br /><br />
                    <asp:HyperLink ID="CRUDresources" Cssclass="labels" runat="server" NavigateUrl="AdminResources.aspx" Font-Bold="True" ForeColor="#653F14">Update Resources</asp:HyperLink><br /><br />
                    <asp:HyperLink ID="alertsLink" Cssclass="labels" runat="server" NavigateUrl="Alerts.aspx" Font-Bold="True" ForeColor="#653F14">Manage Alerts</asp:HyperLink><br /><br />
                    <asp:HyperLink ID="HyperLink_Print" Cssclass="labels" runat="server"   Font-Bold="True" ForeColor="#653F14" NavigateUrl="~/Print.aspx">Print Reports</asp:HyperLink><br /><br />
                </div>
                <div class="col-sm-11 col-md-6 col-lg-8">
                    <div class="col-sm-6">           
                    <asp:Image ID="AdminHomePic" runat="server" BorderColor="#653F14" BorderWidth="5px" ImageUrl="~/images/Dr.KoulianosGirls.jpg" Style="left: 250px; height: 354px; width: 423px; top: 540px;" CssClass="img-responsive"/>
                    </div>
                    <div class="col-sm-6">
                    <asp:Image ID="Image1" runat="server" BorderColor="#653F14" BorderStyle="Solid" BorderWidth="5px" ImageUrl="~/images/Dr.KoulianosGirls2.jpg" Style="z-index: 1; left: 800px; width: 423px; height: 354px; top: 540px; background-color: #99FF99" CssClass="img-responsive"/>
                    </div>
                </div>
            </div>
        </div>

    </div>


</asp:Content>