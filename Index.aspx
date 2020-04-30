<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TRPR.Index" %>

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


	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


	
<style>
	
	h2{
		color:#3b5998;
	}
		

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 10px 20px;
  
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
.btnsub{
	background-color: #3b5998; 
	color: white;
	padding: 12px 20px;
	margin:8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

/* Set a style for all buttons */
button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
/*.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}*/

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position:absolute ; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 80%; /* Full height */
 overflow: auto;/* Enable scroll if needed */
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



/* Add Zoom Animation */
.animate {
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

/* Change styles for span and cancel button on extra small screens */


.input-container {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  width: 100%;
  margin-bottom: 15px;
}

.icon {
  padding: 10px;
  background: #3b5998;
  color: white;
  min-width: 40px;
 
  text-align: center;
}
.imgcontainer {
  text-align: center;
  margin: 12px 0 12px 0;
}

/* Avatar image */
/*img.avatar {
  width: 40%;
  border-radius: 50%;
  background-color:#3b5998;
}*/
.footer{
	padding:20px;
	background:#3b5998;
	margin-top:20px;
}
 footer a {
    color: white;
	
  }
  footer a:hover {
    color: #777;
    text-decoration: none;
  }  
  .share{
	  color:white;
	
  }


 .get {
	  position: absolute;
  top: 70%;
  left: 20%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  background-color: lightgray;
  color: #3b5998;
  font-size: 16px;
  padding: 12px 24px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  text-align: center;
  margin-left: 30%;
  font-weight: bold;
 }
 .get:hover{
     color: black;
 }
 
	img.siz{
		height:800px;
	}
  

@media (min-width: 1441px) and (max-width: 2560px) {
  
 input[type=text], input[type=password] {
  width: 100%;
  padding: 10px 10px;
  
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;

}
 .btnsub{
	 background-color: #3b5998; 
	color: white;
	padding: 10px 10px;
	margin:8px 0;
	border: none;
	cursor: pointer;
	width: 100%;

 }
 .container {
  padding: 16px;
  width:100%;
}
 .modal {
 
  width: 50%; /* Full width */
  height: 100%; /* Full height */
 
  background-color: rgba(0,0,0,0); /* Black w/ opacity */
  padding-top: 30px;
   margin: 7% 25% 25% 25%;
}
 .get {
		top: 80%;
		left: 20%;
		font-size: 14px;
	}
	img.siz{
		height:800px;
	}
}


@media (min-width: 1025px) and (max-width: 1440px) {
  
 input[type=text], input[type=password] {
  width: 100%;
  padding: 10px 10px;
  
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;

}
 .btnsub{
	 background-color: #3b5998; 
	color: white;
	padding: 10px 10px;
	margin:8px 0;
	border: none;
	cursor: pointer;
	width: 100%;

 }
 .container {
  padding: 16px;
  width:100%;
}
  .modal {
 
  width: 45%; /* Full width */
  height: 100%; /* Full height */
  margin:3% 25% 0 25%;
  background-color: rgba(0,0,0,0); /* Black w/ opacity */


}
  	.get {
		top: 70%;
		left: 20%;
		font-size: 14px;
	}
	img.siz{
		height:500px;
	}
  
}
@media (min-width: 769px) and (max-width: 1024px) {
 input[type=text], input[type=password] {
  width: 100%;
  padding: 10px 10px;
  
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;

}
 .btnsub{
	 background-color: #3b5998; 
	color: white;
	padding: 10px 10px;
	margin:8px 0;
	border: none;
	cursor: pointer;
	width: 100%;

 }
 .container {
  padding: 16px;
  width:100%;
} 
 	.get {
		top: 70%;
		left: 20%;
		font-size: 14px;
	}
	img.siz{
		height:400px;
	}
 
}


@media (min-width: 426px) and (max-width: 768px) and (orientation: landscape) {
   
 input[type=text], input[type=password] {
  width: 100%;
  padding: 10px 10px;
  
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;

}
 .btnsub{
	 background-color: #3b5998; 
	color: white;
	padding: 10px 10px;
	margin:8px 0;
	border: none;
	cursor: pointer;
	width: 100%;

 }
 .container {
  padding: 16px;
  width:100%;
}
 	.get {
		top: 70%;
		left: 20%;
		font-size: 14px;
	}
	img.siz{
		height:400px;
	}
  
}

@media (min-width: 376px) and (max-width: 425px) {
  h1{
		font-size: 20px;

	}
  	.get {
		top: 60%;
		left: 20%;
		font-size: 14px;
	}
	img.siz{
		height:330px;
	}
	 .admin{
	   font-size:12px;
   }
   .instruct{
	   font-size:12px;
   }
   #lbSignUp{
	   font-size:12px;
   }
   #lbLogin{
	   font-size:12px;
   }
 
}


@media (min-width: 320px) and (max-width: 375px) {
	 .admin{
	   font-size:8px;
   }
   .instruct{
	   font-size:8px;
   }
   #lbSignUp{
	   font-size:8px;
   }
   #lbLogin{
	   font-size:8px;
   }
	h1{
		font-size: 17px;
	}
	.get {
		top: 60%;
		left: 20%;
		font-size: 14px;
	}
	img.siz{
		height:329px;
	}
	
  .modal {
 
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  
}
   .container {
  padding: 16px;
  width:100%;
}
}
/*//////////////////////////////////////////////*/

   .logo-small {
    color: blue;
    font-size: 50px;
  }
  
</style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
    <form id="form1" runat="server">
      <nav class="navbar navbar-default ">
			<div class="container-fluid">
				<div class="navbar-header">
					+<img src="imgs/logo.jpg" />
					
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
			
			
					<div class="collapse navbar-collapse" id="myNavbar">
							
						<div class="centernav">
						
						<ul class="nav navbar-nav">
							<li><a href="Index.aspx">Home</a></li>
						<%--	<li><a href="Author.aspx">Author</a></li>
							<li><a href="AscoEditor.aspx">Associate Editor</a></li>
							<li><a href="Editor.aspx">Editor-in-Chief</a></li>--%>
							<%--<li class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#">More
                                <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="Contact.aspx">Contact2</a></li>
									<li><a href="https://www.trontario.org/about/tro-staff.html">TRO Staff</a></li>
									<li><a href="https://www.trontario.org/news-events/index.html">Events</a></li>
								</ul>
								
							</li>
							<li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>
						</ul>--%>
							
									<li><a href="https://www.trontario.org/about/tro-staff.html">TRO Staff</a></li>
									<li><a href="https://www.trontario.org/news-events/index.html">Events</a></li>
							<li><a href="IndexContact.aspx">Contact</a></li>
							</ul>
					    
						</div>
					</div>
				</div>
		
		</nav>
	 <div class="w3-display-container w3-text-white">
		 
				 <img src="imgs/front2.jpg" class="siz" style="width:100%; background-size:cover;  position:center; " />
			
			 <div class="w3-display-topright w3-container"><a href="trpr.pdf" class="instruct" style="color: #FFFFFF"><span class="glyphicon glyphicon-info-sign" ></span> Instructions</a>&nbsp;
     &nbsp; &nbsp;&nbsp;<asp:LinkButton ID="lbSignUp" CausesValidation="False" onclick="document.getElementById('id02').style.display='block',document.getElementById('id01').style.display='none'"  style="color:white; cursor:pointer; "  ><span class="glyphicon glyphicon-user" style="color:white;" ></span> <a style="color:white;">Sign Up</a></asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:LinkButton ID="lbLogin" onclick="document.getElementById('id01').style.display='block',document.getElementById('id02').style.display='none'"  style="color:white; cursor:pointer;"><span class="glyphicon glyphicon-log-in" style="color:white;" ></span> <a style="color:white;">Login</a></asp:LinkButton> &nbsp;&nbsp;&nbsp;&nbsp;
              <a href="Login.aspx" class="admin" style="color:white; cursor:pointer; "><span class="glyphicon glyphicon-log-in" style="color:white;"  ></span> EIC Login</a>  
			 </div>
			 <div class="w3-display-left w3-container"> <h1 style="color:white; font-weight:bolder;">Be a part of Academic community.</h1><br /><br /><br />
				<button class="get"><a href="https://www.trontario.org/membership/index.html" style="text-decoration:none;">Get in Touch</a></button></div>	

          </div>
                  <div id="myCarousel" class="carousel slide text-center"  data-ride="carousel">
    <!-- Indicators -->
  
<br />
                    
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <h4>"Nothing ever happens if you don't make it happen."<br/><br /></h4>
      </div>
      <div class="item">
        <h4>"I am a part of everthing that i have read."<br/><br /></h4>
      </div>
      <div class="item">
		  <%-- <h4>A book is our true friend.</h4>--%>
        <h4>One kind of good book should leave you asking.<br/><span>"How did the author know that about me?"</span></h4>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
       	<br />
		
		<div id="id01" class="modal">
  <div class="modal-content animate" >
   <br />
	  <center><h2>Login</h2></center>
	

    <div class="container">
      <div class="input-container">
		
     <i class="fa fa-user icon"></i>
	
		  <asp:TextBox ID="txtLoginUser" PlaceHolder="Enter Username" runat="server"  ></asp:TextBox>
</div> 
		 	<%--<asp:RequiredFieldValidator ID="rfdLoginUser" ForeColor="Red" runat="server" ControlToValidate="txtLoginUser" ErrorMessage="Username is required"></asp:RequiredFieldValidator>--%>

     <div class="input-container">
		
    <i class="fa fa-key icon"></i>
		
		 <asp:TextBox ID="txtLoginPass" runat="server" Placeholder="Enter Password" TextMode="Password"  ></asp:TextBox>
        </div>
		
		<%-- <asp:RequiredFieldValidator ID="rfdLoginPass" runat="server" ForeColor="Red" ControlToValidate="txtLoginPass" ErrorMessage="Password is required"></asp:RequiredFieldValidator>--%>
		<%-- <div class="input-container">
		
    <i class="fa fa-user icon"></i>
			 <asp:DropDownList ID="ddlLoginRole" runat="server" ForeColor="Gray" Height="40px" class="form-control" >
				 <asp:ListItem Selected="True" Value="0">Select Role</asp:ListItem>
						<asp:ListItem Value="1">Asociate Editor1</asp:ListItem>
				 <asp:ListItem Value="2">Asociate Editor2</asp:ListItem>
						<asp:ListItem Value="3">Author</asp:ListItem>
						<asp:ListItem Value="4">Researcher</asp:ListItem>
						<asp:ListItem></asp:ListItem>
			 </asp:DropDownList>
        </div>--%>
		<%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ControlToValidate="ddlLoginRole" ErrorMessage="Role is required"></asp:RequiredFieldValidator>--%>
		<asp:Label ID="lblMessage1" runat="server"></asp:Label>
		<asp:Button ID="btnLogin" runat="server" class="btnsub" Text="Login" OnClick="btnLogin_Click"  />
      <br />
      <label>
		 <asp:CheckBox ID="ckLoginRememberMe" runat="server" Checked="true"  Text="Remember Me" />
      </label>
		<br />
		<asp:Label ID="lblLoginAccount" runat="server" Text="Don't have an account? "></asp:Label><asp:LinkButton ID="lbRegisterHere" onclick="document.getElementById('id02').style.display='block',document.getElementById('id01').style.display='none'" style="text-decoration:underline;color:#3b5998;" Font-Underline="True">Register here</asp:LinkButton>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button"  onclick="document.getElementById('id01').style.display='none'" class="btn btn-danger">Cancel</button>
      <span class="psw">Forgot <a href="#"  onclick="document.getElementById('id03').style.display='block',document.getElementById('id01').style.display='none'"  >password?</a></span>
		<br />
    </div>
  </div>
</div>
		<div id="id03" class="modal">
  
  <div class="modal-content animate" >
  <br />
	  <center><h2>Forgot Password</h2></center>
    <div class="container">
      <div class="input-container">
		  <p>Enter Your Registered Email ID: </p>
		  </div>
		  <div class="input-container">
		  <asp:TextBox ID="txtForgotPassword" class="form-control"  runat="server"></asp:TextBox>
			  </div>
		  <div class="input-container">
		  <asp:Button ID="btnForgotPassword" runat="server" class="btn btn-primary" Text="Get Your Password" OnClick="btnForgotPassword_Click" />
			  </div>
		  <div class="input-container">
		  <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
		   </div>
		
  </div>
</div>
			</div>
		
		<%--onclick="window.open('ForgetPassword','FP',width=500,height=50,top=300,left=500,fullscreen=no,resizeable=0');"--%>
		
		<div id="id02" class="modal">
  
  <div class="modal-content animate" >
  <br />
	  <center><h2>Register</h2></center>
    <div class="container">
      <div class="input-container">
		
     <i class="fa fa-user icon"></i>
		  <asp:TextBox ID="txtRegisterUsername" Placeholder="Enter Username" runat="server" ></asp:TextBox>
		  <%-- <input  type="text" placeholder="Enter Username" name="username" required/>--%>
</div>
		<%--<asp:RequiredFieldValidator ID="rfdRegisterUser" runat="server" SetFocusOnError="True" ForeColor="Red" ControlToValidate="txtLoginUser"  ErrorMessage="Username is required"></asp:RequiredFieldValidator>--%>
		<%-- <div class="input-container">
		
     <i class="fa fa-envelope icon"></i>
			 <asp:TextBox ID="txtRegisterEmail" Placeholder="Enter Email" runat="server"></asp:TextBox>			
</div>--%>

		<%--<asp:RequiredFieldValidator ID="rfdEmail" ForeColor="Red" Display="Dynamic" SetFocusOnError="True" runat="server" ControlToValidate="txtRegisterEmail" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
		<asp:RegularExpressionValidator ID="reRegEmail" runat="server" ControlToValidate="txtRegisterEmail" ErrorMessage="Incorect Email" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$"></asp:RegularExpressionValidator>--%>
		
<div class="input-container">
		
    <i class="fa fa-key icon"></i>
	<asp:TextBox ID="txtRegisterPassword" runat="server" Placeholder="Enter Password" TextMode="Password" ></asp:TextBox>
	<%-- <input type="password" placeholder="Enter Password"  name="psw" required>--%>
        </div>
		<%--<asp:RequiredFieldValidator ID="rfdRegisterPass" ForeColor="Red" runat="server" ControlToValidate="txtRegisterPassword" SetFocusOnError="True" ErrorMessage="Password is required"></asp:RequiredFieldValidator>--%>
 <div class="input-container">
		
    <i class="fa fa-key icon"></i>
	 <asp:TextBox ID="txtRegisterConPassword" Placeholder="Confirm Password"  runat="server" TextMode="Password" ></asp:TextBox>
	
        </div>
	<%--	<asp:RequiredFieldValidator ID="rfdConfPass" Display="Dynamic" ForeColor="Red" runat="server" ControlToValidate="txtRegisterConPassword" ErrorMessage="Confirm Password Required" SetFocusOnError="True"></asp:RequiredFieldValidator> --%>
		<asp:Label ID="lblMessage" runat="server"></asp:Label>
		<asp:CompareValidator ID="cvRegPass" runat="server" ControlToCompare="txtRegisterPassword"  ControlToValidate="txtRegisterConPassword"  ErrorMessage="Password does not match" SetFocusOnError="True"></asp:CompareValidator>
		 
		<asp:Button ID="btnRegister" runat="server" class="btnsub" Text="Register" OnClick="btnRegister_Click" />    
  <%--<button type="submit" class="btnsub">Register</button>--%><br />
   <asp:Label ID="lblRegisterAccount" runat="server" Text="Already have an account. "></asp:Label>
		<asp:LinkButton ID="lbLoginHere" onclick="document.getElementById('id01').style.display='block',document.getElementById('id02').style.display='none'"  style="text-decoration:underline;color:#3b5998;" Font-Underline="True">Login here</asp:LinkButton> 
 </div>
    <div class="container" style="background-color:#f1f1f1">
      <button type="button"  onclick="document.getElementById('id02').style.display='none'" class="btn btn-danger">Cancel</button>
     
    </div>

  </div>
</div>


<!-- Container (About Section) -->

  <div style="margin: 0 10% 0 10%;">
	
	<br />
	<br />
	  <%--<div class="col-sm-8">--%>
     
      <h2>Therapeutic Recreation Ontario</h2>
	 
	  <br/>
      <p>Welcome to the TRO Website! Our website consists of information about the grassroots TRO organization as well as specific information about the field of Therapeutic Recreation. There is a student centre page containing valuable resources for any current or prospective students, news and events such as upcoming continuing education opportunities, job postings and more. If you are not already a member, see the TRO membership page to find out about all the benefits of membership and how you can sign up to join this vibrant organization.</p><br/>
      <p>Therapeutic Recreation Ontario (TRO) was created in 1999 with the goal of uniting and advancing the Therapeutic Recreation (TR) profession, by providing guidance and support for its members. In addition to networking opportunities and educational events, TRO provides resources to help Therapeutic Recreation professionals develop quality services and advocates to advance the profession in order to protect the rights of individuals across diverse delivery settings throughout the province.</p>
      <br/>
    </div>
	  <!-- Container (Services Section) -->
<div id="services" class="container-fluid text-center">
		<br />
	<br />
	<br />
	<br />
  <h2>SERVICES</h2>
  <h4>What we offer</h4>
  <br/>
  <div class="row slideanim">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-comment logo-small"></span>
      <h4><a href="https://www.trontario.org/news-events/tro-blog.html">TRO BLOG</a></h4>
     
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-education logo-small"></span>
      <h4><a href="https://www.trontario.org/education-research/index.html">EDUCATION & RESEARCH</a></h4>
    
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-lock logo-small"></span>
      <h4><a href="https://www.trontario.org/careers/index.html">CAREER</a></h4>
    
    </div>
  </div>
  <br/><br/>
  <div class="row slideanim">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-book logo-small"></span>
      <h4><a href="https://www.trontario.org/education-research/trpr--journal-of-tro/index.html">JOURNALS</a></h4>
   
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-facetime-video logo-small"></span>
      <h4><a href="https://www.trontario.org/media.html">MEDIA</a></h4>
    
    </div>
    <div class="col-sm-4">
		<i class='glyphicon glyphicon-certificate logo-small'></i>
     
      <h4 style="color:#303030;"><a href="https://www.trontario.org/about/tro-awards/index.html">AWARDS</a></h4>
   
    </div>
  
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
	<br />
</div>

			   <div class="footer">
<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br/><br/>
  <div class="share">
          <a href="https://www.facebook.com/" ><i class="fa fa-facebook-official fa-2x"></i></a>&nbsp;&nbsp;&nbsp;
          <a href="https://www.instagram.com/accounts/login/?hl=en"><i class="fa fa-instagram fa-2x"></i></a>&nbsp;&nbsp;&nbsp;
          <a href="https://accounts.snapchat.com/accounts/login?continue=https%3A%2F%2Faccounts.snapchat.com%2Faccounts%2Fwelcome"><i class="fa fa-snapchat fa-2x"></i></a>&nbsp;&nbsp;&nbsp;
           <a href="https://www.pinterest.ca/"> <i class="fa fa-pinterest-p fa-2x"></i></a>&nbsp;&nbsp;&nbsp;
            <a href="https://twitter.com/login?lang=en"><i class="fa fa-twitter fa-2x"></i></a>&nbsp;&nbsp;&nbsp;
            <a href="https://www.linkedin.com/uas/login"><i class="fa fa-linkedin fa-2x"></i></a>
        </div>
	<div id="google_translate_element"></div>
</footer></div>		

        <script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element');
			}
</script>

<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>


<script>

// Get the modal
var modall = document.getElementById('id03');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modall) {
        modal.style.display = "none";
    }
}
</script>










	<script>

// Get the modal
var modall = document.getElementById('id02');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modall) {
		modal.style.display = "none";
		alert(window.closed)
    }
}
</script>
		




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
		<script>
// Get the modal
var modal = document.getElementById('id03');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
		modal.style.display = "none";
		
    }
}
</script>
	
	
    </form>
</body>
</html>
