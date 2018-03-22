
Partial Class WebsiteBebetterr_WebSitebebetter_AdminPatients
    Inherits System.Web.UI.Page

    Protected Sub Page_load(ByVal Sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("username") Is Nothing Then
            Response.Redirect("Login.aspx")
        End If

    End Sub

    Protected Sub SearchButton_Click(sender As Object, e As EventArgs) Handles SearchButton.Click
        hiddenLabel.Text = SearchNameTextBox.Text

    End Sub

    Protected Sub clearButton_Click(sender As Object, e As EventArgs) Handles resetButton.Click
        hiddenLabel.Text = ""
        SearchNameTextBox.Text = ""
    End Sub
End Class
