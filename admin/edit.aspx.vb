
Partial Class HW7_admin_edit
    Inherits System.Web.UI.Page


    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated

        Response.Redirect("admin.aspx")

    End Sub
End Class
