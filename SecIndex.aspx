<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SecIndex.aspx.cs" Inherits="TRPR.SecIndex" %>

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
	h3{
			border-radius: 4px;
			padding: 10px;
			background-color: #3b5998;
			/*margin: 2px;*/
			width:100%;
			color:white;
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
  height: 100%; /* Full height */
 overflow: auto;/* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fff;
  margin: 8% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 2px solid #888;
  width: 45%; /* Could be more or less, depending on screen size */
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
 
  width: 35%; /* Full width */
  height: 100%; /* Full height */
  margin:9% 35% 0 25%;
  background-color: rgba(0,0,0,0); /* Black w/ opacity */


}
  .modal-content {
  background-color: #fff;
  margin: 5% auto auto 45%; /* 5% from the top, 15% from the bottom and centered */
  border: 2px solid #888;
  width: 55%; /* Could be more or less, depending on screen size */
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
  padding: 2px;
  width:100%;
  font-size:5px;

}
   .modal-content {
  background-color: #fff;
  margin: 8% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 2px solid #888;
  width: 70%; /* Could be more or less, depending on screen size */
}
    h2{
		 font-size:20px;
	 }
	h3{
		padding:8px;
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
								<li>
									<asp:LinkButton ID="lbAscoEditor" runat="server" OnClick="lbAscoEditor_Click">Associate Editor</asp:LinkButton></li>
									<%--<li><a href="ReviewPrev.aspx">Associate Editor</a></li>
								<li><a href="AscoEditor.aspx">Associate Editor</a></li>--%>							<%--<li><a href="#" onclick="document.getElementById('id01').style.display='block'">Editor-in-Chief </a></li>--%>
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
                                    <span class="glyphicon glyphicon-user" ></span> <asp:Label ID="lblUser" runat="server" Text="User"></asp:Label> <%--<%=Request.QueryString["User"] %>--%>
                                <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li>
										
									<li><a href="Bio.aspx">My Profile </a></li>
									<li>
										<asp:LinkButton ID="lbLogout" OnClick="lbLogout_Click" runat="server">Log Out</asp:LinkButton></li>
								</ul></li>
						</ul>
							
					    
						</div>
					</div>
				</div>
		
		</nav>
	 <div class="w3-display-container w3-text-white">
		 
				 <img src="imgs/front2.jpg" class="siz" style="width:100%; background-size:cover; position:center; " />
			
			 <div class="w3-display-topright w3-container"><a href="trpr.pdf" class="instruct" style="color: #FFFFFF"><span class="glyphicon glyphicon-info-sign" ></span> Instructions</a>&nbsp;
     &nbsp; &nbsp;</div>
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
		


<!-- Container (About Section) -->

  <div style="margin: 0 10% 0 10%;">
	
	<br />
	<br />
	  <%--<div class="col-sm-8">--%>
     
      <h2>Therapeutic Recreation Ontario</h2>
	  <asp:Label ID="lblMessage" runat="server"></asp:Label>
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

		<div id="id01" class="modal">
  <div class="modal-content animate" >
    <div class="imgcontainer">
       <center><h3>Error Message<span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span></h3></center>
     
    </div>
  <div class="container">
      <div class="input-container">
	<h2 >Access Denied <span class="glyphicon glyphicon-exclamation-sign"></span> </h2>
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


		<asp:Label ID="lblRoleID" runat="server"></asp:Label>

		<asp:DetailsView ID="dvRole" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataSourceID="sqlRole">
			<Fields>
				<asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
				<asp:BoundField DataField="RoleID" HeaderText="RoleID" SortExpression="RoleID" />
			</Fields>
		</asp:DetailsView>
		<asp:SqlDataSource ID="sqlRole" runat="server" ConnectionString="<%$ ConnectionStrings:TRPRConnectionString %>" SelectCommand="GetRole" SelectCommandType="StoredProcedure">
			<SelectParameters>
				<asp:SessionParameter Name="UserName" SessionField="Data" Type="String" />
			</SelectParameters>
		</asp:SqlDataSource>

    </form>
</body>
</html>
