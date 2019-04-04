<!-- default file list -->
*Files to look at*:

* **[Default.aspx](./CS/Site/Default.aspx) (VB: [Default.aspx](./VB/Site/Default.aspx))**
* [Default.aspx.cs](./CS/Site/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Site/Default.aspx.vb))
<!-- default file list end -->
# How to validate user input by handling the ASPxGlobalEvents component's ValidationCompleted event


<p>This example demonstrates how the ASPxGlobalEvents component's client ValidationCompleted event can be handled to check whether the end-user has entered equal passwords into two input fields.</p><p>If the end-user enters different passwords and tries to submit the page by clicking the Ok button, an error message is displayed and a round-trip to the server is not initiated.</p><p>Note that the server ValidationCompleted event of the ASPxGlobalEvents component is also handled in this example to make the example operable if client scripts execution is turned off within the client browser.</p>

<br/>


