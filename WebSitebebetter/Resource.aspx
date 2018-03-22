<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Resource.aspx.cs" Inherits="Resource" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1"
    runat="Server">

    <br />
    <div class="col-lg-6 col-lg-offset-3">
        <div style="max-width: 800px">
            <div class="well well-lg">
                <h2>Resources</h2>
                <br />
                <asp:SqlDataSource ID="dsResourceAdmin" runat="server" ConnectionString="<%$ ConnectionStrings:DrKoulianosConnectionString %>"
                    SelectCommand="SELECT [ResourceDescription], [ResourceLink] FROM [tblResources] WHERE ([ResourceDescription] LIKE @ResourceDescription + '%') ORDER BY ResourceDescription">
                    <SelectParameters>
                        <asp:ControlParameter
                            ControlID="SearchTypeTextBox" DefaultValue="%"
                            Name="ResourceDescription" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <div class="panel-default">
                    <asp:Label ID="searchTypeLabel" runat="server" Font-Bold="True"
                        Text="Search by Topic:" Style="font-family: OpenDyslexic;"></asp:Label>
                    <asp:TextBox ID="searchTypeTextBox" Cssclass="labels" runat="server"></asp:TextBox>
                    <asp:Button ID="searchTypeButton" Cssclass="button" runat="server" Text="Search" />
                    <asp:Button ID="showAllButton" Cssclass="button" runat="server" Text="ShowAll" OnClick="showAllButton_Click" />
                    <br />
                    <br />

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="table-responsive">
                                <asp:GridView ID="GridView1" runat="server"
                                    AutoGenerateColumns="False" DataSourceID="dsResourceAdmin" CssClass="table table-striped table-bordered table-hover labels">

                                    <Columns>
                                        <asp:BoundField DataField="ResourceDescription"
                                            HeaderText="Topic" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" SortExpression="ResourceDescription" />
                                        <asp:HyperLinkField Target="_blank" HeaderText="Resource Link" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg"
                                            DataTextField="ResourceLink"
                                            DataNavigateUrlFields="ResourceLink"
                                            DataNavigateUrlFormatString="http://{0}" />
                                    </Columns>
                                    <%--  <Columns>
                <asp:BoundField DataField="ResourceDescription"
                    HeaderText="ResourceDescription" SortExpression="ResourceDescription" />
                <asp:BoundField DataField="ResourceLink" HeaderText="ResourceLink" SortExpression="ResourceLink" />
            </Columns>--%>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>

                </div>

                <br />

            </div>
        </div>
    </div>
</asp:Content>
