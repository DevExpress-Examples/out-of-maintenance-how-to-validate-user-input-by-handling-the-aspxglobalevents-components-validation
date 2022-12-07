' Developer Express Code Central Example:
' How to validate user input by handling the ASPxGlobalEvents component's ValidationCompleted event
' 
' This example demonstrates how the ASPxGlobalEvents component's client
' ValidationCompleted event can be handled to check whether the end-user has
' entered equal passwords into two input fields.
' If the end-user enters different
' passwords and tries to submit the page by clicking the Ok button, an error
' message is displayed and a round-trip to the server is not initiated.
' Note that
' the server ValidationCompleted event of the ASPxGlobalEvents component is also
' handled in this example to make the example operable if client scripts execution
' is turned off within the client browser.
' 
' You can find sample updates and versions for different programming languages here:
' http://www.devexpress.com/example=E942

Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

    End Sub
    Protected Sub ASPxGlobalEvents1_ValidationCompleted(ByVal sender As Object, ByVal e As DevExpress.Web.ValidationCompletedEventArgs)
        lErrorMessageNotEqual.ClientVisible = Not tbPassword.Value.Equals(tbConfirmedPassword.Value)
    End Sub
End Class
