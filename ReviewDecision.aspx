<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReviewDecision.aspx.cs" Inherits="TRPR.ReviewDecision" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<style>
		* {
			box-sizing: border-box;
		}
		#btnSave{
			margin-left:5%;
		}
		.footer {
			/*padding:20px;*/
			background: #3b5998;
			position: absolute;
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




		.rightcolumn {
			float: left;
			width: 30%;
			background-color: white;
			padding-left: 20px;
			margin-top: 5%;
			/* Should be removed. Only for demonstration */
		}

		/* Create two equal columns that floats next to each other */
		.leftcolumn {
			float: left;
			width: 35%;
			margin-top: 5%;
			margin-left: 15%;
			margin-right: 5%;
			height: 900px; /* Should be removed. Only for demonstration */
		}

		/* Clear floats after the columns */

		#lstPdf{
					height:900px;
					width:100%;
				}
	</style>
	<style>
		body {
			background: #f1f1f1;
			padding: 10px;
			font-family: Arial;
		}

		.navbar {
			background-color: #3b5998;
		}

		h4 {
			color: grey;
		}

		.secTop {
			margin-left: 15%;
			margin-right: 15%;
			font-size: 20px;
		}


		h3 {
			border-radius: 4px;
			padding: 10px;
			background-color: #3b5998;
			width: 100%;
			color: white;
		}
	</style>
	<style>
		.container {
			border-radius: 5px;
			padding: 20px;
			width: 100%;
		}





@media (min-width: 1025px) and (max-width: 1440px) {
			.leftcolumn {
				width: 40%;
				margin-left: 7%;
				height:650px;
				margin-left:5%;
			}
			#lstPdf{
					height:650px;
					width:100%;
				}

			.rightcolumn {
				width: 40%;
				padding-left: 20px;
			}


			.secTop {
				font-size: 15px;
				margin-left: 10%;
				margin-right: 10%;
			}
}

@media (min-width: 769px) and (max-width: 1024px) {

			.secTop {
				width: 85%;
				font-size: 14px;
				margin-left: 8%;
			}

			.leftcolumn {
				width: 40%;
				margin-left: 8%;
					height:550px;
			}
			#lstPdf{
					height:550px;
					width:100%;
				}

			.rightcolumn {
				width: 40%;
				padding-left: 20px;
			}
}


		@media (min-width: 426px) and (max-width: 768px) and (orientation: landscape) {
			h3 {
				font-size: 20px;
			}

			h4 {
				font-size: 14px;
			}

			.row:after {
				content: "";
				display: table;
				clear: both;
			}

			.secTop {
				width: 90%;
				font-size: 15px;
				margin-left: 5%;
			}

			.leftcolumn {
				width: 40%;
				height: 400px;
				margin-left: 7%;
			}
			#lstPdf{
					height:400px;
					width:100%;
				}

			.rightcolumn {
				width: 40%;
				padding-left: 20px;
			}
		}

			@media (min-width: 376px) and (max-width: 425px) {

				.row:after {
					content: "";
					display: table;
					clear: both;
				}

				h3 {
					font-size: 20px;
				}

				h4 {
					font-size: 14px;
				}

				.leftcolumn {
					width: 90%;
					height: 400px;
					margin-left: 5%;
				}
				#lstPdf{
					height:400px;
					width:100%;
				}

				.rightcolumn {
					width: 90%;
					margin-left: 5%;
					padding-left: 20px;
				}


				.secTop {
					width: 100%;
					font-size: 17px;
					margin-left: 2%;
					margin-right: 2%;
				}
			}


			@media (min-width: 320px) and (max-width: 375px) {

				.leftcolumn {
					width: 90%;
					height: 400px;
					margin-left: 5%;
				}
				#lstPdf{
					height:400px;
					width:100%;
				}

				.rightcolumn {
					width: 90%;
					margin-left: 5%;
					/*padding-left: 20px;*/
				}



				.secTop {
					width: 100%;
					font-size: 10px;
					margin-left: 2%;
					margin-right: 2%;
				}
				h3 {
					font-size: 20px;
				}

				h4 {
					font-size: 14px;
				}
			}
		
</style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
	<form id="form1" runat="server">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-form navbar-left">
				<h4>
						<asp:Label ID="lblTitile" runat="server" Font-Italic="true" ForeColor="White" Font-Bold="true" Font-Size="20px" Font-Underline="true"  Text=""></asp:Label></h4>
				</div>
				<div class="navbar-form navbar-right">
					<div class="input-group">

						<asp:LinkButton ID="lbDashboard" runat="server" ForeColor="White" Font-Bold="true"  OnClick="lbDashboard_Click">Back to Dashboard</asp:LinkButton>
						</div>
					</div>
				</div>
			</div>
		</nav>


		<br />
		<br />
		<div class="secTop">
			<ul class="nav nav-tabs">
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">Manuscript File <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="ReviewManuscript.aspx">View PDF</a></li>
						

					</ul>
				</li>
				<li><a href="AEReviewDetail.aspx">Details</a></li>

			
				<li><a href="reviewDecision.aspx">Decision</a></li>
					<li><a href="trpr.pdf">Instructions</a></li>

				<li ><a href="Email.aspx">Send Email</a></li> 
			</ul>
		</div>


		<div class="row">
			<div class="leftcolumn">
				<div style="width:100%; height:100%;">
		<iframe id="iframe" runat="server" style="width:100%; height:100%;"></iframe>
	</div>
			</div>


			<div class="rightcolumn">

				<div class="container">
					<h3>AE Review Decision</h3>
					<asp:RadioButtonList ID="RadioButtonList2" runat="server">
						<asp:ListItem Selected="True" Value="0">&nbsp;&nbsp;&nbsp; Accept</asp:ListItem>
						<asp:ListItem Value="1"> &nbsp;&nbsp;&nbsp; Major Revision</asp:ListItem>
						<asp:ListItem Value="2"> &nbsp;&nbsp;&nbsp; Minor Revision</asp:ListItem>

						<asp:ListItem Value="3"> &nbsp;&nbsp;&nbsp; Reject</asp:ListItem>
					</asp:RadioButtonList>
					<h3>Comments</h3>
					<h4>Confidential comments to Editor-in-Chief</h4>
					<div class="input-container">
						<asp:TextBox ID="txtEditor" runat="server" TextMode="MultiLine" Width="100%" Height="85px"></asp:TextBox>
					</div>
					<h4>Comments to the Author</h4>
					<div class="input-container">
						<asp:TextBox ID="txtAuthor" runat="server" TextMode="MultiLine" Width="100%" Height="85px"></asp:TextBox>
					</div>
					<h4>Attach a File</h4>
					<div class="input-container">
						<asp:FileUpload ID="FileUpload1" runat="server" Width="274px" ForeColor="#3b5992" />
					</div>
				</div>

				<%--    <div class="container">--%>
				<%--<asp:Button ID="btnSave" runat="server" class="btn bg-primary" Text="Save as Draft" />--%>&nbsp;&nbsp;&nbsp;
		<asp:Button ID="Button4" runat="server" class="btn bg-primary" ForeColor="White" Text="Submit Review" OnClick="Button4_Click" />&nbsp;&nbsp;&nbsp;
    <br />
				<br />
				<center><asp:Label ID="lblConf" runat="server" Forecolor="#3b5992" Font-Bold="true" Text=""></asp:Label></center>
			</div>
		</div>
		<%--</div>--%>
					   
	</form>
</body>
</html>
