<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddAE.aspx.cs" Inherits="TRPR.AddAE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
	<form id="form1" runat="server">
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<img src="imgs/logo.jpg" />

					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>


				<div class="collapse navbar-collapse" id="myNavbar">


					<div class="centernav">

						<ul class="nav navbar-nav">
							<li><a href="SecIndex.aspx">Home</a></li>

							<li><a href="Editor.aspx">Editor-in-Chief</a></li>
							<li class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#">More
                                <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="EICContact.aspx">Contact</a></li>
									<li><a href="https://www.trontario.org/about/tro-staff.html">TRO Staff</a></li>
									<li><a href="https://www.trontario.org/news-events/index.html">Events</a></li>
								</ul>

							</li>

							<li class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#">
									<span class="glyphicon glyphicon-user"></span>
									<asp:Label ID="lblEICName" runat="server" Text=""></asp:Label>
									<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="Bio.aspx">My Profile </a></li>

									<li>
										<asp:LinkButton ID="lbLogout" OnClick="lbLogout_Click" runat="server">Log Out</asp:LinkButton></li>
								</ul>
							</li>
						</ul>


					</div>
				</div>
			</div>

		</nav>
		<div style="margin-left: 15%; margin-right: 15%;">
			<br />
			<br />
			<br />
			<br />
			<center><h2>Add Associate Editors</h2></center>
			<asp:Label ID="lblConfirmation" runat="server"></asp:Label>
			<br />
			<asp:GridView ID="gvMessage" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="sqlMessage" ForeColor="Black" GridLines="Horizontal" Width="100%" OnRowCommand="gvMessage_RowCommand" OnSelectedIndexChanged="gvMessage_SelectedIndexChanged">
				<Columns>
					<asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
					<asp:BoundField DataField="PersonName" HeaderText="UserName" SortExpression="PersonName" />
					<asp:BoundField DataField="SentOn" HeaderText="SentOn" SortExpression="SentOn" />
					<asp:TemplateField ShowHeader="False">
						<ItemTemplate>
							<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="View" Text="Show Message"></asp:LinkButton>
						</ItemTemplate>
					</asp:TemplateField>
					<asp:TemplateField ShowHeader="False">
						<ItemTemplate>
							<asp:LinkButton ID="lbDelete" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return isDelete();" Text="Delete"></asp:LinkButton>
						</ItemTemplate>
					</asp:TemplateField>
				</Columns>
				<EmptyDataTemplate>
					There is no Message Yet!
				</EmptyDataTemplate>
				<FooterStyle BackColor="#CCCC99" ForeColor="Black" />
				<HeaderStyle BackColor="#3b5998" Font-Bold="True" ForeColor="White" />
				<PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
				<SelectedRowStyle BackColor="#f1f1f1" Font-Bold="True" ForeColor="White" />
				<SortedAscendingCellStyle BackColor="#F7F7F7" />
				<SortedAscendingHeaderStyle BackColor="#4B4B4B" />
				<SortedDescendingCellStyle BackColor="#E5E5E5" />
				<SortedDescendingHeaderStyle BackColor="#242121" />
			</asp:GridView>


			<div style="margin-left: 25%; margin-right: 25%;">


				<asp:DetailsView ID="dvpersonDetail" runat="server" GridLines="None" AutoGenerateRows="False" Height="150px" Width="100%" DataSourceID="sqlPersonDetail">
					<Fields>
						<asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
						<asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
						<asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
						<asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
						<asp:BoundField DataField="Province" HeaderText="Province" SortExpression="Province" />
						<asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
						<asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
						<asp:BoundField DataField="Institutions" HeaderText="Institutions" SortExpression="Institutions" />
						<asp:BoundField DataField="Expertise" HeaderText="Expertise" SortExpression="Expertise" />
					</Fields>
				</asp:DetailsView>


				<asp:DetailsView ID="dvMessage" runat="server" Height="50px" Width="145%" GridLines="None" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
					<Fields>
						<asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
						<asp:BoundField DataField="SentOn" HeaderText="SentOn" SortExpression="SentOn" />
					</Fields>
				</asp:DetailsView>


				<br />
				<asp:Button ID="btnAssignRole" runat="server" Text="Assign Role" class="btn btn-primary" OnClick="btnAssignRole_Click" />
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			


			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			

			<br />
				<asp:Label ID="lblwords" runat="server" Style="float: right;" class="count" Text=" 0 WORD"></asp:Label>

				<asp:TextBox ID="txtReply" runat="server" onkeyup="counter2()" TextMode="MultiLine" Width="100%"></asp:TextBox>



				<br />
				<br />
				<asp:Button ID="btnSend" runat="server" Text="Send Reply" class="btn btn-primary" OnClick="btnSend_Click" />



				&nbsp;&nbsp;&nbsp;
			<asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-danger" />



				<br />
				<br />
				<center><asp:Label ID="lblMessage" runat="server" ForeColor="#3b5992" Font-Bold="true"></asp:Label></center>



				<asp:SqlDataSource ID="sqlMessage" runat="server" ConnectionString="<%$ ConnectionStrings:TRPRConnectionString %>" SelectCommand="SELECT * FROM [ReviewPrev]" DeleteCommand="Delete from [ReviewPrev] where [Id] = @Id">
					<DeleteParameters>
						<asp:Parameter Name="Id" Type="String" />
					</DeleteParameters>
				</asp:SqlDataSource>

				<asp:Label ID="lblPersonDetail" runat="server" Text=""></asp:Label>


				<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>


				<br />
				<asp:SqlDataSource ID="sqlPersonDetail" runat="server" ConnectionString="<%$ ConnectionStrings:TRPRConnectionString %>" SelectCommand="PersonDetail" SelectCommandType="StoredProcedure">
					<SelectParameters>
						<asp:ControlParameter ControlID="lblPersonDetail" Name="UserName" PropertyName="Text" Type="String" />
					</SelectParameters>
				</asp:SqlDataSource>

				<br />
				<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TRPRConnectionString %>" SelectCommand="SELECT * FROM [ReviewPrev] WHERE ([PersonName] = @PersonName)">
					<SelectParameters>
						<asp:ControlParameter ControlID="lblPersonDetail" Name="PersonName" PropertyName="Text" Type="String" />
					</SelectParameters>
				</asp:SqlDataSource>
				<br />
				<br />

			</div>
		</div>
		<script>
			function counter2() {
				var texterea = document.getElementById("txtReply");
				var words = texterea.value.split(' ').length;
				if (words <= 1000) {
					document.getElementById("lblwords").textContent = words + " WORDS";

				}
			}
		</script>

		<script type="text/javascript">
			function isDelete() {
				return confirm("Do you want Delete this Message?");
				Response.redirect("AddAE.aspx");
			}

		</script>
	</form>
</body>
</html>
