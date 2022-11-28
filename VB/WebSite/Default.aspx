<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1" Namespace="DevExpress.Web"
	TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.v15.1" Namespace="DevExpress.Web"
	TagPrefix="dxe" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Untitled Page</title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<dxwgv:ASPxGridView ID="ExampleGridView" runat="server" AutoGenerateColumns="False"
				DataSourceID="AccessDataSource1" KeyFieldName="CustomerID" OnAutoFilterCellEditorInitialize="ASPxGridView1_AutoFilterCellEditorInitialize">
				<Settings ShowFilterRow="True" />
				<Columns>
                    <dxwgv:GridViewCommandColumn VisibleIndex="0" ShowClearFilterButton="True"/>
					<dxwgv:GridViewDataTextColumn FieldName="CustomerID" ReadOnly="True" VisibleIndex="1">
					</dxwgv:GridViewDataTextColumn>
					<dxwgv:GridViewDataTextColumn FieldName="CompanyName" VisibleIndex="2">
					</dxwgv:GridViewDataTextColumn>
					<dxwgv:GridViewDataTextColumn FieldName="ContactName" VisibleIndex="3">
					</dxwgv:GridViewDataTextColumn>
				</Columns>
			</dxwgv:ASPxGridView>
			<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
				DeleteCommand="DELETE FROM [Customers] WHERE (([CustomerID] = ?) OR ([CustomerID] IS NULL AND ? IS NULL))"
				InsertCommand="INSERT INTO [Customers] ([CustomerID], [CompanyName], [ContactName]) VALUES (?, ?, ?)"
				SelectCommand="SELECT [CustomerID], [CompanyName], [ContactName] FROM [Customers]"
				UpdateCommand="UPDATE [Customers] SET [CompanyName] = ?, [ContactName] = ? WHERE [CustomerID] = ?">
				<DeleteParameters>
					<asp:Parameter Name="CustomerID" Type="String" />
				</DeleteParameters>
				<UpdateParameters>
					<asp:Parameter Name="CompanyName" Type="String" />
					<asp:Parameter Name="ContactName" Type="String" />
					<asp:Parameter Name="CustomerID" Type="String" />
				</UpdateParameters>
				<InsertParameters>
					<asp:Parameter Name="CustomerID" Type="String" />
					<asp:Parameter Name="CompanyName" Type="String" />
					<asp:Parameter Name="ContactName" Type="String" />
				</InsertParameters>
			</asp:AccessDataSource>
			<dxe:ASPxButton ID="SetFocusButton" runat="server" AutoPostBack="False" Text="Set Focus">
				<ClientSideEvents Click="function(s, e) {
	CustomerID.Focus();
}" />
			</dxe:ASPxButton>
		</div>
	</form>
</body>
</html>
