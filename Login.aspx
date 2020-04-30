<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TRPR.Login" %>

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
</head>


<style id="100%">
	body {
		background-image: url("imgs/login2.jpg") ; ;
		background-repeat:no-repeat;
		
		background-size: cover;
	}

	
	.modal {
		display: none; /* Hidden by default */
		position: absolute;
		z-index: 1; /* Sit on top */
		left: 0;
		top: 0;
		width: 40%; /* Full width */
		height: 60%; /* Full height */
		overflow: auto; /* Enable scroll if needed */
		/*background-color: rgb(0,0,0);*/  /*Fallback color*/ 
		/*background-color: rgba(0,0,0,0.4);*/  /*Black w/ opacity*/ 
		padding-top: 60px;

		
	}

	/* Modal Content/Box */
	.modal-content {
		background-color: #fff;
		margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
		border: 2px solid #888;
		width: 40%; /* Could be more or less, depending on screen size */
		background-image: url("imgs/login1.jpg") ;
		background-repeat:no-repeat;
		
		
		background-size: cover;
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



	/* Add Zoom Animation */
	/*.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}*/

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

	/* Change styles for span and cancel button on extra small screens */


	.input-container {
		display: -ms-flexbox; /* IE10 */
		display: flex;
		width: 100%;
		margin-bottom: 15px;
	}

	.icon {
		padding: 10px;
		background: #191970;
		color: white;
		min-width: 40px;
		text-align: center;
	}

	.imgcontainer {
		text-align: center;
		margin: 12px 0 12px 0;
	}

	/* Avatar image */
	img.avatar {
		width: 40%;
		border-radius: 50%;
		background-color: white;
	}

	.container {
		padding: 16px;
		width:100%;
	}

	span.psw {
		float: right;
		padding-top: 16px;
	}

	h2 {
		color: #3b5998;
	}
	/* Full-width input fields */
	input[type=text], input[type=password] {
		width: 100%;
		padding: 10px 20px;
		display: inline-block;
		border: 1px solid #ccc;
		box-sizing: border-box;
	}

	.btnsub {
		background-color: #191970;
		color: white;
		padding: 12px 20px;
		margin: 8px 0;
		border: none;
		cursor: pointer;
		width: 100%;
	}

	/* Set a style for all buttons */
	button:hover {
		opacity: 0.8;
	}

@media (min-width: 1441px) and (max-width: 2760px) {

	
}


@media (min-width: 1025px) and (max-width: 1440px) {

	
}

@media (min-width: 769px) and (max-width: 1024px) {

	
}


@media (min-width: 426px) and (max-width: 768px) and (orientation: landscape) {

	
}

@media (min-width: 376px) and (max-width: 425px) {
	.modal-content {

		margin: 10% auto 15% 10%; /* 5% from the top, 15% from the bottom and centered */
		
		width: 80%; /* Could be more or less, depending on screen size */
	}
}


@media (min-width: 320px) and (max-width: 375px) {
	
	.modal-content {
		
		margin: 10% auto 15% 15%; /* 5% from the top, 15% from the bottom and centered */
		
		width: 70%; /* Could be more or less, depending on screen size */
	}
}

	
</style>
<body>
	<form id="form1" runat="server">
		<div class="modal-content animate">

			<div class="imgcontainer">
				<h2 style="color:white;">Editor-in-Chief</h2>

			</div>

			<div class="imgcontainer">
				<img src="imgs/avtar.png" alt="Avatar" class="avatar">
			</div>

			<div class="container">
				<div class="input-container">

					<i class="fa fa-envelope icon"></i>
					<%--<input type="text" placeholder="Enter Username" name="uname">--%>
					<asp:TextBox ID="txtEICName" Placeholder="Enter Username" runat="server" required></asp:TextBox>
				</div>
				<div class="input-container">

					<i class="fa fa-key icon"></i>
					<%--<input type="password" placeholder="Enter Password" name="psw">--%>
					<asp:TextBox ID="txtEICPassword" Placeholder="Enter Password" TextMode="Password" runat="server" required></asp:TextBox>
				</div>
				<center><asp:Label ID="lblMessage" runat="server" Font-Bold="true" Forecolor="White" Text=""></asp:Label></center>
				<asp:Button ID="btnEICLogin" runat="server" class="btnsub" Text="Login" OnClick="btnEICLogin_Click" />
				<br />
				<label>
					<%--<input type="checkbox" checked="checked" name="remember">
					Remember me--%>
					<asp:CheckBox ID="ckEICRemeberMe" Checked="true" runat="server" Text=" Remember Me" />
				</label>
				<br />
				<%--<asp:Label ID="lblEICAccount" runat="server" Text="Don't have an account? "></asp:Label><asp:LinkButton ID="lbEICRegisterhere" runat="server" ForeColor="White" OnClick="lbEICRegisterhere_Click">Register here</asp:LinkButton>--%>
				 <asp:Label ID="lblLogin" runat="server" Text="Don't have an account. "></asp:Label>
					<asp:LinkButton ID="lbRegisterHere" runat="server" style="text-decoration:underline;color:white;" OnClick="lbRegisterHere_Click"  >Registere here</asp:LinkButton> 
			</div>

			<div class="container" style="background-color: #f1f1f1; width: 100%">
				<asp:Button ID="btnCancel" runat="server" class="btn btn-danger" Text="Cancel" OnClick="btnCancel_Click" />

				<span class="psw">Forgot <a href="#">password?</a></span>
				<br />
			</div>
		</div>

		<asp:Label ID="lblRoleID" runat="server" Text=""></asp:Label>





	</form>
</body>
</html>

