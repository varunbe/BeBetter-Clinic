<%@ Page Language="VB" AutoEventWireup="false" CodeFile="PatientEdit.aspx.vb" Inherits="WebsiteBebetterr_WebSitebebetter_PatientEdit" %>

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
                <br /><br />
                <asp:Label ID="patientTitleLabel" Cssclass="labels" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Update Patient Information " BackColor="#4CAF50" BorderColor="#653F14" BorderStyle="Double" BorderWidth="3px" ForeColor="#653F14"></asp:Label><br /><br />
            </div>
            <div class="col-sm-6 col-md-6 col-lg-6">
            <br /><br /><br /><br /><br /><br /><br />
            <asp:DetailsView ID="dvPatientEdit" Cssclass="labels" runat="server" AutoGenerateRows="False" DataKeyNames="PatientEmail" DataSourceID="dsPatientEdit" Height="50px" Style="height: 518px; margin-left:50%; width: 334px" BackColor="White" BorderColor="#653F14" BorderStyle="Solid" BorderWidth="3px">
                <Fields>
                    <asp:BoundField DataField="PatientEmail" HeaderText="PatientEmail" InsertVisible="True" ReadOnly="False" SortExpression="PatientEmail" Visible="True" />
                    <asp:BoundField DataField="PatientFirstName" HeaderText="Patient First Name" SortExpression="PatientFirstName" />
                    <asp:BoundField DataField="PatientMiddleName" HeaderText="Patient Middle Name" SortExpression="PatientMiddleName" />
                    <asp:BoundField DataField="PatientLastName" HeaderText="Patient Last Name" SortExpression="PatientLastName" />
                    <asp:BoundField DataField="PatientDOB" DataFormatString="{0:MM/dd/yy}" HeaderText="DOB" SortExpression="PatientDOB" ApplyFormatInEditMode="True" />
                    <asp:BoundField DataField="PatientAge" HeaderText="Age" SortExpression="PatientAge" />
                    <asp:BoundField DataField="PatientStreet" HeaderText="Street Address" SortExpression="PatientStreet" />
                    <asp:BoundField DataField="PatientCity" HeaderText="City" SortExpression="PatientCity" />
                    <asp:BoundField DataField="PatientState" HeaderText="State" SortExpression="PatientState" />
                    <asp:BoundField DataField="PatientZip" HeaderText="Zip" SortExpression="PatientZip" />
                    <asp:BoundField DataField="PatientTelephone" HeaderText="Telephone" SortExpression="PatientTelephone" />
                    <asp:BoundField DataField="GuardianFirstName" HeaderText="Guardian First Name" SortExpression="GuardianFirstName" NullDisplayText="N/A" />
                    <asp:BoundField DataField="GuardianMiddleName" HeaderText="Guardian Middle Name" SortExpression="GuardianMiddleName" NullDisplayText="N/A" />
                    <asp:BoundField DataField="GuardianLastName" HeaderText="Guardian Last Name" SortExpression="GuardianLastName" NullDisplayText="N/A" />
                    <asp:BoundField DataField="Insurance" HeaderText="Insurance" SortExpression="Insurance" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="ConfirmationPassword" HeaderText="Confirmation Password" SortExpression="ConfirmationPassword" />
                    <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView><br />
            <asp:HyperLink ID="hlBackToPatientList" Cssclass="labels" runat="server" NavigateUrl="AdminPatients.aspx" Style="margin-left:50%;" Font-Bold="True" ForeColor="#653F14">Back to Patient List</asp:HyperLink>
            </div>
           <%-- <asp:DetailsView ID="dvPatientEdit" runat="server" AutoGenerateRows="False" DataKeyNames="PatientEmail" DataSourceID="dsPatientEdit" Height="50px" Style="z-index: 1; left: 123px; top: 88px; position: absolute; height: 518px; width: 334px" BackColor="White" BorderColor="#653F14" BorderStyle="Solid" BorderWidth="3px">
                <Fields>
                    <asp:BoundField DataField="PatientEmail" HeaderText="PatientEmail" InsertVisible="False" ReadOnly="True" SortExpression="PatientEmail" Visible="False" />
                    <asp:BoundField DataField="PatientFirstName" HeaderText="Patient First Name" SortExpression="PatientFirstName" />
                    <asp:BoundField DataField="PatientMiddleName" HeaderText="Patient Middle Name" SortExpression="PatientMiddleName" />
                    <asp:BoundField DataField="PatientLastName" HeaderText="Patient Last Name" SortExpression="PatientLastName" />
                    <asp:BoundField DataField="PatientDOB" DataFormatString="{0:MM/dd/yy}" HeaderText="DOB" SortExpression="PatientDOB" ApplyFormatInEditMode="True" />
                    <asp:BoundField DataField="PatientAge" HeaderText="Age" SortExpression="PatientAge" />
                    <asp:BoundField DataField="PatientStreet" HeaderText="Street Address" SortExpression="PatientStreet" />
                    <asp:BoundField DataField="PatientCity" HeaderText="City" SortExpression="PatientCity" />
                    <asp:BoundField DataField="PatientState" HeaderText="State" SortExpression="PatientState" />
                    <asp:BoundField DataField="PatientZip" HeaderText="Zip" SortExpression="PatientZip" />
                    <asp:BoundField DataField="PatientTelephone" HeaderText="Telephone" SortExpression="PatientTelephone" />
                    <asp:BoundField DataField="GuardianFirstName" HeaderText="Guardian First Name" SortExpression="GuardianFirstName" NullDisplayText="N/A" />
                    <asp:BoundField DataField="GuardianMiddleName" HeaderText="Guardian Middle Name" SortExpression="GuardianMiddleName" NullDisplayText="N/A" />
                    <asp:BoundField DataField="GuardianLastName" HeaderText="Guardian Last Name" SortExpression="GuardianLastName" NullDisplayText="N/A" />
                    <asp:BoundField DataField="Insurance" HeaderText="Insurance" SortExpression="Insurance" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="ConfirmationPassword" HeaderText="Confirmation Password" SortExpression="ConfirmationPassword" />
                    <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>--%>
            <asp:SqlDataSource ID="dsPatientEdit" runat="server" ConnectionString="<%$ ConnectionStrings:PatientDetailsConnectionString %>" 
                DeleteCommand="DELETE FROM [tblPatient] WHERE [PatientEmail] = @PatientEmail" 
                InsertCommand="INSERT INTO [tblPatient] ([PatientEmail],[PatientFirstName], [PatientMiddleName], [PatientLastName], [PatientDOB], [PatientAge], [PatientStreet], [PatientCity], [PatientState], [PatientZip], [PatientTelephone], [GuardianFirstName], [GuardianMiddleName], [GuardianLastName], [Insurance], [Username], [Password], [ConfirmationPassword], [LastAppointment]) VALUES (@PatientEmail,@PatientFirstName, @PatientMiddleName, @PatientLastName, @PatientDOB, @PatientAge, @PatientStreet, @PatientCity, @PatientState, @PatientZip, @PatientTelephone, @GuardianFirstName, @GuardianMiddleName, @GuardianLastName, @Insurance, @Username, @Password, @ConfirmationPassword, @LastAppointment)" 
                SelectCommand="SELECT * FROM [tblPatient] WHERE ([PatientEmail] = @PatientEmail)" 
                UpdateCommand="UPDATE [tblPatient] SET [PatientEmail]=@PatientEmail,[PatientFirstName] = @PatientFirstName, [PatientMiddleName] = @PatientMiddleName, [PatientLastName] = @PatientLastName, [PatientDOB] = @PatientDOB, [PatientAge] = @PatientAge, [PatientStreet] = @PatientStreet, [PatientCity] = @PatientCity, [PatientState] = @PatientState, [PatientZip] = @PatientZip, [PatientTelephone] = @PatientTelephone, [GuardianFirstName] = @GuardianFirstName, [GuardianMiddleName] = @GuardianMiddleName, [GuardianLastName] = @GuardianLastName, [Insurance] = @Insurance, [Username] = @Username, [Password] = @Password, [ConfirmationPassword] = @ConfirmationPassword, [LastAppointment] = @LastAppointment WHERE [PatientEmail] = @PatientEmail">
                <DeleteParameters>
                    <asp:Parameter Name="PatientEmail"  Type="String" Direction="Input" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PatientEmail" Type="String" />
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
                <SelectParameters>
                    <asp:QueryStringParameter Name="PatientEmail" QueryStringField="PatientEmail"  />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PatientEmail" Type="String" />
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
            
            <div class="col-sm-6 col-md-6 col-lg-6">
            <br /><br /><br /><br /><br /><br /><br />
            <asp:Image ID="PatientEditPic" runat="server" BorderColor="#653F14" BorderStyle="Solid" BorderWidth="5px" ImageUrl="~/images/doctorbear.jpg" Style="height: 518px; width: 334px" /><br /><br />
            <asp:HyperLink ID="backToAdminHome" Cssclass="labels" runat="server" Font-Bold="True" NavigateUrl="AdminHomes.aspx" ForeColor="#653F14">Return to Administrative Homepage</asp:HyperLink>
            </div>

        </div>
    </form>
</body>
</html>


