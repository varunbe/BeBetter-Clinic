
Partial Class WebsiteBebetterr_WebSitebebetter_ResourceEdit
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            If (Request.QueryString("mode") = "add") Then
                dvResourceDetails.DefaultMode = DetailsViewMode.Insert
            ElseIf (Request.QueryString("mode") = "edit") Then
                dvResourceDetails.DefaultMode = DetailsViewMode.Edit
            ElseIf (Request.QueryString("mode") = "read") Then
                dvResourceDetails.DefaultMode = DetailsViewMode.ReadOnly
            End If
        End If
    End Sub

    Protected Sub dvResourceDetails_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles dvResourceDetails.ItemInserted
        Response.Redirect("AdminResources.aspx")
    End Sub

    Protected Sub dvResourceDetails_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles dvResourceDetails.ItemUpdated
        Response.Redirect("AdminResources.aspx")
    End Sub

End Class
