
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        'Display the date in the #menubar div
        lbl_date.Text = DateTime.Now.ToLongDateString

    End Sub
End Class

