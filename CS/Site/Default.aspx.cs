// Developer Express Code Central Example:
// How to validate user input by handling the ASPxGlobalEvents component's ValidationCompleted event
// 
// This example demonstrates how the ASPxGlobalEvents component's client
// ValidationCompleted event can be handled to check whether the end-user has
// entered equal passwords into two input fields.
// If the end-user enters different
// passwords and tries to submit the page by clicking the Ok button, an error
// message is displayed and a round-trip to the server is not initiated.
// Note that
// the server ValidationCompleted event of the ASPxGlobalEvents component is also
// handled in this example to make the example operable if client scripts execution
// is turned off within the client browser.
// 
// You can find sample updates and versions for different programming languages here:
// http://www.devexpress.com/example=E942

using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e) {

    }
    protected void ASPxGlobalEvents1_ValidationCompleted(object sender, DevExpress.Web.ASPxGlobalEvents.ValidationCompletedEventArgs e) {
        lErrorMessageNotEqual.ClientVisible = !tbPassword.Value.Equals(tbConfirmedPassword.Value);
    }
}
