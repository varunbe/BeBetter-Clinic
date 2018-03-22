
Partial Class WebsiteBebetterr_WebSitebebetter_AdminResource
    Inherits System.Web.UI.Page

    Protected Sub Page_load(ByVal Sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("username") Is Nothing Then
            Response.Redirect("Login.aspx")
        End If

    End Sub
    Protected Sub searchButton_Click(sender As Object, e As EventArgs) Handles searchButton.Click
        hiddenTypeLabel.Text = SearchTypeTextBox.Text
    End Sub

    Protected Sub clearTypeButton_Click(sender As Object, e As EventArgs) Handles resetTypeButton.Click
        hiddenTypeLabel.Text = ""
        SearchTypeTextBox.Text = ""
    End Sub
End Class
