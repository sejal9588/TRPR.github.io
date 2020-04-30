<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssignRole.aspx.cs" Inherits="TRPR.AssignRole" %>

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
	<link href="StyleSheet.css" rel="stylesheet"/>
	<style>
	body{
			background-color:#f1f1f1;
		}
		.box{
			margin-left:20%;
			margin-right:20%;
			background-color:white;
		}
		h2{
			text-align:center;
			border-radius: 4px;
			padding: 10px;
			background-color: #3b5998;
			/*margin: 2px;*/
			width:100%;
			color:white;
		}
		.auto-style1 {
			width: 100%;
			height: 642px;
		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
<%--		   <nav class="navbar navbar-default ">
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
							<li><a href="AscoEditor.aspx">Associate Editor</a></li>
							<li><a href="Editor.aspx">Editor-in-Chief</a></li>
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
                                    <span class="glyphicon glyphicon-user" ></span> <asp:Label ID="lblEICUser" runat="server" Text="User"></asp:Label> <%--<%=Request.QueryString["User"] %>--%>
                               <%-- <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li>
										
									<li><a href="Bio.aspx">My Profile </a></li>
											<li><a href="AssignRole.aspx">Assign Role</a></li>
									<li>
										<asp:LinkButton ID="lbLogout" OnClick="lbLogout_Click" runat="server">Log Out</asp:LinkButton></li/>
								</ul></li>
						</ul>
							
					    
						</div>
					</div>
				</div>
		
		</nav>--%>
		<div class="auto-style1">
		<iframe id="iframe" runat="server" style="width:100%; height:100%;"></iframe>
	</div>
    </form>
</body>
</html>
