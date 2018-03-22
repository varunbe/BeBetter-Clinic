<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdminPatients.aspx.vb" Inherits="WebsiteBebetterr_WebSitebebetter_AdminPatients" %>

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
            <div class="row">
                <div class="centered">
                <br /><br />
                <asp:Label ID="patientTitleLabel" Cssclass="labels" runat="server" Font-Bold="True" Font-Size="XX-Large" Text=" Patient Information " BackColor="#4CAF50" BorderColor="#653F14" BorderStyle="Double" BorderWidth="3px" ForeColor="#653F14"></asp:Label>
                </div>
            </div>
            <br /><br />
            <div class="row">
            <div class="col-sm-1 col-md-6 col-lg-4">
            <asp:HyperLink ID="hlAdd" Cssclass="labels" runat="server" NavigateUrl="PatientEdit.aspx?mode=add" Font-Bold="True" ForeColor="#653F14">Create New</asp:HyperLink><br /><br />
            <asp:HyperLink ID="backToAdminHome" Cssclass="labels" runat="server" NavigateUrl="AdminHome.aspx" Font-Bold="True" ForeColor="#653F14">Return to Administrative Homepage</asp:HyperLink><br /><br />
            <asp:Label ID="searchTitleLabel" Cssclass="labels" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#653F14" Text="Search by Last Name"></asp:Label>
            <asp:TextBox ID="SearchNameTextBox" Cssclass="labels" runat="server" BorderColor="#653F14"></asp:TextBox><br /><br />
            <div class="centered">
                <asp:Button ID="SearchButton" Cssclass="button" runat="server" Text="Search" OnClick="SearchButton_Click" />
                <asp:Button ID="resetButton" Cssclass="button" runat="server" OnClick="clearButton_Click" Text="Show All" />
            </div>                
            </div>
            
            <div class="col-sm-11 col-md-6 col-lg-8">
            <div class="col-sm-6">
                <br /><br /><br /><br />
                <asp:Image ID="AdminPatientsPic" runat="server" BorderColor="#653F14" BorderStyle="Solid" BorderWidth="5px" ImageUrl="~/images/toys1.jpg" Style="height: 241px; width: 427px" />
            <br /><br />
            <div class="centered">
            <asp:GridView ID="gvPatients" Cssclass="labels" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" DataKeyNames="PatientEmail" DataSourceID="dsPatientAdmin" Style="height: 133px; width: 806px;" AllowPaging="True" BackColor="White" BorderColor="#653F14" BorderStyle="Solid" BorderWidth="3px">
                <Columns>
                    <asp:BoundField DataField="PatientEmail" ItemStyle-HorizontalAlign="Center" HeaderText="PatientEmail" InsertVisible="False" ReadOnly="True" SortExpression="PatientEmail" Visible="False">
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="PatientLastName" HeaderText="Last Name" SortExpression="PatientLastName"></asp:BoundField>
                    <asp:BoundField DataField="PatientFirstName" HeaderText="First Name" SortExpression="PatientFirstName"></asp:BoundField>
                    <asp:BoundField DataField="PatientDOB" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:MM/dd/yy}" HeaderText="DOB" SortExpression="PatientDOB">
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:BoundField>
                    <asp:HyperLinkField DataNavigateUrlFields="PatientEmail" Text="Edit" DataNavigateUrlFormatString="PatientEdit.aspx?patientemail={0}&amp;mode=edit" />
                    <asp:HyperLinkField DataNavigateUrlFields="PatientEmail" Text="Details" DataNavigateUrlFormatString="PatientEdit.aspx?patientemail={0}&amp;mode=read" />
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1"
                                runat="server"
                                CausesValidation="True"
                                CommandName="Delete"
                                Text="Delete"
                                OnClientClick="return confirm('Are you sure?')">
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle ForeColor="#653F14" />
            </asp:GridView>
            </div>
            </div>
            </div>
           
            

            

            <asp:Label ID="hiddenLabel" runat="server" Style="z-index: 1; left: 32px; top: 443px; position: absolute" Visible="False"></asp:Label>

            <asp:SqlDataSource ID="dsPatientAdmin" runat="server" ConnectionString="<%$ ConnectionStrings:SRConnectionString %>"
                DeleteCommand="DELETE FROM [tblPatient] WHERE [PatientEmail] = @PatientEmail"
                InsertCommand="INSERT INTO [tblPatient] ([PatientEmail],[PatientFirstName], [PatientMiddleName], [PatientLastName], [PatientDOB], [PatientAge], [PatientStreet], [PatientCity], [PatientState], [PatientZip], [PatientTelephone], [GuardianFirstName], [GuardianMiddleName], [GuardianLastName], [Insurance], [Username], [Password], [ConfirmationPassword], [LastAppointment]) VALUES (@PatientEmail,@PatientFirstName, @PatientMiddleName, @PatientLastName, @PatientDOB, @PatientAge, @PatientStreet, @PatientCity, @PatientState, @PatientZip, @PatientTelephone, @GuardianFirstName, @GuardianMiddleName, @GuardianLastName, @Insurance, @Username, @Password, @ConfirmationPassword, @LastAppointment)"
                SelectCommand="SELECT * FROM [tblPatient] WHERE ([PatientLastName] LIKE @PatientLastName + '%') ORDER BY PatientLastName"
                UpdateCommand="UPDATE [tblPatient] SET [[PatientEmail]=@PatientEmail,[PatientFirstName] = @PatientFirstName, [PatientMiddleName] = @PatientMiddleName, [PatientLastName] = @PatientLastName, [PatientDOB] = @PatientDOB, [PatientAge] = @PatientAge, [PatientStreet] = @PatientStreet, [PatientCity] = @PatientCity, [PatientState] = @PatientState, [PatientZip] = @PatientZip, [PatientTelephone] = @PatientTelephone, [GuardianFirstName] = @GuardianFirstName, [GuardianMiddleName] = @GuardianMiddleName, [GuardianLastName] = @GuardianLastName, [Insurance] = @Insurance, [Username] = @Username, [Password] = @Password, [ConfirmationPassword] = @ConfirmationPassword, [LastAppointment] = @LastAppointment WHERE [PatientEmail] = @PatientEmail">

                <SelectParameters>
                    <asp:ControlParameter ControlID="hiddenLabel" DefaultValue="%" Name="PatientLastName" PropertyName="Text" Type="String" />
                </SelectParameters>
                <DeleteParameters>
                    <asp:Parameter Name="PatientEmail" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PatientFirstName" Type="String" />
                    <asp:Parameter Name="PatientMiddleName" Type="String" />
                    <asp:Parameter Name="PatientLastName" Type="String" />
                    <asp:Parameter DbType="Date" Name="PatientDOB" />
                    <asp:Parameter Name="PatientAge" Type="String" />
                    <asp:Parameter Name="PatientStreet" Type="String" />
                    <asp:Parameter Name="PatientCity" Type="String" />
                    <asp:Parameter Name="PatientState" Type="String" />
                    <asp:Parameter Name="PatientZip" Type="String" />
                    <asp:Parameter Name="PatientTelephone" Type="String" />
                    <asp:Parameter Name="GuardianFirstName" Type="String" />
                    <asp:Parameter Name="GuardianMiddleName" Type="String" />
                    <asp:Parameter Name="GuardianLastName" Type="String" />
                    <asp:Parameter Name="Insurance" Type="String" />
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="ConfirmationPassword" Type="String" />
                    <asp:Parameter DbType="Date" Name="LastAppointment" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PatientFirstName" Type="String" />
                    <asp:Parameter Name="PatientMiddleName" Type="String" />
                    <asp:Parameter Name="PatientLastName" Type="String" />
                    <asp:Parameter DbType="Date" Name="PatientDOB" />
                    <asp:Parameter Name="PatientAge" Type="String" />
                    <asp:Parameter Name="PatientStreet" Type="String" />
                    <asp:Parameter Name="PatientCity" Type="String" />
                    <asp:Parameter Name="PatientState" Type="String" />
                    <asp:Parameter Name="PatientZip" Type="String" />
                    <asp:Parameter Name="PatientTelephone" Type="String" />
                    <asp:Parameter Name="GuardianFirstName" Type="String" />
                    <asp:Parameter Name="GuardianMiddleName" Type="String" />
                    <asp:Parameter Name="GuardianLastName" Type="String" />
                    <asp:Parameter Name="Insurance" Type="String" />
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="ConfirmationPassword" Type="String" />
                    <asp:Parameter DbType="Date" Name="LastAppointment" />
                    <asp:Parameter Name="PatientEmail" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>           

        </div>
    </form>
</body>
</html>


