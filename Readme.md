# How to set focus to the ASPxGridView's filter field editor


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


