
Partial Class WebsiteBebetterr_WebSitebebetter_PatientEdit
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Session("username") Is Nothing Then
            Response.Redirect("Login.aspx")
        End If
        If Not Page.IsPostBack Then
            If (Request.QueryString("mode") = "add") Then
                dvPatientEdit.DefaultMode = DetailsViewMode.Insert
            ElseIf (Request.QueryString("mode") = "edit") Then
                dvPatientEdit.DefaultMode = DetailsViewMode.Edit
            ElseIf (Request.QueryString("mode") = "read") Then
                dvPatientEdit.DefaultMode = DetailsViewMode.ReadOnly
            End If
        End If
    End Sub

    Protected Sub dvPatientEdit_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles dvPatientEdit.ItemInserted
        Response.Redirect("AdminPatients.aspx")
    End Sub

    Protected Sub dvPatientEdit_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles dvPatientEdit.ItemUpdated
        Response.Redirect("AdminPatients.aspx")
    End Sub
    'Protected Sub dvPatientEdit_ItemDeleted(sender As Object, e As DetailsViewUpdatedEventArgs) Handles dvPatientEdit.ItemDeleted

    '    Response.Redirect("AdminPatients.aspx")
    'End Sub
    Protected Sub dsPatientEdit_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles dsPatientEdit.Selecting

    End Sub


End Class


