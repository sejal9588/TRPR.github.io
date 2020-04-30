<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Author.aspx.cs" Inherits="TRPR.Author" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<link href="StyleSheet.css" rel="stylesheet" />
	<style>
		input[type=text], select {
			padding: 8px 5px;
			margin: 5px 0 5px 0;
			display: inline-block;
			border: 1px solid #ccc;
			border-radius: 4px;
			box-sizing: border-box;
			width: 140px;
		}

		/* The Modal (background) */
		.modal {
			display: none; /* Hidden by default */
			position: absolute; /* Stay in place */
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
			margin: 8% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
			border: 2px solid #888;
			width: 25%; /* Could be more or less, depending on screen size */
		}

		/* The Close Button (x) */
		.close {
			position: absolute;
			right: 5px;
			top: 0;
			color: #000;
			font-size: 35px;
			font-weight: bold;
			float: right;
			margin-top: 3%
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

		.imgcontainer {
			text-align: center;
			margin: 12px 0 12px 0;
		}

		.input-container {
			display: -ms-flexbox; /* IE10 */
			display: flex;
			width: 100%;
			margin-bottom: 15px;
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

		.current {
			background-color: #5F7EC1;
		}

		.leftcolumn {
			float: left;
			display: inline-block;
			border: 2px solid #f1f1f1;
			border-radius: 10px;
			padding-left: 10px;
			padding-right: 10px;
			margin-left: 5%;
			margin-right: 5%;
			margin-top: 5%;
		}


		.rightcolumn {
			float: left;
			width: 65%;
			display: inline-block;
			margin-top: 5%;
		}

		.content {
			margin-left: 10px;
		}

		.SubmissionText {
			font-size: x-large;
			display: inline-block;
			width: 100%;
		}



		.rightcolumn {
			width: 70%;
		}

		.container {
			width: 100%;
		}




		@media (min-width: 1025px) and (max-width: 1440px) {
			.rightcolumn {
				width: 60%;
			}

			.container {
				padding: 16px;
				width: 100%;
			}
		}

		@media (min-width: 769px) and (max-width: 1024px) {
			.modal-content {
				background-color: #fff;
				margin: 5% auto auto 25%; /* 5% from the top, 15% from the bottom and centered */
				border: 2px solid #888;
				width: 45%; /* Could be more or less, depending on screen size */
			}

			.leftcolumn {
				padding-left: 10px;
				padding-right: 10px;
				margin-left: 5%;
			}


			.rightcolumn {
				width: 55%;
			}

			.container {
				width: 100%;
			}
		}


		@media (min-width: 426px) and (max-width: 768px) and (orientation: landscape) {
			.leftcolumn {
				padding-left: 8px;
				padding-right: 8px;
				margin-left: 4%;
			}

			.rightcolumn {
				width: 40%;
			}

			.container {
				width: 100%;
			}

			.SubmissionText {
				font-size: 20px;
			}

			.modal-content {
				background-color: #fff;
				margin: 5% auto auto 25%; /* 5% from the top, 15% from the bottom and centered */
				border: 2px solid #888;
				width: 45%; /* Could be more or less, depending on screen size */
			}
		}

		@media (min-width: 376px) and (max-width: 425px) {
			.leftcolumn {
				margin-left: 6%;
				margin-right: 5%;
				width: 85%;
			}

			.rightcolumn {
				margin-left: 6%;
				margin-right: 5%;
				width: 85%;
			}

			.modal {
				width: 100%; /* Full width */
				height: 100%; /* Full height */
			}

			.modal-content {
				background-color: #fff;
				margin: 8% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
				border: 2px solid #888;
				width: 70%; /* Could be more or less, depending on screen size */
			}

			h2 {
				font-size: 20px;
			}

			h3 {
				padding: 8px;
			}
		}


		@media (min-width: 320px) and (max-width: 375px) {
			.leftcolumn {
				margin-left: 6%;
				margin-right: 5%;
				width: 85%;
			}

			.rightcolumn {
				margin-left: 6%;
				margin-right: 5%;
				width: 85%;
			}

			.SubmissionText {
				font-size: 20px;
			}

			.modal {
				width: 100%; /* Full width */
				height: 100%; /* Full height */
			}

			.modal-content {
				background-color: #fff;
				margin: 8% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
				border: 2px solid #888;
				width: 70%; /* Could be more or less, depending on screen size */
			}

			h2 {
				font-size: 20px;
			}

			h3 {
				padding: 8px;
			}
		}
	</style>
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

					<div class="centernav">

						<ul class="nav navbar-nav">
							<li><a href="SecIndex.aspx">Home</a></li>
							<li><a href="Author.aspx">Author</a></li>
							<li><asp:LinkButton ID="lbAscoEditor" runat="server" OnClick="lbAscoEditor_Click">Associate Editor</asp:LinkButton></li>
								<%--	<li><a href="#" >Editor-in-Chief </a></li>--%>


							<li class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#">More
                                <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="Contact.aspx">Contact</a></li>
									<li><a href="https://www.trontario.org/about/tro-staff.html">TRO Staff</a></li>
									<li><a href="https://www.trontario.org/news-events/index.html">Events</a></li>
								</ul>

							</li>

							<li class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#">
									<span class="glyphicon glyphicon-user"></span>
									<asp:Label ID="lblUser" runat="server" Text=""></asp:Label><%--<%=Request.QueryString["User"] %> --%>
									<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="Bio.aspx">My Profile </a></li>
									<li>
										<asp:LinkButton ID="lbLogout" OnClick="lbLogout_Click" runat="server">Log Out</asp:LinkButton></li>
								</ul>
							</li>
								<%--<li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>--%>
						</ul>


					</div>
				</div>
			</div>

		</nav>

		<div class="content">
			<br />
			<br />
			<div class="leftcolumn">

				<h3>Author Dashboard</h3>
				<hr />

				<p>
					&nbsp;<asp:LinkButton ID="lbInstruction" runat="server" OnClick="lbInstruction_Click"><span class="glyphicon glyphicon-info-sign" ></span> Instructions</asp:LinkButton><br />
					<hr />
				<%--&nbsp;<asp:LinkButton ID="lbProfile" runat="server" OnClick="lbProfile_Click" ><span class="glyphicon glyphicon-user" ></span>  Manage Your Profile</asp:LinkButton><br /><hr />--%>&nbsp;<asp:LinkButton ID="lbStartSubmission" runat="server" OnClick="lbStartSubmission_Click">Start New Submission</asp:LinkButton><br />
					<hr />
					<asp:Label ID="lblUnsubmitted" runat="server" Text="0"></asp:Label>&nbsp;<asp:LinkButton ID="lbUnsubmitted" runat="server" OnClick="lbUnsubmitted_Click">Unsubmitted Manuscripts in Draft</asp:LinkButton><br />
					<hr />

				

					<asp:Label ID="lblViewProgress" runat="server" Text="0"></asp:Label>&nbsp;<asp:LinkButton ID="lbViewProgress" runat="server" OnClick="lbViewProgress_Click">View Manuscript Progress</asp:LinkButton><br />
					<hr />
					<asp:LinkButton ID="lbSendEmail" runat="server" OnClick="lbSendEmail_Click">Send Emails</asp:LinkButton><br />
					<hr />



				<asp:Label ID="lblRoleID" runat="server"></asp:Label>



				</p>

			</div>

			<div class="rightcolumn">
				<asp:Panel ID="pnStartSubmission" runat="server">


					<h3 style="color: #3b5998;">Start New Submission</h3>
					<hr />
					<span class="SubmissionText">Traditional Submission allows you to upload files that were created from many sources.</span><br />
					<br />
					<div style="float: right;">
						<asp:Button ID="btnSubmission" runat="server" Class="btn btn-primary" Text="Begin Submission" Height="50px" OnClick="btnSubmission_Click"></asp:Button>
						<br />
						<br />

					</div>

				</asp:Panel>
				<asp:Panel ID="pnViewProgress" runat="server">
					<asp:Label ID="lblsearchtit" runat="server" Text="Search by Title: "></asp:Label>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<asp:TextBox ID="txtTit" runat="server"></asp:TextBox>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<asp:Button ID="btnSearch" runat="server" Text="Search" class="btn btn-primary" OnClick="btnSearch_Click"/>
					<br />
					<br />
					<asp:Label ID="lblmess" runat="server" Text="" ForeColor="#3b5992" Font-Bold="true"></asp:Label>
					<asp:GridView ID="gvDocuments" runat="server" GridLines="None" CssClass="table table-hover table-responsive" CellPadding="4" BorderStyle="None" HeaderStyle-Font-Bold="true" HeaderStyle-BackColor="#3b5998" HeaderStyle-ForeColor="White" AutoGenerateColumns="False" DataKeyNames="Id" OnRowCommand="gvDocuments_RowCommand"  >
						<Columns>
							<asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True"  InsertVisible="False" SortExpression="Id" />
							<asp:TemplateField HeaderText="Type">
								<ItemTemplate>
									<asp:Label ID="lblManuType" runat="server" Text='<%# Eval("ManuType") %>'></asp:Label>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="Title">
								<ItemTemplate>
									<asp:Label ID="lblManuTitle" runat="server" Text='<%# Eval("ManuTitle") %>'></asp:Label>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="Cover Page">
								<ItemTemplate>
									<asp:LinkButton ID="LinkButton1" runat="server" OnClick="OpenDocument" Text='<%# Eval("Name") %>'></asp:LinkButton>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="Manuscript File">
								<ItemTemplate>
									<asp:LinkButton ID="LinkButton2" runat="server" OnClick="OpenDocumentf" Text='<%# Eval("NameF") %>'></asp:LinkButton>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="Status">
								<ItemTemplate>
									<asp:Label ID="lblSubmitted" runat="server" Text="Submitted"></asp:Label>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="">
								<ItemTemplate>
									<asp:LinkButton ID="lblProgress" runat="server"  CommandArgument='<%# Eval("Id") %>' CommandName="getId" >View Progress</asp:LinkButton>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="">
								<ItemTemplate>
									<asp:Label ID="lblUploadBy" runat="server" Visible="false" Text='<%# Eval("UploadBy") %>'></asp:Label>
								</ItemTemplate>
							</asp:TemplateField>
						</Columns>
						<HeaderStyle BackColor="#3B5998" Font-Bold="True" ForeColor="White" />
					</asp:GridView>

					<br />	<br />
					<asp:GridView ID="gvSearchTitle" runat="server" GridLines="None" CssClass="table table-hover table-responsive" CellPadding="4" BorderStyle="None" HeaderStyle-Font-Bold="true" HeaderStyle-BackColor="#3b5998" HeaderStyle-ForeColor="White" AutoGenerateColumns="False" DataKeyNames="Id" OnRowCommand="gvSearchTitle_RowCommand" DataSourceID="sqlSearchTitile"  >
						<Columns>
							<asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True"  InsertVisible="False" SortExpression="Id" />
							<asp:TemplateField HeaderText="Type">
								<ItemTemplate>
									<asp:Label ID="lblManuType" runat="server" Text='<%# Eval("ManuType") %>'></asp:Label>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="Title">
								<ItemTemplate>
									<asp:Label ID="lblManuTitle" runat="server" Text='<%# Eval("ManuTitle") %>'></asp:Label>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="Cover Page">
								<ItemTemplate>
									<asp:LinkButton ID="LinkButton1" runat="server" OnClick="OpenDocument" Text='<%# Eval("Name") %>'></asp:LinkButton>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="Manuscript File">
								<ItemTemplate>
									<asp:LinkButton ID="LinkButton2" runat="server" OnClick="OpenDocumentf" Text='<%# Eval("NameF") %>'></asp:LinkButton>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="Status">
								<ItemTemplate>
									<asp:Label ID="lblSubmitted" runat="server" Text="Submitted"></asp:Label>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="">
								<ItemTemplate>
									<asp:LinkButton ID="lblProgress" runat="server"  CommandArgument='<%# Eval("Id") %>' CommandName="getId" >View Progress</asp:LinkButton>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="">
								<ItemTemplate>
									<asp:Label ID="lblUploadBy" runat="server" Visible="false" Text='<%# Eval("UploadBy") %>'></asp:Label>
								</ItemTemplate>
							</asp:TemplateField>
						</Columns>
						<EmptyDataTemplate>
							No Manuscript Found with this Title.
						</EmptyDataTemplate>
						<HeaderStyle BackColor="#3B5998" Font-Bold="True" ForeColor="White" />
					</asp:GridView>
					<asp:SqlDataSource ID="sqlSearchTitile" runat="server" ConnectionString="<%$ ConnectionStrings:TRPRConnectionString %>" SelectCommand="selectByTitle" SelectCommandType="StoredProcedure">
						<SelectParameters>
							<asp:ControlParameter ControlID="txtTit" Name="title" PropertyName="Text" Type="String" />
							<asp:SessionParameter Name="userName" SessionField="Data" Type="String" />
						</SelectParameters>
					</asp:SqlDataSource>

				</asp:Panel>

				<asp:Panel ID="pnSaveDraft" runat="server">




					<asp:ObjectDataSource ID="odsSaveDraft" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="TRPRLibrary.TRPRLibraryDataSetTableAdapters.SaveDraftTableAdapter" DeleteMethod="Fill" InsertMethod="Fill" UpdateMethod="Fill">
						<DeleteParameters>
							<asp:Parameter Name="dataTable" Type="Object" />
							<asp:Parameter Name="Param1" Type="String" />
						</DeleteParameters>
						<InsertParameters>
							<asp:Parameter Name="dataTable" Type="Object" />
							<asp:Parameter Name="Param1" Type="String" />
						</InsertParameters>
						<SelectParameters>
							<asp:SessionParameter Name="Param1" SessionField="Data" Type="String" />
						</SelectParameters>
						<UpdateParameters>
							<asp:Parameter Name="dataTable" Type="Object" />
							<asp:Parameter Name="Param1" Type="String" />
						</UpdateParameters>
					</asp:ObjectDataSource>
					<br />
				



					<asp:GridView ID="gvSaveDraft" runat="server" AutoGenerateColumns="False" BorderStyle="None" CellPadding="4" CssClass="table table-hover table-responsive" DataKeyNames="Id" DataSourceID="sqlManuDraft" GridLines="None" HeaderStyle-BackColor="#3b5998" HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="White" OnSelectedIndexChanged="gvSaveDraft_SelectedIndexChanged">
						<Columns>
							<asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
							<asp:BoundField DataField="ManuType" HeaderText="Manuscript Type" SortExpression="ManuType" />
							<asp:BoundField DataField="ManuTitle" HeaderText="Manuscript Title" SortExpression="ManuTitle" />
							<asp:BoundField DataField="UploadOn" HeaderText="Draft Saved On" SortExpression="UploadOn" />


							<asp:TemplateField ShowHeader="False">
								<ItemTemplate>
									<asp:LinkButton ID="lbSelectDraftDetail" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
								</ItemTemplate>
							</asp:TemplateField>

						</Columns>
						<EmptyDataTemplate>
							NO DRAFT YET!!!
						</EmptyDataTemplate>
						<HeaderStyle BackColor="#3B5998" Font-Bold="True" ForeColor="White" />
					</asp:GridView>
					<br />
					<center>	<asp:Label ID="lblConfirmation" runat="server" ForeColor="#3b5992" ></asp:Label></center>
				</asp:Panel>


				<asp:Panel ID="pnSaveDraftDetail" runat="server">
				<asp:DetailsView ID="dvSaveDraftDetail" runat="server" Height="350px" Style="margin-left: 5%;" Width="90%" BorderStyle="None" GridLines="None" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="sqlManuDraft">
						<FieldHeaderStyle Font-Bold="True" ForeColor="Black" />
						<Fields>
							<asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
							<asp:BoundField DataField="ManuType" HeaderText="ManuType: " SortExpression="ManuType" />
							<asp:BoundField DataField="ManuTitle" HeaderText="ManuTitle: " SortExpression="ManuTitle" />
							<asp:BoundField DataField="ManuAbstract" HeaderText="ManuAbstract: " SortExpression="ManuAbstract" />

							<asp:BoundField DataField="UploadOn" HeaderText="UploadOn: " SortExpression="UploadOn" />
							<asp:BoundField DataField="UploadBy" HeaderText="UploadBy: " SortExpression="UploadBy" />
							<asp:BoundField DataField="ConflictOfInterest" HeaderText="Conflict Of Interest: " NullDisplayText="No Conflict of Interest" SortExpression="ConflictOfInterest" />
							<asp:BoundField DataField="KeywordDraft" HeaderText="Keywords: " ReadOnly="True" SortExpression="KeywordDraft" />
							<asp:TemplateField HeaderText="Cover Page: ">
								<ItemTemplate>
									<asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("Name") %>' OnClick="OpenCover" CommandArgument='<%# Eval("Name") %>'></asp:LinkButton>
										&nbsp;&nbsp;&nbsp; <label class="btn btn-info">?</label>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="Manuscript File: ">
								<ItemTemplate>
									<asp:LinkButton ID="LinkButton2" runat="server"  Text='<%# Eval("NameF") %>' OnClick="OpenFile" CommandArgument='<%# Eval("NameF") %>'></asp:LinkButton>
										&nbsp;&nbsp;&nbsp; <lablel class="btn btn-info">?</lablel>
								</ItemTemplate>
							</asp:TemplateField>
						</Fields>
					</asp:DetailsView>

		<script>
$(document).ready(function(){

  $('.btn-info').tooltip({title: "Click on File name to download!", trigger: "hover", placement: "right"}); 

});
</script>



					<br />

					<asp:SqlDataSource ID="sqlManuDraft" runat="server" ConnectionString="<%$ ConnectionStrings:TRPRConnectionString %>" SelectCommand="DraftDetail" SelectCommandType="StoredProcedure">
						<SelectParameters>
							<asp:SessionParameter Name="UploadBy" SessionField="Data" Type="String" />
						</SelectParameters>
					</asp:SqlDataSource>
					<asp:Button ID="btnDraftSubmit" runat="server" Style="margin-left: 5%;" class="btn btn-primary" Text="Continue to Submit" OnClick="btnDraftSubmit_Click" />

					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<asp:Button ID="btnDeleteDSraft" runat="server" class="btn btn-danger" Text="Delete Draft" OnClick="btnDeleteDraft_Click" />

				</asp:Panel>
		


	


		<asp:Panel ID="pnShowEICResp" runat="server">
			<div class="card" >
			<br />
		<center><asp:Label ID="lblRecomm" runat="server" ForeColor="#3b5992" Font-Size="22px"  Text="Editor-in-Chief's Recommendations"></asp:Label>	</center>
				<br />
				<div style="margin-left:15%; margin-right:10%" >
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;
				<br />
			
				<asp:Label ID="Label11" runat="server" Font-Bold="true" Text="Upload On: "></asp:Label>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label12" runat="server" Font-Size="18px" Text=""></asp:Label>
					<br />
					<asp:Label ID="Label1" runat="server" Font-Bold="true" Text="Final Decision"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<asp:Label ID="Label13" runat="server"></asp:Label>
					<br />
				<asp:Label ID="Label6" runat="server" Font-Bold="true" Text="Editor Comments"></asp:Label><br />
				<asp:Label ID="Label7" runat="server" Text=""></asp:Label>
					<br />
					<asp:Label ID="Label14" runat="server"></asp:Label>
					<br />
					<asp:Label ID="lblFileID" runat="server"></asp:Label>
					<br />
					<asp:SqlDataSource ID="sqlComment" runat="server" ConnectionString="<%$ ConnectionStrings:TRPRConnectionString %>" SelectCommand="SELECT Comment.Id, Comment.UpdatedOn, Comment.UpdatedBy, Comment.CommentToAuthor, Comment.CommentToEditor, Comment.FinalDecision, Comment.Name, Comment.DocumentContent, Comment.Extn, Comment.FilePath, Comment.FileID, Person.UserName, Person.RoleID FROM Comment INNER JOIN Person ON Comment.UpdatedBy = Person.UserName WHERE (Comment.FileID = @Param1) AND (Person.RoleID = 2)">
						<SelectParameters>
							<asp:ControlParameter ControlID="lblFileID" Name="Param1" PropertyName="Text" />
						</SelectParameters>
					</asp:SqlDataSource>
					<asp:DetailsView ID="dvComment" runat="server" AutoGenerateRows="False" DataKeyNames="Id,UserName" DataSourceID="sqlComment" Height="50px" Width="125px">
						<Fields>
							<asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
							<asp:BoundField DataField="UpdatedOn" HeaderText="UpdatedOn" SortExpression="UpdatedOn" />
							<asp:BoundField DataField="CommentToAuthor" HeaderText="CommentToAuthor" SortExpression="CommentToAuthor" />
							<asp:BoundField DataField="FinalDecision" HeaderText="FinalDecision" SortExpression="FinalDecision" />
						</Fields>
					</asp:DetailsView>
					<br />
						
			
				
				
				</div>
				
    </div>
 
		</asp:Panel>



		</div>

		</div>

			<div id="id01" class="modal">
			<div class="modal-content animate">
				<div class="imgcontainer">
					<center><h3 style="border-radius: 4px; padding: 10px; background-color: #3b5998; width:100%;color:white;">Error Message<span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span></h3></center>
				</div>
				<div class="container">
					<div class="input-container">
						<h2>Access Denied <span class="glyphicon glyphicon-exclamation-sign"></span></h2>
						<br />

					</div>


				</div>
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



		<script type="text/javascript">
			function googleTranslateElementInit() {
				new google.translate.TranslateElement({ pageLanguage: 'en' }, 'google_translate_element');
			}
		</script>

		
	</form>
</body>
</html>
