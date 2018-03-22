<%@ Page Title="" Language="C#" MasterPageFile="./MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style type="text/css">
    #canvasMap {  
        width: 450px;
        height: 400px;  
        margin: 0px;  
        padding: 0px  
    }  
</style> 
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCxdF7WszxocURuMMTxDRztKEA2xqggKGY"></script>  
<script type="text/javascript">
    var map;
    function LoadGoogleMAP() {
        var myDefaultLatLong = { lat: 30.686, lng: -88.094 };
        var SetmapOptions = { zoom: 14, center: new google.maps.LatLng(myDefaultLatLong) };

        var marker = new google.maps.Marker({
            position: myDefaultLatLong,
            map: map,
            title: 'Location!'
        });

        map = new google.maps.Map(document.getElementById('canvasMap'), SetmapOptions);
        marker.setMap(map);
    }

    google.maps.event.addDomListener(window, 'load', LoadGoogleMAP);
</script>
<div class="col-lg-6 col-lg-offset-2">    
    <div style="max-width:900px">
    <asp:Table ID="Table1" runat="server">
        <asp:TableRow>
            <asp:TableHeaderCell><br /></asp:TableHeaderCell>            
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableHeaderCell HorizontalAlign="Left" style="font-family:OpenDyslexic; font-size:15px; padding-right:50px">
                Be Better Clinical Psychology<br />
                22 North Florida Street<br />
                Mobile, AL 36607<br />
                Ph : (251) 300-2743 <br />
                Fax: (251) 217-9079 <br />
                <a href="mailto:jamie@bebettermobile.com" style="text-decoration:none;">jamie@bebettermobile.com</a>
                <br />
                <br />
                <br />
                Hours of Operation: <br />              
                
                M: 8:30 AM - 4:00 PM (Dr. Koulianos) <br />                    
                F: 8:30 AM - 3:00 PM (Dr. Zlomke) <br />
                F: 8:00 AM - 12:00 PM (Shelby L. Cotner) <br />

            </asp:TableHeaderCell>
            <asp:TableHeaderCell HorizontalAlign="Center">
                <div id="canvasMap">
                </div>
            </asp:TableHeaderCell>
            
        </asp:TableRow>        
    </asp:Table>   
</div>               
</div>

</asp:Content>
