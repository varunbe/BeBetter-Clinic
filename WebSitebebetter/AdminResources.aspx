<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdminResources.aspx.vb" Inherits="WebsiteBebetterr_WebSitebebetter_AdminResource" %>

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

    <style>
        
        #gvResources {
            height: 708px;
            width: 1146px;
        }
    </style>
</head>
<body>
    <form id="gvResources" runat="server">
        <div class="container-fluid">
            <div class="row">
                <br /><br />
                <div class="centered">
                    <asp:Label ID="Label2" Cssclass="labels" runat="server" BackColor="#4CAF50" BorderColor="#653F14" BorderStyle="Double" BorderWidth="3px" Font-Bold="True" Font-Size="XX-Large" ForeColor="#653F14" Text="Resources Information"></asp:Label>
                </div>
            </div>
            <br /><br />
            <div class="row">
                <div class="col-sm-1 col-md-6 col-lg-4">
                    <asp:HyperLink ID="createLink" Cssclass="labels" runat="server" NavigateUrl="ResourceEdit.aspx?mode=add" Font-Bold="True" ForeColor="#653F14">Create New</asp:HyperLink><br /><br />
                    <asp:HyperLink ID="backToAdminHome" Cssclass="labels" runat="server" NavigateUrl="AdminHome.aspx" Font-Bold="True" ForeColor="#653F14">Return to Administrative Homepage</asp:HyperLink><br /><br />
                    <asp:Label ID="Label1" Cssclass="labels" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#653F14" Text="Search by Topic"></asp:Label>
                    <asp:TextBox ID="SearchTypeTextBox" Cssclass="labels" runat="server" BorderColor="#653F14" BorderWidth="3px" Width="130"></asp:TextBox><br /><br />
                    <div>
                        <asp:Button ID="resetTypeButton" Cssclass="button" runat="server" OnClick="clearTypeButton_Click" Text="Show All" />
                        <asp:Button ID="searchButton" Cssclass="button" runat="server" OnClick="searchButton_Click" Text="Search" Height="50px" />
                    </div>
                    <br /><br /><br /><br /><br /><br /><br /><br /><br />
                </div>
            
            <div class="col-sm-11 col-md-6 col-lg-8">
            <div class="col-sm-6">
                <br /><br />
                
                    <asp:Image ID="Image1" runat="server" BorderColor="#653F14" BorderStyle="Double" ImageUrl="~/images/beach.jpg" Style="height: 156px; width: 305px; margin-left:120%" BackColor="#4CAF50" BorderWidth="3px" />
                    
                    <br /><br /><br />
                    <div class="centered">
                        <asp:GridView ID="gvResource" Cssclass="labels" runat="server" AutoGenerateColumns="False" DataKeyNames="ResourcesID" DataSourceID="dsResourceAdmin" Style="height: 69px; width: 836px; margin-left:50%" BackColor="White" BorderColor="#653F14" BorderStyle="Solid" BorderWidth="3px" AllowPaging="True" HorizontalAlign="Center" AllowSorting="True">
                        <Columns>
                            <asp:BoundField DataField="ResourcesID" HeaderText="ResourcesID" InsertVisible="False" ReadOnly="True" SortExpression="ResourcesID" Visible="False" />
                            <asp:BoundField DataField="ResourceDescription" ItemStyle-HorizontalAlign="Center" HeaderText="Topic"></asp:BoundField>
                            <asp:BoundField DataField="ResourceLink" ItemStyle-HorizontalAlign="Center" HeaderText="Resource Link"></asp:BoundField>
                            <asp:HyperLinkField DataNavigateUrlFields="ResourcesID" DataNavigateUrlFormatString="ResourceEdit.aspx?resourceid={0}&amp;mode=edit" Text="Edit" />
                            <asp:HyperLinkField DataNavigateUrlFields="ResourcesID" DataNavigateUrlFormatString="ResourceEdit.aspx?resourceid={0}&amp;mode=read" Text="Details" />
                            <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1"
                                    runat="server"
                                    CausesValidation="False"
                                    CommandName="Delete"
                                    Text="Delete"
                                    OnClientClick="return confirm('Are you sure?')"></asp:LinkButton>
                            </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <HeaderStyle ForeColor="#653F14" />
                        </asp:GridView>
                    </div>
                </div>
            </div>
            </div>
            <%--<asp:GridView ID="gvResource" runat="server" AutoGenerateColumns="False" DataKeyNames="ResourcesID" DataSourceID="dsResourceAdmin" Style="height: 69px; width: 836px; z-index: 1; left: 250px; top: 330px; position: absolute" BackColor="White" BorderColor="#653F14" BorderStyle="Solid" BorderWidth="3px" AllowPaging="True" HorizontalAlign="Center" AllowSorting="True">
                <Columns>
                    <asp:BoundField DataField="ResourcesID" HeaderText="ResourcesID" InsertVisible="False" ReadOnly="True" SortExpression="ResourcesID" />
                    <asp:BoundField DataField="ResourceDescription" ItemStyle-HorizontalAlign="Center" HeaderText="ResourceDescription" SortExpression="ResourceDescription"></asp:BoundField>
                    <asp:BoundField DataField="ResourceLink" ItemStyle-HorizontalAlign="Center" HeaderText="ResourceLink" SortExpression="ResourceLink"></asp:BoundField>
                </Columns>
                <HeaderStyle ForeColor="#653F14" />
            </asp:GridView>--%>
            

            <asp:Label ID="hiddenTypeLabel" runat="server" Style="z-index: 1; left: 753px; top: 239px; position: absolute" Visible="False"></asp:Label>
            
            
        


        



        <asp:SqlDataSource ID="dsResourceAdmin" runat="server" ConnectionString="<%$ ConnectionStrings:DrKoulianosConnectionString %>"
            DeleteCommand="DELETE FROM [tblResources] WHERE [ResourcesID] = @ResourcesID"
            InsertCommand="INSERT INTO [tblResources] ([ResourceDescription], [ResourceLink]) VALUES (@ResourceDescription, @ResourceLink)"
            SelectCommand="SELECT * FROM [tblResources] WHERE ([ResourceDescription] LIKE @ResourceDescription + '%') ORDER BY ResourceDescription"
            UpdateCommand="UPDATE [tblResources] SET [ResourceDescription] = @ResourceDescription, [ResourceLink] = @ResourceLink WHERE [ResourcesID] = @ResourcesID">

            <SelectParameters>
                <asp:ControlParameter ControlID="hiddenTypeLabel" DefaultValue="%" Name="ResourceDescription" PropertyName="Text" Type="String" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="ResourcesID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ResourceDescription" Type="String" />
                <asp:Parameter Name="ResourceLink" Type="String" />
            </InsertParameters>
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
