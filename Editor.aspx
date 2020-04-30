<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editor.aspx.cs" Inherits="TRPR.Editor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>


	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<%--manucode--%>
	<style>
		/** {
			box-sizing: border-box;
		}*/

		body {
			font-family: Arial;
			padding: 10px;
			background: #f1f1f1;
		}

		h3 {
			border-radius: 4px;
			padding: 10px;
			background-color: #3b5998;
			/*margin: 2px;*/
			width: 100%;
			color: white;
		}

		h4 {
			border-radius: 4px;
			padding: 10px;
			background-color: lightgray;
			position: center;
			width: 50%;
			text-align: center;
		}

		.card-header {
			border-radius: 4px;
			padding: 10px;
			background-color: lightgray;
			margin: 5px;
			width: 95%;
		}
		/* Create two unequal columns that floats next to each other */
		/* Left column */
		.leftcolumn {
			float: left;
			width: 55%;
		}


		/* Right column */
		.rightcolumn {
			float: left;
			width: 30%;
			background-color: #f1f1f1;
			padding-left: 20px;
		}


		/* Add a card effect for articles */
		.card {
			background-color: white;
			padding: 10px;
			margin-top: 20px;
		}

		.card-body {
			margin-left: 15px;
		}

		/* Clear floats after the columns */
		.row:after {
			content: "";
			display: table;
			clear: both;
		}

		/* Footer */
		/*.footer {
			padding: 20px;
			text-align: center;
			background: #ddd;
			margin-top: 20px;
		}*/
		.search {
			margin-left: 30%;
			margin-top: 5%;
		}

		.footer {
			/*padding:20px;*/
			background: #3b5998;
			position: fixed;
			left: 0;
			bottom: 0;
			width: 100%;
		}

		footer a {
			color: white;
		}

			footer a:hover {
				color: #777;
				text-decoration: none;
			}

		.share {
			color: white;
		}


		input[type=text], select {
			padding: 8px 5px;
			margin: 5px 0 5px 0;
			display: inline-block;
			border: 1px solid #ccc;
			border-radius: 4px;
			box-sizing: border-box;
			width: 140px;
		}



		@media (min-width: 1441px) and (max-width: 2560px) {
			body {
				margin-left: 23%;
				margin-right: 10%;
			}

			.modalResponse {
				top: 8%;
				width: 100%;
				padding-top: 60px;
				padding-left: 30%;
				padding-right: 30%;
			}
		}


		@media (min-width: 1025px) and (max-width: 1440px) {

			body {
				margin-left: 15%;
				margin-right: 10%;
			}

			.search {
				margin-left: 20%;
			}

			.rightcolumn {
				width: 40%;
			}

			.modalResponse {
				top: 8%;
				width: 100%;
				padding-top: 60px;
				padding-left: 250px;
				padding-right: 250px;
			}
		}

		@media (min-width: 769px) and (max-width: 1024px) {

			.rightcolumn {
				width: 45%;
			}

			body {
				margin-left: 8%;
				margin-right: 8%;
			}

			.modalResponse {
				top: 8%;
				width: 100%;
				padding-top: 60px;
				padding-left: 140px;
				padding-right: 140px;
			}
		}


		@media (min-width: 426px) and (max-width: 768px) and (orientation: landscape) {

			.rightcolumn {
				width: 48%;
			}

			body {
				margin-left: 1%;
				margin-right: 1%;
			}

			.search {
				margin-left: 7%;
				margin-right: 6%;
				margin-bottom: 2%;
			}

			.leftcolumn {
				width: 52%;
			}

			.modalResponse {
				top: 8%;
				width: 100%;
				padding-top: 60px;
				padding-left: 90px;
				padding-right: 90px;
			}

			.headresponse {
				font-size: 150%;
			}
		}

		@media (min-width: 376px) and (max-width: 425px) {

			.rightcolumn {
				width: 100%;
			}

			body {
				margin-right: 5%;
			}

			.search {
				margin-left: 10%;
				margin-right: 6%;
				margin-bottom: 3%;
			}

			.leftcolumn {
				margin-left: 5%;
				margin-right: 5%;
				width: 95%;
			}

			h2 {
				font-size: 20px;
			}

			#gvManu {
				font-size: 8px;
			}

			#gvAllManu {
				font-size: 8px;
			}
		}


		@media (min-width: 320px) and (max-width: 375px) {

			.rightcolumn {
				width: 100%;
			}

			body {
				margin-right: 5%;
			}

			.search {
				margin-left: 7%;
				margin-right: 5%;
				margin-bottom: 5%;
			}

			.leftcolumn {
				margin-left: 5%;
				margin-right: 5%;
				width: 95%;
			}

			input[type=text], select {
				width: 100%;
			}

			h2 {
				font-size: 17px;
			}

			#gvManu {
				font-size: 5px;
			}

			#gvAllManu {
				font-size: 5px;
			}
		}
	</style>
	<style>
		.modalResponse {
			display: none; /* Hidden by default */
			position: fixed; /* Stay in place */
			z-index: 1; /* Sit on top */
			left: 0;
			top: 8%;
			width: 100%; /* Full width */
			height: 100%; /* Full height */
			overflow: auto; /* Enable scroll if needed */
			background-color: rgb(0,0,0); /* Fallback color */
			background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
			padding-top: 60px;
		}

		/* Extra styles for the cancel button */

		/* Center the image and position the close button */
		.imgcontainer {
			margin: 24px 0px 12px 10px;
			position: relative;
		}





		/* The Modal (background) */
		.modal {
			display: none; /* Hidden by default */
			position: fixed; /* Stay in place */
			z-index: 1; /* Sit on top */
			left: 0;
			top: 0;
			width: 100%; /* Full width */
			height: 100%; /* Full height */
			overflow: auto; /* Enable scroll if needed */
			background-color: rgb(0,0,0); /* Fallback color */
			background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
			padding-top: 60px;
		}

		/* Modal Content/Box */
		.modal-content {
			background-color: #fff;
			margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
			border: 2px solid #888;
			width: 80%; /* Could be more or less, depending on screen size */
		}

		/* The Close Button (x) */
		.close {
			position: absolute;
			right: 25px;
			top: 0;
			color: #000;
			font-size: 35px;
			font-weight: bold;
		}

			.close:hover,
			.close:focus {
				color: red;
				cursor: pointer;
			}

		/* Add Zoom Animation */
		.animate {
			-webkit-animation: animatezoom 0.6s;
			animation: animatezoom 0.6s
		}

		@-webkit-keyframes animatezoom {
			from {
				-webkit-transform: scale(0)
			}

			to {
				-webkit-transform: scale(1)
			}
		}

		@keyframes animatezoom {
			from {
				transform: scale(0)
			}

			to {
				transform: scale(1)
			}
		}



		.input-container {
			display: -ms-flexbox; /* IE10 */
			display: flex;
			width: 100%;
			margin-bottom: 15px;
		}
	</style>
	<%--//////////////////////--%>
	<link href="StyleSheet.css" rel="stylesheet" />
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
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
					<%--<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
			</ul>--%>

					<div class="centernav">

						<ul class="nav navbar-nav">
							<li><a href="Editor.aspx">Home</a></li>
								<%--	<li><a href="Author.aspx">Author</a></li>
							<li><a href="AscoEditor.aspx">Associate Editor</a></li>--%>
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
								<%--<li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>--%>
							<li class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#">
									<span class="glyphicon glyphicon-user"></span>
									<asp:Label ID="lblEICName" runat="server" Text=""></asp:Label>
									<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="Bio.aspx">My Profile </a></li>
										<%--<li><a href="AssignRole.aspx">Assign Role </a></li>--%>
									<li>
										<asp:LinkButton ID="lbLogout" OnClick="lbLogout_Click" runat="server">Log Out</asp:LinkButton></li>
								</ul>
							</li>
						</ul>


					</div>
				</div>
			</div>

		</nav>
		<br />
		<br />
		<br />
		<div class="leftcolumn">
			<div class="card">
				<h3>Editor-in-chief</h3>

				<center><h4>Quick Search</h4></center>
				<div class="search">

					<br />



					<asp:Label ID="lblManuType" runat="server" Text="Manuscript Type: "></asp:Label>

					&nbsp;&nbsp;&nbsp;&nbsp;
					
						<asp:TextBox ID="txtManuType" runat="server" Height="36px"></asp:TextBox>
					<br />
					<asp:Label ID="lblManuSearch" runat="server" Text="Search by Title: "></asp:Label>

					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						
						<asp:DropDownList ID="ddlManuSearch" runat="server" AppendDataBoundItems="True" DataSourceID="odsManu" DataTextField="ManuTitle" DataValueField="ManuTitle">
							<asp:ListItem Selected="True" Value="0">Select Title</asp:ListItem>
						</asp:DropDownList><br />
					<asp:Label ID="lblManuAuthor" runat="server" Text="Search by Author: "></asp:Label>

					&nbsp;&nbsp;&nbsp;
					
						<asp:DropDownList ID="ddlManuAuthor" runat="server" AppendDataBoundItems="True" DataSourceID="odsAuthor" DataTextField="UserName" DataValueField="UserName">
							<asp:ListItem Selected="True" Value="0">Select Author</asp:ListItem>
						</asp:DropDownList>

					<br />
					<asp:Label ID="lblManuKeywords" runat="server" Text="Keywords: "></asp:Label>

					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					

						<asp:DropDownList ID="ddlManuKeywords" runat="server" AppendDataBoundItems="True" DataSourceID="odsKeyword" DataTextField="Keywords" DataValueField="Keywords">
							<asp:ListItem Value="0">Select Keyword</asp:ListItem>
						</asp:DropDownList>



					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
					<br />
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						
						<asp:Button ID="btnSearch" runat="server" class="btn btn-primary"  Text="Search" Height="44px" Width="113px" OnClick="btnSearch_Click" />
					<br />
					<br />
					<br />
			

					</div>



			</div>


		</div>



		<%-- ///////////////////////--%>

		<div class="rightcolumn">
			<div class="card">
				<h3>Editor List</h3>

			
				<p>
					    
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lbInviteAE" runat="server" OnClick="lbInviteAE_Click">Invite AE</asp:LinkButton><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblViewSubmissions" runat="server" Text=""></asp:Label>&nbsp;<a><asp:LinkButton ID="lbViewSubmissions" OnClick="document.getElementById('id01').style.display='block'">View Submissions</asp:LinkButton></a><br />
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Label ID="lblAEInvitationResponse" runat="server" Text="0"></asp:Label>&nbsp;<a><asp:LinkButton ID="lbAEInvitationResponse" OnClick="document.getElementById('id03').style.display='block'">AE Invitation Response</asp:LinkButton></a>&nbsp;<br />
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Label ID="lblAddAE" runat="server" Text="0"></asp:Label>&nbsp;<asp:LinkButton ID="lbAddAE" runat="server" OnClick="lbAddAE_Click">Add AE</asp:LinkButton><br />
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Label ID="lbAEREC" runat="server" Text="0"></asp:Label>&nbsp;<a><asp:LinkButton ID="lbAERecom" OnClick="document.getElementById('id02').style.display='block'"> AE Recommendations</asp:LinkButton></a><br />
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </p>
			</div>
			<%--////////////////////--%>



			<div class="card">

				<%--	<p>--%><%--<div class="container mt-1">--%>


				<div class="card-header">
					<a class="card-link" data-toggle="collapse" href="#collapseOne">Manuscript status and Summary Reports
					</a>
				</div>
				<div id="collapseOne" class="collapse">
					<div class="card-body">
						<asp:LinkButton ID="LinkButton1" runat="server">Final Decision</asp:LinkButton><br />
						<asp:LinkButton ID="LinkButton2" runat="server">Manuscripts Decided</asp:LinkButton>
					</div>
				</div>

				<div class="card-header">
					<a class="collapsed card-link" data-toggle="collapse" href="#collapseTwo">Peer Review Details Reports
					</a>
				</div>
				<div id="collapseTwo" class="collapse">
					<div class="card-body">
						<asp:LinkButton ID="LinkButton3" runat="server">Manuscripts By AE</asp:LinkButton><br />
						<asp:LinkButton ID="LinkButton4" runat="server">Manuscripts By Status</asp:LinkButton>
					</div>
				</div>

				<div class="card-header">
					<a class="collapsed card-link" data-toggle="collapse" href="#collapseThree">User Account Reports
					</a>
				</div>
				<div id="collapseThree" class="collapse">
					<div class="card-body">
						<asp:LinkButton ID="LinkButton5" runat="server">Blocked Email Addresses</asp:LinkButton>
					</div>
				</div>


				<div class="card-header">
					<a class="collapsed card-link" data-toggle="collapse" href="#collapseFour">User Performance Reports
					</a>
				</div>
				<div id="collapseFour" class="collapse">
					<div class="card-body">
						<asp:LinkButton ID="LinkButton7" runat="server">AE Contact Info </asp:LinkButton>
						<br />
						<asp:LinkButton ID="LinkButton6" runat="server">Lifetime Statistics</asp:LinkButton><br />
						<asp:LinkButton ID="LinkButton8" runat="server">Reviewer Summary</asp:LinkButton>
					</div>
				</div>


			</div>

		</div>

		<asp:ObjectDataSource ID="odsViewSubmission" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="TRPRLibrary.TRPRLibraryDataSetTableAdapters.ManuscriptTableAdapter" DeleteMethod="Delete" InsertMethod="Insert" UpdateMethod="Update">
			<DeleteParameters>
				<asp:Parameter Name="Original_Id" Type="Int32" />
				<asp:Parameter Name="Original_ManuType" Type="String" />
				<asp:Parameter Name="Original_ManuTitle" Type="String" />
				<asp:Parameter Name="Original_ManuAbstract" Type="String" />
				<asp:Parameter Name="Original_Name" Type="String" />
				<asp:Parameter Name="Original_DocumentContent" Type="Object" />
				<asp:Parameter Name="Original_Extn" Type="String" />
				<asp:Parameter Name="Original_NameF" Type="String" />
				<asp:Parameter Name="Original_DocumentContentF" Type="Object" />
				<asp:Parameter Name="Original_ExtnF" Type="String" />
				<asp:Parameter Name="Original_UploadOn" Type="DateTime" />
				<asp:Parameter Name="Original_UploadBy" Type="String" />
				<asp:Parameter Name="Original_ConflictOfInterest" Type="String" />
			</DeleteParameters>
			<InsertParameters>
				<asp:Parameter Name="ManuType" Type="String" />
				<asp:Parameter Name="ManuTitle" Type="String" />
				<asp:Parameter Name="ManuAbstract" Type="String" />
				<asp:Parameter Name="Name" Type="String" />
				<asp:Parameter Name="DocumentContent" Type="Object" />
				<asp:Parameter Name="Extn" Type="String" />
				<asp:Parameter Name="NameF" Type="String" />
				<asp:Parameter Name="DocumentContentF" Type="Object" />
				<asp:Parameter Name="ExtnF" Type="String" />
				<asp:Parameter Name="UploadOn" Type="DateTime" />
				<asp:Parameter Name="UploadBy" Type="String" />
				<asp:Parameter Name="ConflictOfInterest" Type="String" />
			</InsertParameters>
			<UpdateParameters>
				<asp:Parameter Name="ManuType" Type="String" />
				<asp:Parameter Name="ManuTitle" Type="String" />
				<asp:Parameter Name="ManuAbstract" Type="String" />
				<asp:Parameter Name="Name" Type="String" />
				<asp:Parameter Name="DocumentContent" Type="Object" />
				<asp:Parameter Name="Extn" Type="String" />
				<asp:Parameter Name="NameF" Type="String" />
				<asp:Parameter Name="DocumentContentF" Type="Object" />
				<asp:Parameter Name="ExtnF" Type="String" />
				<asp:Parameter Name="UploadOn" Type="DateTime" />
				<asp:Parameter Name="UploadBy" Type="String" />
				<asp:Parameter Name="ConflictOfInterest" Type="String" />
				<asp:Parameter Name="Original_Id" Type="Int32" />
				<asp:Parameter Name="Original_ManuType" Type="String" />
				<asp:Parameter Name="Original_ManuTitle" Type="String" />
				<asp:Parameter Name="Original_ManuAbstract" Type="String" />
				<asp:Parameter Name="Original_Name" Type="String" />
				<asp:Parameter Name="Original_DocumentContent" Type="Object" />
				<asp:Parameter Name="Original_Extn" Type="String" />
				<asp:Parameter Name="Original_NameF" Type="String" />
				<asp:Parameter Name="Original_DocumentContentF" Type="Object" />
				<asp:Parameter Name="Original_ExtnF" Type="String" />
				<asp:Parameter Name="Original_UploadOn" Type="DateTime" />
				<asp:Parameter Name="Original_UploadBy" Type="String" />
				<asp:Parameter Name="Original_ConflictOfInterest" Type="String" />
			</UpdateParameters>
		</asp:ObjectDataSource>
		<%--////////////////////////////////////////////--%>		
		<div id="id01" class="modal">
			<div class="modal-content animate">
				<div class="imgcontainer">
					<h2 style="float: left;">Manuscript List</h2>
					<span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
					<br />
				</div>
				<div class="container">
				</div>
				
				<asp:GridView ID="gvManu" runat="server" AutoGenerateColumns="False" CssClass="table table-hover table-responsive" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="133px" BorderColor="#CCCCCC" Width="100%" BorderStyle="None" BorderWidth="1px" AllowSorting="True" BackColor="White" DataKeyNames="Id" DataSourceID="sqlViewSubmission" OnSelectedIndexChanged="gvManu_SelectedIndexChanged" >

					<Columns>
						<asp:BoundField DataField="Id" HeaderText="Id"  InsertVisible="False" ReadOnly="True" SortExpression="Id" />
						<asp:BoundField DataField="ManuType" HeaderText="Manuscript Type" SortExpression="ManuType" />
						<asp:BoundField DataField="ManuTitle" HeaderText="Manuscript Title" SortExpression="ManuTitle" />
						<asp:BoundField DataField="UploadOn" HeaderText="Upload On" SortExpression="UploadOn" DataFormatString="{0:d}" />
						<asp:BoundField DataField="UploadBy" HeaderText="Upload By" SortExpression="UploadBy" />
						<asp:TemplateField ShowHeader="False">
							
						</asp:TemplateField>
						<asp:TemplateField ShowHeader="False">
							<ItemTemplate>
								<asp:LinkButton ID="lbTakeAction" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
							</ItemTemplate>
						</asp:TemplateField>
					</Columns>
					<EmptyDataTemplate>
						No Submission Yet!!
					</EmptyDataTemplate>

					<FooterStyle BackColor="#CCCC99" ForeColor="Black" />
					<HeaderStyle BackColor="#3b5998" Font-Bold="True" ForeColor="White" />
					<PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
					<RowStyle CssClass="cursor-pointer" />
					<SelectedRowStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
					<SortedAscendingCellStyle BackColor="#F7F7F7" />
					<SortedAscendingHeaderStyle BackColor="#4B4B4B" />
					<SortedDescendingCellStyle BackColor="#E5E5E5" />
					<SortedDescendingHeaderStyle BackColor="#242121" />
				</asp:GridView>

			</div>
		</div>


		<asp:SqlDataSource ID="sqlViewSubmission" runat="server" ConnectionString="<%$ ConnectionStrings:TRPRConnectionString %>" SelectCommand="ShowDocumentForEIC" SelectCommandType="StoredProcedure"></asp:SqlDataSource>


		<asp:ObjectDataSource ID="odsManu" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="TRPRLibrary.TRPRLibraryDataSetTableAdapters.ManuscriptTableAdapter" DeleteMethod="Delete" InsertMethod="Insert" UpdateMethod="Update">
			<DeleteParameters>
				<asp:Parameter Name="Original_Id" Type="Int32" />
				<asp:Parameter Name="Original_ManuType" Type="String" />
				<asp:Parameter Name="Original_ManuTitle" Type="String" />
				<asp:Parameter Name="Original_ManuAbstract" Type="String" />
				<asp:Parameter Name="Original_Name" Type="String" />
				<asp:Parameter Name="Original_DocumentContent" Type="Object" />
				<asp:Parameter Name="Original_Extn" Type="String" />
				<asp:Parameter Name="Original_NameF" Type="String" />
				<asp:Parameter Name="Original_DocumentContentF" Type="Object" />
				<asp:Parameter Name="Original_ExtnF" Type="String" />
				<asp:Parameter Name="Original_UploadOn" Type="DateTime" />
				<asp:Parameter Name="Original_UploadBy" Type="String" />
				<asp:Parameter Name="Original_ConflictOfInterest" Type="String" />
			</DeleteParameters>
			<InsertParameters>
				<asp:Parameter Name="ManuType" Type="String" />
				<asp:Parameter Name="ManuTitle" Type="String" />
				<asp:Parameter Name="ManuAbstract" Type="String" />
				<asp:Parameter Name="Name" Type="String" />
				<asp:Parameter Name="DocumentContent" Type="Object" />
				<asp:Parameter Name="Extn" Type="String" />
				<asp:Parameter Name="NameF" Type="String" />
				<asp:Parameter Name="DocumentContentF" Type="Object" />
				<asp:Parameter Name="ExtnF" Type="String" />
				<asp:Parameter Name="UploadOn" Type="DateTime" />
				<asp:Parameter Name="UploadBy" Type="String" />
				<asp:Parameter Name="ConflictOfInterest" Type="String" />
			</InsertParameters>
			<UpdateParameters>
				<asp:Parameter Name="ManuType" Type="String" />
				<asp:Parameter Name="ManuTitle" Type="String" />
				<asp:Parameter Name="ManuAbstract" Type="String" />
				<asp:Parameter Name="Name" Type="String" />
				<asp:Parameter Name="DocumentContent" Type="Object" />
				<asp:Parameter Name="Extn" Type="String" />
				<asp:Parameter Name="NameF" Type="String" />
				<asp:Parameter Name="DocumentContentF" Type="Object" />
				<asp:Parameter Name="ExtnF" Type="String" />
				<asp:Parameter Name="UploadOn" Type="DateTime" />
				<asp:Parameter Name="UploadBy" Type="String" />
				<asp:Parameter Name="ConflictOfInterest" Type="String" />
				<asp:Parameter Name="Original_Id" Type="Int32" />
				<asp:Parameter Name="Original_ManuType" Type="String" />
				<asp:Parameter Name="Original_ManuTitle" Type="String" />
				<asp:Parameter Name="Original_ManuAbstract" Type="String" />
				<asp:Parameter Name="Original_Name" Type="String" />
				<asp:Parameter Name="Original_DocumentContent" Type="Object" />
				<asp:Parameter Name="Original_Extn" Type="String" />
				<asp:Parameter Name="Original_NameF" Type="String" />
				<asp:Parameter Name="Original_DocumentContentF" Type="Object" />
				<asp:Parameter Name="Original_ExtnF" Type="String" />
				<asp:Parameter Name="Original_UploadOn" Type="DateTime" />
				<asp:Parameter Name="Original_UploadBy" Type="String" />
				<asp:Parameter Name="Original_ConflictOfInterest" Type="String" />
			</UpdateParameters>
		</asp:ObjectDataSource>
		<asp:ObjectDataSource ID="odsAuthor" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="TRPRLibrary.TRPRLibraryDataSetTableAdapters.odsAuthorsearchTableAdapter">
		</asp:ObjectDataSource>
		<asp:ObjectDataSource ID="odsKeyword" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="TRPRLibrary.TRPRLibraryDataSetTableAdapters.KeywordTableAdapter" UpdateMethod="Update">
			<DeleteParameters>
				<asp:Parameter Name="Original_Id" Type="Int32" />
			</DeleteParameters>
			<InsertParameters>
				<asp:Parameter Name="Keywords" Type="String" />
				<asp:Parameter Name="ManuID" Type="Int32" />
			</InsertParameters>
			<UpdateParameters>
				<asp:Parameter Name="Keywords" Type="String" />
				<asp:Parameter Name="ManuID" Type="Int32" />
				<asp:Parameter Name="Original_Id" Type="Int32" />
			</UpdateParameters>
		</asp:ObjectDataSource>
		<asp:ObjectDataSource ID="odsManuSearch" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="TRPRLibrary.TRPRLibraryDataSetTableAdapters.ManuSearchTableAdapter">
			<SelectParameters>
				<asp:ControlParameter ControlID="ddlManuSearch" Name="Param1" PropertyName="SelectedValue" Type="String" />
				<asp:ControlParameter ControlID="ddlManuAuthor" Name="Param2" PropertyName="SelectedValue" Type="String" />
			</SelectParameters>
		</asp:ObjectDataSource>




		<asp:ObjectDataSource ID="odskeySearch" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="TRPRLibrary.TRPRLibraryDataSetTableAdapters.keysearchTableAdapter">
			<SelectParameters>
				<asp:ControlParameter ControlID="ddlManuKeywords" Name="Param1" PropertyName="SelectedValue" Type="String" />
			</SelectParameters>
		</asp:ObjectDataSource>
		




		



		

		<br />

	
		
		<div id="id03" class="modalResponse">
			<div class="modal-content animate">
				<div class="imgcontainer">
					<span onclick="document.getElementById('id03').style.display='none'" class="close" title="Close Modal">&times;</span>

				</div>
				<div class="container" >
					
					<asp:GridView ID="gvInvitationResponse" runat="server"  Width="58%" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="sqlInvitationResponse"  CellPadding="4" ForeColor="Black" GridLines="Horizontal" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Height="150px">
						<Columns>
							<asp:BoundField DataField="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
							<asp:BoundField DataField="Column1" HeaderText="AE Invitation Response" ReadOnly="True" SortExpression="Column1" />
							<asp:BoundField DataField="Upload" SortExpression="Upload" />
							<asp:TemplateField ShowHeader="False">
								<ItemTemplate>
									<asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return isDelete();"  Text="Delete"></asp:LinkButton>
								</ItemTemplate>
							</asp:TemplateField>
						</Columns>
						<EmptyDataTemplate>
							No Invitation Yet !
						</EmptyDataTemplate>
						<FooterStyle BackColor="#CCCC99" ForeColor="Black" />
					
						<PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />

						<RowStyle CssClass="cursor-pointer" />
						<SelectedRowStyle  Font-Bold="True" ForeColor="White" />
						<SortedAscendingCellStyle BackColor="#F7F7F7" />
						<SortedAscendingHeaderStyle BackColor="#4B4B4B" />
						<SortedDescendingCellStyle BackColor="#E5E5E5" />
						<SortedDescendingHeaderStyle BackColor="#242121" />
					</asp:GridView>
				</div>
			</div>
		</div>

			<div id="id02" class="modal">
			<div class="modal-content animate">
				<div class="imgcontainer">
					<h2 style="float: left;">AE&#39;s Recommendations</h2>
					<span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
					<br />
				</div>
				<div class="container">
				</div>
				
				<asp:GridView ID="gvAERecom" runat="server" AutoGenerateColumns="False" CssClass="table table-hover table-responsive" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="133px" BorderColor="#CCCCCC" Width="100%" BorderStyle="None" BorderWidth="1px" AllowSorting="True" BackColor="White" DataKeyNames="Id" DataSourceID="sqlAERecom" OnSelectedIndexChanged="gvAERecom_SelectedIndexChanged" >

					<Columns>
						<asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
						<asp:BoundField DataField="UpdatedBy" HeaderText="AE Name" SortExpression="UpdatedBy" />
						<asp:BoundField DataField="UpdatedOn" HeaderText="UpdatedOn" SortExpression="UpdatedOn" />
						
						<asp:TemplateField ShowHeader="False">
							<ItemTemplate>
								<asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text=" AE's Recommendation"></asp:LinkButton>
							</ItemTemplate>
						</asp:TemplateField>
					</Columns>

					<EmptyDataTemplate>
						No AE Recommendation Yet !!
					</EmptyDataTemplate>

					<FooterStyle BackColor="#CCCC99" ForeColor="Black" />
					<HeaderStyle BackColor="#3b5998" Font-Bold="True" ForeColor="White" />
					<PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
					<RowStyle CssClass="cursor-pointer" />
					<SelectedRowStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
					<SortedAscendingCellStyle BackColor="#F7F7F7" />
					<SortedAscendingHeaderStyle BackColor="#4B4B4B" />
					<SortedDescendingCellStyle BackColor="#E5E5E5" />
					<SortedDescendingHeaderStyle BackColor="#242121" />
				</asp:GridView>
				<asp:SqlDataSource ID="sqlAERecom" runat="server" ConnectionString="<%$ ConnectionStrings:TRPRConnectionString %>" SelectCommand="SELECT Comment.Id, Comment.UpdatedOn, Comment.UpdatedBy, Comment.CommentToAuthor, Comment.CommentToEditor, Comment.FinalDecision, Comment.Name, Comment.DocumentContent, Comment.Extn, Comment.FilePath, Comment.FileID, Submission.FileID AS Expr1, Submission.ManuID FROM Submission INNER JOIN Comment ON Submission.FileID = Comment.FileID    INNER JOIN Person ON Comment.UpdatedBy = Person.UserName WHERE Submission.FileID = Comment.FileID AND (Person.RoleID = 1)"></asp:SqlDataSource>
			</div>
		</div>



		<script>
			// Get the modal
			var modal = document.getElementById('id01');

			// When the user clicks anywhere outside of the modal, close it
			window.onclick = function (event) {
				if (event.target == modal) {
					modal.style.display = "none";
				}
			}
		</script>
			<script>
			// Get the modal
			var modal = document.getElementById('id02');

			// When the user clicks anywhere outside of the modal, close it
			window.OnCommand = function (event) {
				if (event.target == modal) {
					modal.style.display = "none";
				}
			}
		</script>

		<script>
			// Get the modal
			var modal = document.getElementById('id03');

			// When the user clicks anywhere outside of the modal, close it
			window.onclick = function (event) {
				if (event.target == modal) {
					modal.style.display = "none";
				}
			}
		</script>

		<asp:SqlDataSource ID="sqlInvitationResponse" runat="server" ConnectionString="<%$ ConnectionStrings:TRPRConnectionString %>" SelectCommand="SELECT Id, (FullName+' '+ Response+' '),Upload FROM [InvResponse]" DeleteCommand="Delete from [InvResponse] where [Id] = @Id">
				<DeleteParameters>
					<asp:Parameter Name="Id" Type="String"/>
				</DeleteParameters></asp:SqlDataSource>

		<asp:SqlDataSource ID="sqlTitleAuthor" runat="server" ConnectionString="<%$ ConnectionStrings:TRPRConnectionString %>" SelectCommand="AuthorTitleSearch" SelectCommandType="StoredProcedure" >
			<SelectParameters>
				<asp:ControlParameter ControlID="ddlManuSearch" Name="Title" PropertyName="SelectedValue" Type="String" />
				<asp:ControlParameter ControlID="ddlManuAuthor" Name="UploadBy" PropertyName="SelectedValue" Type="String" />
			</SelectParameters>
		</asp:SqlDataSource>
		<div id="#mypages" data-spy="scroll" >
		<asp:GridView ID="gvAllManuSearch" runat="server"  Width="95%" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="sqlTitleAuthor" CssClass="table table-hover table-responsive" CellPadding="4" ForeColor="Black" GridLines="Horizontal" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" AllowSorting="True">
						<Columns>
							<asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
							<asp:BoundField DataField="ManuType" HeaderText="Manuscript Type" SortExpression="ManuType" />
							<asp:BoundField DataField="ManuTitle" HeaderText="Manuscript Title" SortExpression="ManuTitle" />
							<asp:BoundField DataField="UploadBy" HeaderText="Author" SortExpression="UploadBy" />
							<asp:BoundField DataField="Keyword" HeaderText="Keyword" ReadOnly="True" SortExpression="Keyword" />
							<asp:TemplateField ShowHeader="False">
								<ItemTemplate>
									<asp:LinkButton ID="lblInvite" runat="server" CausesValidation="False" CommandName="Select" OnClick="lblInvite_Click" Text="Invite"></asp:LinkButton>
								</ItemTemplate>
							</asp:TemplateField>
						</Columns>
						<EmptyDataTemplate>
							No Manuscript Found!
						</EmptyDataTemplate>
						<FooterStyle BackColor="#CCCC99" ForeColor="Black" />
						<HeaderStyle BackColor="#3b5998" Font-Bold="True" ForeColor="White" />
						<PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />

						<RowStyle CssClass="cursor-pointer" />
						<SelectedRowStyle BackColor="#f1f1f1" Font-Bold="True" ForeColor="White" />
						<SortedAscendingCellStyle BackColor="#F7F7F7" />
						<SortedAscendingHeaderStyle BackColor="#4B4B4B" />
						<SortedDescendingCellStyle BackColor="#E5E5E5" />
						<SortedDescendingHeaderStyle BackColor="#242121" />
					</asp:GridView>



					<asp:GridView ID="gvManusearch" runat="server" Width="95%" CssClass="table table-hover table-responsive" CellPadding="4" ForeColor="Black" GridLines="Horizontal" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
						<Columns>
							<asp:TemplateField ShowHeader="False">
								<ItemTemplate>
									<asp:LinkButton ID="lblInviteType" runat="server" CausesValidation="False" CommandName="Select" OnClick="lblInviteType_Click" Text="Invite"></asp:LinkButton>
								</ItemTemplate>
							</asp:TemplateField>
						</Columns>
						<EmptyDataTemplate>
							No Manuscript Found With this Type!
						</EmptyDataTemplate>
						<FooterStyle BackColor="#CCCC99" ForeColor="Black" />
						<HeaderStyle BackColor="#3b5998" Font-Bold="True" ForeColor="White" />
						<PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />

						<RowStyle CssClass="cursor-pointer" />
						<SelectedRowStyle BackColor="#f1f1f1" Font-Bold="True" ForeColor="White" />
						<SortedAscendingCellStyle BackColor="#F7F7F7" />
						<SortedAscendingHeaderStyle BackColor="#4B4B4B" />
						<SortedDescendingCellStyle BackColor="#E5E5E5" />
						<SortedDescendingHeaderStyle BackColor="#242121" />
					</asp:GridView>
				

		<asp:GridView ID="gvKeywordSearch" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="odskeySearch" Width="95%" CssClass="table table-hover table-responsive" CellPadding="4" ForeColor="Black" GridLines="Horizontal" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" AllowSorting="True">
			<Columns>
				<asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
				<asp:BoundField DataField="ManuType" HeaderText="Manuscript Type" SortExpression="ManuType" />
				<asp:BoundField DataField="ManuTitle" HeaderText="Manuscript Title" SortExpression="ManuTitle" />
				<asp:BoundField DataField="Keywords" HeaderText="Keywords" SortExpression="Keywords" />
				<asp:BoundField DataField="UploadBy" HeaderText="Author" SortExpression="UploadBy" />
				<asp:TemplateField ShowHeader="False">
					<ItemTemplate>
						<asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" OnClick="LinkButton1_Click" Text="Invite"></asp:LinkButton>
					</ItemTemplate>
				</asp:TemplateField>
			</Columns>

			<EmptyDataTemplate>
				No Keyword Found!
			</EmptyDataTemplate>

			<FooterStyle BackColor="#CCCC99" ForeColor="Black" />
			<HeaderStyle BackColor="#3b5998" Font-Bold="True" ForeColor="White" />
			<PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
			<RowStyle CssClass="cursor-pointer" />
			<SelectedRowStyle BackColor="#f1f1f1" Font-Bold="True" ForeColor="White" />
			<SortedAscendingCellStyle BackColor="#F7F7F7" />
			<SortedAscendingHeaderStyle BackColor="#4B4B4B" />
			<SortedDescendingCellStyle BackColor="#E5E5E5" />
			<SortedDescendingHeaderStyle BackColor="#242121" />
		</asp:GridView>
			</div>
		<script type="text/javascript">
			function isDelete() {
				return confirm("Are you sure you want to Delete this invitation Response?");
				
			}

		</script>

	</form>
</body>
</html>
