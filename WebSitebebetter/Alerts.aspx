<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Alerts.aspx.vb" Inherits="WebsiteBebetterr_WebSitebebetter_Alerts" %>

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
        body{
            background-color: #4CAF50;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="col-sm-1 col-md-6 col-lg-6">
                <br /><br /><br />
                <asp:HyperLink ID="backToAdminHome" runat="server" NavigateUrl="AdminHome.aspx" Font-Bold="True" ForeColor="#653F14">Return to Administrative Homepage</asp:HyperLink><br /><br />
                <asp:HyperLink ID="hlAlerts" runat="server" Font-Bold="True" ForeColor="#653F14" NavigateUrl="AlertsList.aspx">Go to Alerts List</asp:HyperLink>
            </div>
            <div class="col-sm-11 col-md-6 col-lg-6" style="margin-left:30%">
                <asp:Label ID="patientTitleLabel" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Update Last Appointment Date " BackColor="#4CAF50" BorderColor="#653F14" BorderStyle="Double" BorderWidth="3px" ForeColor="#653F14"></asp:Label><br /><br /><br />
                <asp:Label ID="searchTitleLabel" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#653F14" Text="Search by Last Name"></asp:Label>
                <asp:TextBox ID="SearchNameTextBox" runat="server" BorderColor="#653F14" BorderWidth="3px"></asp:TextBox><br />
                <asp:Button ID="SearchButton" runat="server" Text="Search" OnClick="SearchButton_Click" Width="77px" />
                <asp:Button ID="resetButton" runat="server" OnClick="clearButton_Click" Text="Show All" /><br /><br /><br />
                <asp:GridView ID="gvAlertOnlyList" runat="server" AutoGenerateColumns="False" DataKeyNames="AlertID" DataSourceID="dsFullAlert" AllowPaging="True" BorderColor="#653F14" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True">
                    <Columns>
                        <asp:BoundField DataField="AlertID" HeaderText="AlertID" InsertVisible="False" ReadOnly="True" SortExpression="AlertID" Visible="False" />
                        <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                        <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                        <asp:BoundField DataField="DOB" ItemStyle-HorizontalAlign="Center" HeaderText="DOB" SortExpression="DOB" DataFormatString="{0:MM/dd/yy}">
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="LastAppointment" ItemStyle-HorizontalAlign="Center" HeaderText="Last Appointment" SortExpression="LastAppointment" DataFormatString="{0:MM/dd/yy}" ApplyFormatInEditMode="True">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:TemplateField ShowHeader="False" HeaderText="Update Last Appt">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                            </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    </Columns>
                <HeaderStyle ForeColor="#653F14" />
                </asp:GridView>
            </div>

            <asp:Label ID="hiddenLabel" runat="server" Style="z-index: 1; left: 971px; top: 414px; position: absolute" Visible="False"></asp:Label>

            <asp:SqlDataSource ID="dsFullAlert" runat="server" ConnectionString="<%$ ConnectionStrings:DrKoulianosConnectionString %>"
                DeleteCommand="DELETE FROM [tblAlerts] WHERE [AlertID] = @AlertID" InsertCommand="INSERT INTO [tblAlerts] ([FirstName], [LastName], [DOB], [LastAppointment]) VALUES (@FirstName, @LastName, @DOB, @LastAppointment)"
                SelectCommand="SELECT * FROM [tblAlerts] WHERE ([LastName] LIKE @LastName + '%') ORDER BY LastName"
                UpdateCommand="UPDATE [tblAlerts] SET [FirstName] = @FirstName, [LastName] = @LastName, [DOB] = @DOB, [LastAppointment] = @LastAppointment WHERE [AlertID] = @AlertID">



                <SelectParameters>
                    <asp:ControlParameter ControlID="hiddenLabel" DefaultValue="%" Name="LastName" PropertyName="Text" Type="String" />
                </SelectParameters>




                <DeleteParameters>
                    <asp:Parameter Name="AlertID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="DOB" Type="DateTime" />
                    <asp:Parameter Name="LastAppointment" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="DOB" Type="DateTime" />
                    <asp:Parameter Name="LastAppointment" Type="DateTime" />
                    <asp:Parameter Name="AlertID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
           <%-- <asp:GridView ID="gvAlertOnlyList" runat="server" AutoGenerateColumns="False" DataKeyNames="AlertID" DataSourceID="dsFullAlert" Style="z-index: 1; left: 425px; top: 327px; position: absolute; height: 133px; width: 490px; margin-top: 0px" AllowPaging="True" BorderColor="#653F14" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True">
                <Columns>
                    <asp:BoundField DataField="AlertID" HeaderText="AlertID" InsertVisible="False" ReadOnly="True" SortExpression="AlertID" />
                    <asp:BoundField DataField="AlertPatientID" HeaderText="AlertPatientID" SortExpression="AlertPatientID" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" ItemStyle-HorizontalAlign="Center" HeaderText="LastName" SortExpression="LastName">
                    </asp:BoundField>
                    <asp:BoundField DataField="DOB" ItemStyle-HorizontalAlign="Center" HeaderText="DOB" SortExpression="DOB">
                    </asp:BoundField>
                    <asp:BoundField DataField="LastAppointment" HeaderText="LastAppointment" SortExpression="LastAppointment" />
                </Columns>
                <HeaderStyle ForeColor="#653F14" />
            </asp:GridView>--%>        
        </div>
    </form>
</body>
</html>
