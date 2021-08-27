<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128542455/13.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E907)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to set focus to the ASPxGridView's filter field editor
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e907/)**
<!-- run online end -->


<p>This example demonstrates how to set the focus to ASPxGridView filter editor.</p><p>First, to get access to this editor at the client-side set it's ClientInstanceName:<br />


```cs
<newline/>
protected void ASPxGridView1_AutoFilterCellEditorInitialize(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewEditorEventArgs e)<newline/>
{<newline/>
    e.Editor.ClientInstanceName = e.Column.FieldName;<newline/>
}<newline/>

```

</p><p>In this example we set the ClientInstanceName for all editors to the corresponding column's FieldName.<br />
After this, all filter editors are available on the client-side by their names.</p><p>For example, let's set the focus to the CustomerID filter field:<br />


```js
<newline/>
CustomerID.Focus();<newline/>

```

</p><p>There is one ASPxGridView and one ASPxButton in our sample project. Click the button to set the focus to the CustomerID filter field!</p>

<br/>


