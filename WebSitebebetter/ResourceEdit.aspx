<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ResourceEdit.aspx.vb" Inherits="WebsiteBebetterr_WebSitebebetter_ResourceEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- jQuery CDN -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" />

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    <!-- CSS -->
    <link href="stylesheet/StyleSheet.css" rel="stylesheet" />
    <link href="fontawesome/css/font-awesome.min.css" rel="stylesheet" />

   
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="centered">
            <br /><br /><br /><br /><br />
            <asp:Label ID="Label2" Cssclass="labels" runat="server" BackColor="#4CAF50" BorderColor="#653F14" BorderStyle="Double" BorderWidth="3px" Font-Bold="True" Font-Size="XX-Large" ForeColor="#653F14" Text=" Update Resources "></asp:Label><br /><br />
            <br />
            <asp:DetailsView ID="dvResourceDetails" Cssclass="labels" runat="server" AutoGenerateRows="False" DataKeyNames="ResourcesID" DataSourceID="dsResourceEdit" OnItemInserted="dvResourceDetails_ItemInserted" OnItemUpdated="dvResourceDetails_ItemUpdated" Style="height: 142px; width: 394px;" BackColor="White" BorderColor="#653F14" BorderStyle="Solid" BorderWidth="3px">
                <Fields>
                    <asp:BoundField DataField="ResourcesID" HeaderText="ResourcesID" InsertVisible="False" ReadOnly="True" SortExpression="ResourcesID" Visible="False" />
                    <asp:BoundField DataField="ResourceDescription" HeaderText="Resource Topic" SortExpression="ResourceDescription" />
                    <asp:BoundField DataField="ResourceLink" HeaderText="Resource Link" SortExpression="ResourceLink" />
                    <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView><br />
            <asp:HyperLink ID="HyperLinkBackToResources" Cssclass="labels" runat="server" NavigateUrl="AdminResources.aspx" Font-Bold="True" ForeColor="#653F14">Back to Resources List</asp:HyperLink>
            <br /><br /><br /><br /><br />
                  
            </div>
            <%-- <asp:DetailsView ID="dvResourceDetails" runat="server" AutoGenerateRows="False" DataKeyNames="ResourcesID" DataSourceID="dsResourceEdit" OnItemInserted="dvResourceDetails_ItemInserted" OnItemUpdated="dvResourceDetails_ItemUpdated" Style="z-index: 1; left: 39px; top: 89px; position: absolute; height: 142px; width: 394px; right: 474px;" BackColor="White" BorderColor="#653F14" BorderStyle="Solid" BorderWidth="3px">
                <Fields>
                    <asp:BoundField DataField="ResourcesID" HeaderText="ResourcesID" InsertVisible="False" ReadOnly="True" SortExpression="ResourcesID" Visible="False" />
                    <asp:BoundField DataField="ResourceDescription" HeaderText="Resource Topic" SortExpression="ResourceDescription" />
                    <asp:BoundField DataField="ResourceLink" HeaderText="Resource Link" SortExpression="ResourceLink" />
                    <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>--%>

            <asp:SqlDataSource ID="dsResourceEdit" runat="server" ConnectionString="<%$ ConnectionStrings:EditResourcesConnectionString %>" DeleteCommand="DELETE FROM [tblResources] WHERE [ResourcesID] = @ResourcesID" InsertCommand="INSERT INTO [tblResources] ([ResourceDescription], [ResourceLink]) VALUES (@ResourceDescription, @ResourceLink)" SelectCommand="SELECT * FROM [tblResources] WHERE ([ResourcesID] = @ResourcesID)" UpdateCommand="UPDATE [tblResources] SET [ResourceDescription] = @ResourceDescription, [ResourceLink] = @ResourceLink WHERE [ResourcesID] = @ResourcesID">
                <DeleteParameters>
                    <asp:Parameter Name="ResourcesID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ResourceDescription" Type="String" />
                    <asp:Parameter Name="ResourceLink" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter Name="ResourcesID" QueryStringField="resourceid" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ResourceDescription" Type="String" />
                    <asp:Parameter Name="ResourceLink" Type="String" />
                    <asp:Parameter Name="ResourcesID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
          
        </div>
    </form>
</body>
</html>
