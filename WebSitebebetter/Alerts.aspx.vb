
Partial Class WebsiteBebetterr_WebSitebebetter_Alerts
    Inherits System.Web.UI.Page


    Protected Sub SearchButton_Click(sender As Object, e As EventArgs) Handles SearchButton.Click
        hiddenLabel.Text = SearchNameTextBox.Text
    End Sub

    Protected Sub clearButton_Click(sender As Object, e As EventArgs) Handles resetButton.Click
        hiddenLabel.Text = ""
        SearchNameTextBox.Text = ""
    End Sub
End Class
