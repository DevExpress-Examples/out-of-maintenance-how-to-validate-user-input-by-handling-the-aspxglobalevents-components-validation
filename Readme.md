<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128565670/13.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E942)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* **[Default.aspx](./CS/Site/Default.aspx) (VB: [Default.aspx](./VB/Site/Default.aspx))**
* [Default.aspx.cs](./CS/Site/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Site/Default.aspx.vb))
<!-- default file list end -->
# How to validate user input by handling the ASPxGlobalEvents component's ValidationCompleted event
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e942/)**
<!-- run online end -->


<p>This example demonstrates how the ASPxGlobalEvents component's client ValidationCompleted event can be handled to check whether the end-user has entered equal passwords into two input fields.</p><p>If the end-user enters different passwords and tries to submit the page by clicking the Ok button, an error message is displayed and a round-trip to the server is not initiated.</p><p>Note that the server ValidationCompleted event of the ASPxGlobalEvents component is also handled in this example to make the example operable if client scripts execution is turned off within the client browser.</p>

<br/>


