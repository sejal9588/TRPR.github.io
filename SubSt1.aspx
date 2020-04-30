<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SubSt1.aspx.cs" Inherits="TRPR.SubSt1" %>

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
	<link href="StyleSheet.css" rel="stylesheet" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


	<style>
		
		/*h3{
			border-radius: 4px;
			padding: 10px;
			background-color: #3b5998;
			
			width:80%;
			color:white;
		}*/
	
		.count {
			color:black;
			background-color:#f1f1f1;
			float:right;
			margin-right:18%;
		}
 .containermodal {
  padding: 16px;
  width:100%;
}
		/* The Modal (background) */
.modalpopup {
  display: none; /* Hidden by default */
  position:absolute ; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 150%; /* Full height */
 overflow: auto;/* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-contents {
  background-color: #fff;
  border-radius:4px;
  margin: 8% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 2px solid #888;
  width: 30%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 5px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
  float:right;
  margin-top:3%;

}

.imgcontainer {
  text-align: center;
  margin: 12px 0 12px 0;
}

/* Add Zoom Animation */
.animatemodal {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
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
			width: 20%;
			display: inline-block;
			border: 2px solid #f1f1f1;
			border-radius: 10px;
			padding-left: 10px;
			padding-right: 10px;
			margin-top: 9%;
			margin-left: 5%;
			margin-right: 3%;
		}


		.rightcolumn {
			float: left;
			width: 60%;
			display: inline-block;
			padding-left: 10px;
			margin-left: 3%;
			margin-right: 5%;
			margin-top: 9%;
		}
		/*.modal-content animate{
            margin-left:5%;
            margin-right:5%;
        }*/
		.container {
			margin-left: 5%;
			margin-right: 5%;
			width: 100%;
		}

		.save {
			margin-right: 15%;
			float: right
		}
		/*.content {
            margin-top: 100px;
            margin-left: 10px;
        }*/

		.SubmissionText {
			font-size: x-large;
			display: inline-block;
			width: 100%;
		}

		/*#btnEdit {
            display: inline-block;
            cursor: pointer;
            width: 5%;
            height: 60px;
            font-size: 22px;
            margin-right: 20px;
        }*/

		/*#btnSubmission {
            background-color: #5F7EC1;
            border: none;
            color: white;
            padding: 15px 32px;
            margin-left: 50px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
        }*/

		table {
			font-family: arial, sans-serif;
			border-collapse: collapse;
			width: 87%;
		}

		td, th {
			border: 1px solid #dddddd;
			text-align: left;
			/*padding: 8px;*/
		}

		table th {
			background-color: #ccc;
		}
		tr:nth-child(even){
			background-color: #dddddd;
		}
		

		.rightcolumn hr {
			/*display: block;*/
			height: 5px;
			background-color: grey;
			width: 87%;
			margin-right: 15%;
		}

	
		.red {
			color: red;
		}

		.List {
			width: 196px;
		}
	</style>
	<style>
		* {
			box-sizing: border-box;
		}



		/*the container must be positioned relative:*/
		.autocomplete {
			position: relative;
			display: inline-block;
		}





		.autocomplete-items {
			position: absolute;
			border: 1px solid #d4d4d4;
			border-bottom: none;
			border-top: none;
			z-index: 99;
			/*position the autocomplete items to be the same width as the container:*/
			top: 100%;
			left: 0;
			right: 0;
		}

			.autocomplete-items div {
				padding: 7px;
				cursor: pointer;
				background-color: #fff;
				border-bottom: 1px solid #d4d4d4;
			}

				/*when hovering an item:*/
				.autocomplete-items div:hover {
					background-color: #e9e9e9;
				}

		/*when navigating through the items using the arrow keys:*/
		.autocomplete-active {
			background-color: DodgerBlue !important;
			color: #ffffff;
		}
	

		#btnSave {
			margin-right: 5%;
		}

		#btnPrevious {
			margin-left: 65%;
		}
		#btnSave3 {
			margin-right: 5%;
		}

		#btnPrevious3 {
			margin-left: 65%;
		}
		/*#btnSave4 {
			margin-right: 5%;
		}

		#btnPrevious4 {
			margin-left: 75%;
		}*/
		#btnSave4 {
			margin-right: 5%;
		}

		#btnPrevious4 {
			margin-left: 65%;
		}
		#btnSave5 {
			float:right;
			margin-right: 5%;
		}

		#btnPrevious5 {
			margin-left: 65%;
		}
		#btnSave6 {
			margin-right: 65%;
		}
	

		@media (min-width: 1025px) and (max-width: 1440px) {
			.modal-contents {
			 border-radius:4px;
			 width: 35%;
            }
			.leftcolumn {
				width: 25%;
			}

			.rightcolumn {
				width: 59%;
			}

			.container {
				width: 100%;
				margin-left: 6%;
			}

			.save {
				margin-right: 11%;
			}
			
			#btnSave {
				/*margin-right: 5%;*/
			}

			#btnPrevious {
				margin-left: 52%;
			}
			#btnSave3 {
				/*margin-right: 5%;*/
			}

			#btnPrevious3 {
				margin-left: 52%;
			}
			/*#btnSave4 {
				margin-right: 5%;
			}

			#btnPrevious4 {
				margin-left: 62%;
			}*/
			#btnSave4 {
				/*margin-right: 5%;*/
			}

			#btnPrevious4 {
				margin-left: 52%;
			}
			#btnSave5 {
				/*margin-right: 5%;*/
			}

			#btnPrevious5 {
				margin-left: 52%;
			}
			#btnSave6 {
				margin-right: 52%;
			}
		}

		@media (min-width: 769px) and (max-width: 1024px) {
			.modal-contents {
			 border-radius:4px;
			 width: 45%;
            }
			.content {
				margin-top: 5%;
			}

			.leftcolumn {
				width: 30%;
			}

			.rightcolumn {
				width: 50%;
			}

			.container {
				width: 100%;
				margin-left: 6%;
			}

			.save {
				margin-right: 10%;
			}
			
			#btnSave {
				/*margin-right: 5%;*/
			}

			#btnPrevious {
				margin-left: 25%;
			}
			#btnSave3 {
				/*margin-right: 5%;*/
			}

			#btnPrevious3 {
				margin-left: 25%;
			}
			/*#btnSave4 {
				margin-right: 5%;
			}

			#btnPrevious4 {
				margin-left: 40%;
			}*/
			#btnSave4 {
				/*margin-right: 5%;*/
			}

			#btnPrevious4 {
				margin-left: 25%;
			}
			#btnSave5 {
				/*margin-right: 5%;*/
			}

			#btnPrevious5 {
				margin-left: 25%;
			}
			#btnSave6 {
				margin-right: 25%;
			}
			.SubmissionText {
					
					width: 100%;
					}

		}


		@media (min-width: 426px) and (max-width: 768px) and (orientation: landscape) {
			.modal-contents {
			 border-radius:4px;
			 width: 45%;
            }
			.modalpopup{
				height:160%
			}
			.content {
				margin-top: 10%;
			}
			

			.linkSize {
				font-size: 10px;
			}

			.rightcolumn {
				width: 60%;
			}

			.container {
				width: 100%;
				margin-left: 6%;
			}

			.save {
				margin-right: 9%;
			}

			#btnSave {
				/*margin-right: 5%;*/
			}

			#btnPrevious {
				margin-left: 10%;
			}

			#btnSave3 {
				/*margin-right: 5%;*/
			}

			#btnPrevious3 {
				margin-left: 10%;
			}
			/*#btnSave4 {
				margin-right: 5%;
			}

			#btnPrevious4 {
				margin-left: 35%;
			}*/
			#btnSave4 {
				/*margin-right: 5%;*/
			}

			#btnPrevious4 {
				margin-left: 10%;
			}

			#btnSave5 {
				/*margin-right: 5%;*/
			}

			#btnPrevious5 {
				margin-left: 10%;
			}

			#btnSave6 {
				margin-right: 10%;
			}
			.SubmissionText {
					font-size: medium;
			
					width: 100%;
			}
			.count{
					font-size:10px;
				}
		}

			@media (min-width: 376px) and (max-width: 425px) {
				.modal-contents {
			 border-radius:4px;
			 width: 75%;
            }
				.modalpopup{
				height:160%
			}
				.content {
					margin-top: 20%;
				}

				.linkSize {
					font-size: 10px;
				}

				h3 {
					font-size: medium;
				}

				.leftcolumn {
					width: 35%;
					margin-right: 1%;
				}

				.rightcolumn {
					margin-left: 1%;
					width: 53%;
				}

				.container {
					margin-left: 2%;
					margin-right: 5%;
					width: 100%;
				}

				h2 {
					font-size: large;
				}

				table {
					font-size: small;
					width: 95%;
				}

				.save {
					margin-right: 12%;
				}

				.tabl {
					width: 100%;
					font-size: 5px;
				}

					.tabl th tr td tbody {
						font-size: 5px;
					}

				.tab {
					width: 100%;
					font-size: 5px;
				}

					.tab th tr td tbody {
						font-size: 5px;
					}

				#btnUpload {
					font-size: 7px;
					float: left;
				}

				#btnSave {
					font-size: 7px;
					margin-right: 5%;
				}

				#btnPrevious {
					font-size: 7px;
					margin-left: 11%;
				}

				#btnSave3 {
					font-size: 7px;
					margin-right: 5%;
				}

				#btnPrevious3 {
					font-size: 7px;
					margin-left: 11%;
				}
				/*#btnSave4 {
				font-size: 7px;
				margin-right: 5%;
			}

			#btnPrevious4 {
				font-size: 7px;
				margin-left: 15%;
			}*/
				#btnSave4 {
					font-size: 7px;
					margin-right: 5%;
				}

				#btnPrevious4 {
					font-size: 7px;
					margin-left: 11%;
				}

				#btnSave5 {
					font-size: 7px;
					margin-right: 5%;
				}

				#btnPrevious5 {
					font-size: 7px;
					margin-left: 11%;
				}

				#btnSave6 {
					font-size: 7px;
					margin-right: 11%;
					
				}

				.rightcolumn hr {
					height: 3px;
					background-color: grey;
					width: 100%;
				}

				#FileUpload1 {
					font-size: 10px;
				}

				h4 {
					font-size: medium;
				}

				.tabl {
					width: 100%;
					font-size: 5px;
				}

					.tabl th tr td tbody {
						font-size: 5px;
					}

					.SubmissionText {
					font-size: medium;
			
					width: 100%;
					}
					.count{
					font-size:8px;
				}
			}

			@media (min-width: 320px) and (max-width: 375px) {
				.count{
					font-size:8px;
				}
				.modal-contents {
			 border-radius:4px;
			 width: 80%;
            }
				.modalpopup{
					width:100%;
					height:170%;
				}
				h2{
				font-size:20px;
				}
				.linkSize {
					font-size: 10px;
				}

				h3 {
					font-size: medium;
				}

				.content {
					margin-top: 23%;
				}

				.leftcolumn {
					width: 35%;
					margin-right: 1%;
				}

				.rightcolumn {
					margin-left: 1%;
					width: 53%;
				}

				.container {
					margin-left: 2%;
					margin-right: 2%;
				}

				h2 {
					font-size: large;
				}

				table {
					font-size: small;
					width: 87%;
				}

				.save {
					clear: right;
					margin-left: 5%;
					margin-right: 9%;
					width: 90%;
				}

				.container2 {
					margin-left: 2%;
					margin-right: 2%;
					width: 20%;
				}

				.tabl {
					width: 100%;
					font-size: 5px;
				}

					.tabl th tr td tbody {
						font-size: 5px;
					}

				.tab {
					width: 100%;
					font-size: 5px;
				}

					.tab th tr td tbody {
						font-size: 5px;
					}

				#btnUpload {
					font-size: 7px;
					float: left;
				}

				#btnUpload1 {
					font-size: 7px;
					float: left;
				}

				#btnSave {
					font-size: 7px;
					margin-right: 2%;
				}
				#btnSave1 {
					
					margin-right: 15%;
				}

				#btnPrevious {
					font-size: 7px;
					margin-left: 3%;
				}

				#btnSave3 {
					font-size: 7px;
					margin-right: 2%;
				}

				#btnPrevious3 {
					font-size: 7px;
					margin-left: 3%;
				}
				/*#btnSave4 {
				font-size: 7px;
				margin-right: 2%;
			}

			#btnPrevious4 {
				font-size: 7px;
				margin-left: 3%;
			}*/
				#btnSave4 {
					font-size: 7px;
					margin-right: 2%;
				}

				#btnPrevious4 {
					font-size: 7px;
					margin-left: 3%;
				}

				#btnSave5 {
					font-size: 7px;
					margin-right: 2%;
				}

				#btnPrevious5 {
					font-size: 7px;
					margin-left: 3%;
				}

				#btnSave6 {
					font-size: 9px;
					
					width:100%;
					height:5%;
				}

				.rightcolumn hr {
					height: 2px;
					background-color: grey;
					width: 100%;
				}

				#FileUpload1 {
					font-size: 10px;
				}

				h4 {
					font-size: medium;
				}
				.SubmissionText {
				font-size: medium;
			
				width: 100%;
				}
			}
		
	</style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50" onload="myFunction()">
	<form id="form1" runat="server" method="post"   enctype="multipart/form-data">
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
							<li><a href="SecIndex.aspx">Home</a></li>
							<li><a href="Author.aspx">Author</a></li>
							<li><a href="ReviewPrev.aspx">Associate Editor</a></li>
							<%--<li><a href="#" >Editor-in-Chief </a></li>--%>
							<li class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#">More
                                <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="Contact.aspx">Contact</a></li>
									<li><a href="https://www.trontario.org/about/tro-staff.html">TRO Staff</a></li>
									<li><a href="https://www.trontario.org/news-events/index.html">Events</a></li>
								</ul>

							</li>
								<%--<li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>--%>
                            <li class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                   <span class="glyphicon glyphicon-user" ></span> <asp:Label ID="lblUser" runat="server" Text=""></asp:Label>
                                <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="Bio.aspx">My Profile </a></li>
									<li><asp:LinkButton ID="lbLogout" OnClick="lbLogout_Click" runat="server">Log Out</asp:LinkButton></li>
								</ul></li>
						</ul>


					</div>
				</div>
			</div>

		</nav>

		<div class="content">
			<div class="leftcolumn">

				<h3>Submission</h3>
				<hr />

				<div class="linkSize">

					<asp:LinkButton ID="lbStep1" runat="server" Font-Bold="true">Step 1: Type, Title & Abstract</asp:LinkButton><br />
					<hr />

					<asp:LinkButton ID="lbStep2" runat="server">Step 2: File Upload</asp:LinkButton><br />
					<hr />

					<asp:LinkButton ID="lbStep3" runat="server">Step 3: Add Keywords</asp:LinkButton><br />
					<hr />
				

					<asp:LinkButton ID="lbStep6" runat="server">Step 5: Review & Submit</asp:LinkButton><br />
					<br />
				</div>

			</div>
		</div>

		<asp:Panel ID="Panel1" runat="server">
			<div class="rightcolumn">
				
				<div class="modal-content animate">
					<div class="container">


						<h3><span class="red">*</span>Types:</h3>
						<table>&nbsp;&nbsp;&nbsp;&nbsp;
						 <asp:RadioButtonList ID="rdomanuType" runat="server">
                            <asp:ListItem Selected="True">Research Paper</asp:ListItem>
                            <asp:ListItem>Practise Paper</asp:ListItem>
                          
                        </asp:RadioButtonList>

						</table>


						<hr />

						<h3><span class="red">*</span>Title</h3>

						<div class="input-container">
							<label id="lblTitleCount" class="count" > 0 OUT OF 50 WORDS </label>
							<asp:TextBox ID="txtTitle" runat="server" onkeyup="counter()" style="resize:none" TextMode="MultiLine" Width="87%" Height="65px" required></asp:TextBox>
							
							<hr />
						</div>

						<h3><span class="red">*</span>Abstract</h3>
						<div class="input-container">
							 <label id="lblAbstract" class="count"> 0 OUT OF 250 WORDS </label>
							<asp:TextBox ID="txtAbstract" runat="server" onkeyup="counter2()" style="resize:none" TextMode="MultiLine" Width="87%" Height="75px" required></asp:TextBox>
							<hr />
						</div>
						<div class="save">
							<asp:Button ID="btnSave1" runat="server" class="btn btn-primary" Text="Save &amp; Continue &gt;" Width="130px" OnClick="btnSave1_Click"/>&nbsp;&nbsp;&nbsp;
			  <br />
							<br />
						</div>

					</div>
				</div>

				<br />
				<br />
				<br />
				<br />
				<br />
			</div>
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />

		</asp:Panel>

		<asp:Panel ID="Panel2" runat="server">
			<div class="rightcolumn">
				<div class="modal-content animate">
					<div class="container">

						<asp:Panel ID="pnFile" runat="server">
							<h3>Files</h3>
						<table id="fileTable" class="tab">
							<tr>
								<th>&nbsp;&nbsp;FILE</th>
								<th>&nbsp;&nbsp;UPLOAD DATE</th>
								<th>&nbsp;&nbsp;UPLOADED BY</th>
							</tr>
							<tr>
								<td>&nbsp;<asp:Label ID="lblCover" runat="server" Text=""></asp:Label></td>
								<td>&nbsp;<asp:Label ID="lblUploadDate" runat="server" Text=""></asp:Label></td>
								<td>&nbsp;<asp:Label ID="lblUser1" runat="server" Text=""></asp:Label></td>
							</tr>
							<tr>
								<td style="background-color: #dddddd">&nbsp;<asp:Label ID="lblSecCover" runat="server" Text=""></asp:Label></td>
								<td style="background-color: #dddddd">&nbsp;<asp:Label ID="lblSecUploadDate" runat="server" Text=""></asp:Label></td>
								<td style="background-color: #dddddd">&nbsp;<asp:Label ID="lblUser2" runat="server" Text=""></asp:Label></td>
							</tr>

						</table>

						<hr />
</asp:Panel>
						<h3><span class="red">*</span>&nbsp;&nbsp;File Upload</h3>
						<table class="tabl">
							<tr>
								<th>&nbsp;&nbsp;SELECTION</th>
								<th>&nbsp;&nbsp;FILE INFO</th>
							</tr>
							<tr>
								<td >&nbsp;&nbsp;<asp:FileUpload ID="FileUpload1" runat="server"   /></td>
								<td >&nbsp;&nbsp;<p >
									<asp:Label ID="demo" runat="server" Text=""></asp:Label></p>
								</td>
							</tr>

							<%--onchange="myFunction()"   multiple size="50"--%>

							<tr>
								<td style="background-color: #dddddd">&nbsp;&nbsp; <asp:FileUpload ID="FileUpload2" runat="server"  />
								</td>
								<td style="background-color: #dddddd">&nbsp;&nbsp;
									<p >
										<asp:Label ID="demo2" runat="server" Text=""></asp:Label></p>
								</td>
							</tr>

						</table>
						<br />
						<asp:Label ID="lblRemindFiletoUpload" runat="server" ForeColor="#3b5992"></asp:Label>
						<br />
						
						<br />
						
						<asp:Button ID="btnUpload" runat="server" class="btn btn-primary" Text="Upload Selected Files" OnClick="btnUpload_Click"></asp:Button>
						<br />
						<hr />

					</div>
				<asp:Button ID="btnPrevious" runat="server" class="btn btn-basic" Text="< Pervious" OnClick="btnPrevious_Click"></asp:Button>
					&nbsp;
					<asp:Button ID="btnSave" runat="server" class="btn btn-primary" Text="Save & Continue >" OnClick="btnSave_Click" ></asp:Button>

					<br />
					<br />
					<br />
					<br />
				</div>
<br />
				<br />
				<br />
				<br />
				<br />
				<br />

			</div>
		</asp:Panel>

		 <asp:Panel ID="Panel3" runat="server">
 <div class="rightcolumn">
 <div class="modal-content animate" >
     <div class="container">

 <h2>Keywords</h2>
                    <h3>Full List</h3>
                    <asp:TextBox ID="txtKeywords" runat="server" class="form-control" Height="32px" Width="85%"></asp:TextBox>
		 &nbsp;<br/>
		 <br/>
		 <asp:Button ID="btnUpload1" runat="server" class="btn btn-primary" OnClick="btnUpload1_Click" Text="+ Add To The List" />
		 &nbsp;&nbsp;&nbsp;
		 <asp:Button ID="btnRemove" runat="server" class="btn btn-danger" Text="- Remove from The List" OnClick="btnRemove_Click" />
		 <br />
		 <br />
                    <asp:ListBox ID="lbKeyword1" runat="server" Height="111px" Width="85%" ></asp:ListBox>
                <br />
		 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 <asp:Label ID="lblKeyMessage" ForeColor="#3b5992" runat="server"></asp:Label>
                <br />
		 
                <hr />
               </div>
                   <asp:Button ID="btnPrevious3" runat="server" class="btn btn-basic" Text="< Previous" OnClick="btnPrevious3_Click"  ></asp:Button>
              &nbsp;
           <asp:Button ID="btnSave3" runat="server" class="btn btn-primary" Text="Save & Continue >" OnClick="btnSave3_Click"    ></asp:Button> 
                 <br /> <br /> <br />
                </div>
       
            </div> 
     <br /> <br /> <br /> 
            </asp:Panel>

	
		<asp:Panel ID="Panel4" runat="server">
			 <div class="rightcolumn">
 <div class="modal-content animate" >
     <div class="container">
		<h3 > Conflict Of Interest</h3>
			<hr />
		 <h4> Do you have any conflict of Interest?</h4>
		 <asp:RadioButtonList ID="radioConflict" runat="server" Width="85%" AutoPostBack="True" OnSelectedIndexChanged="radioConflict_SelectedIndexChanged">
			 <asp:ListItem Selected="True" Value="0">Yes</asp:ListItem>
			 <asp:ListItem Value="1">No</asp:ListItem>
		 </asp:RadioButtonList>
		 <hr />
		 <br />
		 <asp:Panel ID="pncon" runat="server">
		 <asp:Label ID="lblconflictinterest" runat="server" Text="Label"> <p>If yes, Please state below:</p></asp:Label>
			 <label id="lblconflicts" class="count" > 0 OUT OF 50 WORDS </label>
		 <asp:TextBox ID="txtConflict" runat="server" TextMode="MultiLine" onkeyup="counter1()" style="resize:none" Columns="30" Rows="10" Width="85%" Height="85px"></asp:TextBox>
		 <hr />
			 </asp:Panel>
		 </div>
                   <asp:Button ID="btnPrevious4" runat="server" class="btn btn-basic" Text="< Pervious"  OnClick="btnPrevious4_Click" ></asp:Button>
                <asp:Button ID="btnSave4" runat="server" class="btn btn-primary" Text="Save & Continue >" OnClick="btnSave4_Click" ></asp:Button> 
                   <br /><br /><br />
                </div><br /><br /><br />	
		
				<br />	 
		
			<br />			  
</div>
   	</asp:Panel>


		 <asp:Panel ID="Panel5" runat="server">
            <div class="rightcolumn">
 <div class="modal-content animate" >
     <div class="container">
           <h3>Review</h3>
                <hr />
               
              <table class="tab">
                        <tr>
                            <th>&nbsp;FIELD</th>
                            <th>&nbsp; RESPONSE</th>
                        </tr>
                        <tr>
                            <th class="auto-style1">&nbsp; Manuscript Type</th>
                            <td>
                               </td>
                        </tr>
                        <tr>
                            <th>&nbsp;&nbsp;&nbsp; Type</th>
                            <td>
                                <asp:Label ID="lbltype" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <th>&nbsp; Manuscript Title</th>
                            <td></td>
                        </tr>
                        <tr>
                            <th>&nbsp;&nbsp;&nbsp; Title</th>
                            <td>
                                <asp:Label ID="lbltitle" runat="server" Text=""></asp:Label></td>
                        </tr>
                    	<tr>
							<th>&nbsp; Manucript Abstract</th>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<th>&nbsp;&nbsp;&nbsp; Abstract</th>
							<td>
                                <asp:Label ID="lblabstract" runat="server"></asp:Label></td>
						</tr>
						<tr>
							<th>&nbsp; File Upload</th>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<th>&nbsp;&nbsp;&nbsp; 1. File</th>
							<td>
								<asp:Label ID="lblFile1" runat="server" style="text-decoration:underline;"></asp:Label></td>
						</tr>
						<tr>
							<th>&nbsp;&nbsp;&nbsp; 2. File</th>
							<td style="background-color: white"><asp:Label ID="lblFile2" runat="server" style="text-decoration:underline;"></asp:Label></td>
						</tr>
						<tr>
							<th >&nbsp; Manuscript Attributes</th>
							<td style="background-color: #dddddd">
                                &nbsp;</td>
						</tr>
						<tr>
							<th>&nbsp;&nbsp;&nbsp; Keywords</th>
							<td style="background-color: white">
								<asp:Label ID="lblkeyword" runat="server" Text=""></asp:Label>
							</td>
						</tr>
						<tr>
							<th>Conflict of Interest</th>
							<td style="background-color: #dddddd">
                                &nbsp;</td>
						</tr>
                    	<tr>
							<th>&nbsp;&nbsp;&nbsp; Statement</th>
							<td style="background-color: white"> 
								<asp:Label ID="lblconflict" runat="server" Text=""></asp:Label>
							</td>
						</tr>
                    </table>
              
              
                <hr />
              </div>
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 <asp:Button ID="btnSaveDraft" runat="server" style="margin-left:5%;" class="btn btn-basic" Text="Save As Draft" OnClick="btnSaveDraft_Click" /><br />
                    <br />
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="btnPrevious5" class="btn btn-basic" runat="server" Text="< Pervious" OnClick="btnPrevious5_Click" ></asp:Button>
                  <asp:Button ID="btnSave5" runat="server"  class="btn btn-primary" Text="Finish Submission" OnClick="btnSave5_Click1"   ></asp:Button> 
                   <br /> <br /> <br /> 
                </div>
             <br /> <br /> <br />
<div>
	</div>
	 </div>
				
			
        	</asp:Panel>

		<asp:Panel ID="Panel6" runat="server"> 
			<div class="rightcolumn">
                 <div class="modal-content animate" >
             <div class="container" >
              
                    <h3 style="color:#3b5998;" >Confirmation Message</h3><hr />
                    <span class="SubmissionText">You have submitted your Manuscript successfully!!.</span><br /><br />
                  
                    <asp:Button  ID="btnSave6" runat="server" OnClick="btnSave6_Click" Class="btn btn-primary" Text="Back to Main Page" Height="50px"  ></asp:Button>
                        <br />
					<br />
					<br />
					<%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TRPRConnectionString %>" SelectCommand="SELECT [Id], [ManuTitle], [ManuType], [ManuAbstract], [ManuFirstPage], [ManuFile], [UploadOn], [ConflictOfInterest] FROM [Manuscript]"></asp:SqlDataSource>
					<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
						<Columns>
							<asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
							<asp:BoundField DataField="ManuTitle" HeaderText="ManuTitle" SortExpression="ManuTitle" />
							<asp:BoundField DataField="ManuType" HeaderText="ManuType" SortExpression="ManuType" />
							<asp:BoundField DataField="ManuAbstract" HeaderText="ManuAbstract" SortExpression="ManuAbstract" />
							<asp:BoundField DataField="UploadOn" HeaderText="UploadOn" SortExpression="UploadOn" />
							<asp:BoundField DataField="ConflictOfInterest" HeaderText="ConflictOfInterest" SortExpression="ConflictOfInterest" />
							<asp:DynamicField DataField="ManuFirstPage" HeaderText="ManuFirstPage" />
							<asp:DynamicField DataField="ManuFile" HeaderText="ManuFile" />
							<asp:TemplateField>
								<ItemTemplate>
									<asp:HyperLink ID="file1" runat="server" NavigateUrl='<%# Eval("ManuFirstPage") %>' Target="_blank">file1</asp:HyperLink>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField>
								<ItemTemplate>
									<asp:HyperLink ID="file2" runat="server" Target="_blank">file2</asp:HyperLink>
								</ItemTemplate>
							</asp:TemplateField>
						</Columns>
					</asp:GridView>--%>
                        <br />
                        <br />
                    
                   </div>
                </div>
                 </div>
           
</asp:Panel>
				<div id="id01" class="modalpopup">
  <div class="modal-contents animatemodal" >
    <div class="imgcontainer">
    <center><h3 style="border-radius: 4px; padding: 10px; background-color: #3b5998; width:100%;color:white;">Error Messageocument.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span></h3></center>
    </div>
  <div class="containermodal">
      <div class="input-container">
	<h2 >Access Denied <span class="glyphicon glyphicon-exclamation-sign"></span> </h2>
		  <br />
</div> 
   
		
    </div>
  </div>
</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
		modal.style.display = "none";
		
    }
}
</script>

		<%--	////////////////////////--%>
		<script>
			function myFunction() {
				var x = document.getElementById("FileUpload1");
				var y = document.getElementById("FileUpload2");

				var txt = "";
				var txt2 = "";

				if ('files' in x && 'files' in y) {
					if (x.files.length == 0 && y.files.length == 0) {
						txt = "*Submit first page seprately.";
						txt2 = "Select one or more files.";

					} else {
						for (var i = 0; i < x.files.length; i++) {
							txt += "<br><strong>" + (i + 1) + ". file</strong><br>";
							var file = x.files[i];
							if ('name' in file) {
								txt += "name: " + file.name + "<br>";
							}
							if ('size' in file) {
								txt += "size: " + file.size + " bytes <br>";
							}
						}
						for (var j = 0; j < y.files.length; j++) {
							txt2 += "<br><strong>" + (j + 1) + ". file</strong><br>";
							var file = y.files[j];
							if ('name' in file) {
								txt2 += "name: " + file.name + "<br>";
							}
							if ('size' in file) {
								txt2 += "size: " + file.size + " bytes <br>";
							}
						}

					}
				}
				else {
					if (x.value == "" || y.value == "") {
						txt += "Select one or more files.";
						txt2 += "Select one or more files.";

					} else {
						txt += "The files property is not supported by your browser!";
						txt += "<br>The path of the selected file: " + x.value;
						txt2 += "The files property is not supported by your browser!";
						txt2 += "<br>The path of the selected file: " + y.value;

					}
				}
				document.getElementById("demo").innerHTML = txt;
				document.getElementById("demo2").innerHTML = txt2;


			}


		</script>
		<script>
    $(document).ready(function () {
        $('#FileUpload1').change(function () {
            var path = $(this).val();
            if (path != '' && path != null) {
                var q = path.substring(path.lastIndexOf('\\') + 1);
                $('#lblFile1').html(q);
            }
        });
    });
</script>
		<script>
    $(document).ready(function () {
        $('#FileUpload2').change(function () {
            var path = $(this).val();
            if (path != '' && path != null) {
                var q = path.substring(path.lastIndexOf('\\') + 1);
                $('#lblFile2').html(q);
            }
        });
    });
</script>
		
<%--<script>
function myFunction(){
  var x = document.getElementById("file2");
  var txt = "";
  if ('files' in x) {
    if (x.files.length == 0) {
      txt = "Select one or more files.";
    } else {
      for (var i = 0; i < x.files.length; i++) {
        txt += "<br><strong>" + (i+1) + ". file</strong><br>";
        var file = x.files[i];
        if ('name' in file) {
          txt += "name: " + file.name + "<br>";
        }
        if ('size' in file) {
          txt += "size: " + file.size + " bytes <br>";
        }
      }
    }
  } 
  else {
    if (x.value == "") {
      txt += "Select one or more files.";
    } else {
      txt += "The files property is not supported by your browser!";
      txt  += "<br>The path of the selected file: " + x.value; // If the browser does not support the files property, it will return the path of the selected file instead. 
    }
  }
  document.getElementById("demo2").innerHTML = txt;
}
</script>--%>

		 <script>

        function counter() {
            var texterea = document.getElementById("txtTitle");
			var words = texterea.value.split(' ').length;
			if (words <= 50) {
				document.getElementById("lblTitleCount").textContent = words + " OUT OF 50 WORDS";
			} else {
				document.getElementById("lblTitleCount").textContent = "WORD LIMIT EXCEEDED";
			}
        }
		
      

        function counter2() {
            var texterea = document.getElementById("txtAbstract");
			var words = texterea.value.split(' ').length;
			if (words <= 250) {
				document.getElementById("lblAbstract").textContent = words + " OUT OF 250 WORDS";
				} else {
				document.getElementById("lblAbstract").textContent = "WORD LIMIT EXCEEDED";
			}
	    }
		function counter1() {
            var texterea = document.getElementById("txtConflict");
			var words = texterea.value.split(' ').length;
			if (words <= 50) {
				document.getElementById("lblconflicts").textContent = words + " OUT OF 50 WORDS";
				} else {
				document.getElementById("lblconflicts").textContent = "WORD LIMIT EXCEEDED";
			}
        }
    </script>

		
		<br />
		<asp:SqlDataSource ID="sqlShowLabel" runat="server" ConnectionString="<%$ ConnectionStrings:TRPRConnectionString %>" SelectCommand="ShowLabel" SelectCommandType="StoredProcedure">
			<SelectParameters>
				<asp:SessionParameter Name="ID" SessionField="id" Type="Int32" />
				<asp:SessionParameter Name="UploadBy" SessionField="Data" Type="String" />
			</SelectParameters>
		</asp:SqlDataSource>
		<br />
	<asp:DetailsView ID="dvGetDraft" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="sqlShowLabel">
			<Fields>
				<asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
				<asp:BoundField DataField="ManuType" HeaderText="ManuType" SortExpression="ManuType" />
				<asp:BoundField DataField="ManuTitle" HeaderText="ManuTitle" SortExpression="ManuTitle" />
				<asp:BoundField DataField="ManuAbstract" HeaderText="ManuAbstract" SortExpression="ManuAbstract" />
				<asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
					
				<asp:BoundField DataField="Extn" HeaderText="Extn" SortExpression="Extn" />
				<asp:BoundField DataField="NameF" HeaderText="NameF" SortExpression="NameF" />
					
				<asp:BoundField DataField="ExtnF" HeaderText="ExtnF" SortExpression="ExtnF" />
				<asp:BoundField DataField="UploadOn" HeaderText="UploadOn" SortExpression="UploadOn" />
				<asp:BoundField DataField="UploadBy" HeaderText="UploadBy" SortExpression="UploadBy" />
				<asp:BoundField DataField="ConflictOfInterest" HeaderText="ConflictOfInterest" SortExpression="ConflictOfInterest" />
				<asp:BoundField DataField="KeywordDraft" HeaderText="KeywordDraft" ReadOnly="True" SortExpression="KeywordDraft" />
			</Fields>
		</asp:DetailsView>
	</form>
</body>
</html>