<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AlertsList.aspx.vb" Inherits="WebsiteBebetterr_WebSitebebetter_AlertsList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">

        <div class="container-fluid">

            <asp:SqlDataSource ID="dsAlerts" runat="server" ConnectionString="<%$ ConnectionStrings:DrKoulianosConnectionString %>"
                DeleteCommand="DELETE FROM [tblAlerts] WHERE [AlertID] = @AlertID"
                InsertCommand="INSERT INTO [tblAlerts] ([PatientID], [FirstName], [LastName], [DOB], [LastAppointment]) VALUES (@PatientID, @FirstName, @LastName, @DOB, @LastAppointment)"
                SelectCommand="SELECT * FROM [tblAlerts] WHERE DATEDIFF(DAYOFYEAR, [LastAppointment], GETDATE())>365"
                UpdateCommand="UPDATE [tblAlerts] SET [PatientID] = @PatientID, [FirstName] = @FirstName, [LastName] = @LastName, [DOB] = @DOB, [LastAppointment] = @LastAppointment WHERE [AlertID] = @AlertID">
                <DeleteParameters>
                    <asp:Parameter Name="AlertID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PatientID" Type="Int32" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="DOB" Type="DateTime" />
                    <asp:Parameter Name="LastAppointment" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PatientID" Type="Int32" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="DOB" Type="DateTime" />
                    <asp:Parameter Name="LastAppointment" Type="DateTime" />
                    <asp:Parameter Name="AlertID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:HyperLink ID="backToAdminHome" Cssclass="labels" runat="server" NavigateUrl="AdminHome.aspx" Style="z-index: 1; left: 32px; top: 42px; position: absolute" Font-Bold="True" ForeColor="#653F14">Return to Administrative Homepage</asp:HyperLink>

               <asp:GridView ID="gvAlertList" Cssclass="labels" runat="server" AutoGenerateColumns="False" DataKeyNames="AlertID" DataSourceID="dsAlerts" Style="z-index: 1; left: 468px; top: 210px; position: absolute; height: 133px; width: 393px; margin-top: 0px;" BorderColor="#653F14" BorderStyle="Solid" Font-Bold="True" AllowPaging="True" BorderWidth="3px">
                <Columns>
                    <asp:BoundField DataField="AlertID" HeaderText="AlertID" InsertVisible="False" ReadOnly="True" SortExpression="AlertID" Visible="False" />
                    <asp:BoundField DataField="PatientID" HeaderText="PatientID" SortExpression="PatientID" Visible="False" />
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                    <asp:BoundField DataField="DOB" ItemStyle-HorizontalAlign="Center" HeaderText="DOB" SortExpression="DOB" DataFormatString="{0:MM/dd/yy}" ApplyFormatInEditMode="True">
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="LastAppointment" ItemStyle-HorizontalAlign="Center" HeaderText="Last Appointment" SortExpression="Last Appointment" DataFormatString="{0:MM/dd/yy}" ApplyFormatInEditMode="True">
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:BoundField>
                    <asp:HyperLinkField DataNavigateUrlFields="AlertPatientID" DataNavigateUrlFormatString="PatientEdit.aspx?patientid={0}&amp;mode=read" Text="Details" />
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1"
                                runat="server" CausesValidation="False"
                                CommandName="Delete" Text="Delete"
                                OnClientClick="return confirm('Are you sure?')"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle ForeColor="#653F14" />
            </asp:GridView>
           <%-- <asp:GridView ID="gvAlertList" runat="server" AutoGenerateColumns="False" DataKeyNames="AlertID" DataSourceID="dsAlerts" Style="z-index: 1; left: 468px; top: 210px; position: absolute; height: 133px; width: 393px; margin-top: 0px;" BorderColor="#653F14" BorderStyle="Solid" Font-Bold="True" AllowPaging="True" BorderWidth="3px">
                <Columns>
                    <asp:BoundField DataField="AlertID" HeaderText="AlertID" InsertVisible="False" ReadOnly="True" SortExpression="AlertID" />
                    <asp:BoundField DataField="AlertPatientID" HeaderText="AlertPatientID" SortExpression="AlertPatientID" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="DOB" ItemStyle-HorizontalAlign="Center" HeaderText="DOB" SortExpression="DOB">
                    </asp:BoundField>
                    <asp:BoundField DataField="LastAppointment" ItemStyle-HorizontalAlign="Center" HeaderText="LastAppointment" SortExpression="LastAppointment">
                    </asp:BoundField>
                </Columns>
                <HeaderStyle ForeColor="#653F14" />
            </asp:GridView>--%>

            <asp:Label ID="Label2" Cssclass="labels" runat="server" BorderColor="#653F14" BorderStyle="None" BorderWidth="3px" Font-Bold="True" ForeColor="#653F14" Style="z-index: 1; left: 515px; top: 163px; position: absolute; width: 325px;" Text="Patient Last Seen Over 1yr Ago" Font-Size="X-Large" Font-Underline="True"></asp:Label>
            <asp:HyperLink ID="HyperLink1" Cssclass="labels" runat="server" Font-Bold="True" ForeColor="#653F14" NavigateUrl="Alerts.aspx" Style="z-index: 1; left: 32px; top: 82px; position: absolute">Return to Update Last Appt</asp:HyperLink>

        </div>
    </form>
</body>
</html>
