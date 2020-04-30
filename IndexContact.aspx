<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexContact.aspx.cs" Inherits="TRPR.IndexContact" %>

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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="StyleSheet.css" rel="stylesheet"/>
    <style>
        body{
            width:100%;
            background-color:#f1f1f1;
        }
			h3{
			border-radius: 4px;
			padding: 10px;
			background-color: #3b5998;
			/*margin: 2px;*/
			width:100%;
			color:white;
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
  margin: 9% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
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
.imgcontainer {
  text-align: center;
  margin: 12px 0 12px 0;
}

       .footer{
	/*padding:20px;*/
	background:#3b5998;
	
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
  .share{
	  color:white;
	
  }
@media (min-width: 1441px) and (max-width: 2760px) {
	#contact{
		margin-left: 35%;
		margin-right: 35%;
		
	}
	 .container {
  padding: 16px;
  width:100%;
}
  
}


@media (min-width: 1025px) and (max-width: 1440px) {
	#contact{
		margin-left: 25%;
		margin-right: 25%;
		
	}
	.modal-content{
		width: 35%;
	}
}

@media (min-width: 769px) and (max-width: 1024px) {

#contact{
		margin-left: 15%;
		margin-right: 15%;
		
	}
.close{
		margin-top:3%;
	}
.modal-content{
		width: 35%;
	}
}


@media (min-width: 426px) and (max-width: 768px) and (orientation: landscape) {
	#contact{
		margin-left: 15%;
		margin-right: 15%;
		
	}
	.close{
		margin-top:4%;
	}
	.modal-content{
		width: 35%;
	}
	
}

@media (min-width: 376px) and (max-width: 425px) {
	#contact{
		margin-left: 5%;
		margin-right: 5%;
		
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
	 .close{
		margin-top:4%;
	}
	
}


@media (min-width: 320px) and (max-width: 375px) {
	#contact{
		margin-left: 5%;
		margin-right: 5%;
		
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
  width: 75%; /* Could be more or less, depending on screen size */
}
   
	h3{
		padding:8px;
	}
	h2{
		 font-size:20px;
	 }
	.close{
		margin-top:4%;
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
							<%--<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
			</ul>--%>
							
						<div class="centernav">
						
						<ul class="nav navbar-nav">
							<li><a href="Index.aspx">Home</a></li>
							<li><a href="https://www.trontario.org/about/tro-staff.html">TRO Staff</a></li>
									<li><a href="https://www.trontario.org/news-events/index.html">Events</a></li>
							<li><a href="IndexContact.aspx">Contact</a></li>
							</ul>
					    
						</div>
					</div>
				</div>
		
		</nav>
		<br />
		<br />
		<br />
		
		
       
			<!-- Container (Contact Section) -->
<div id="contact" >
   
 <center><h2 style="color:#3b5998; font-weight:bolder;">Contact</h2></center> 
  <p class="text-center"><em>We love our site visiters!</em></p>

  
    <div >
      <p>Site visitors? Drop a note.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span>Ontario, Canada</p>
      <p><span class="glyphicon glyphicon-phone"></span>Phone: +00 1515151515</p>
      <p><span class="glyphicon glyphicon-envelope"></span>Email: techcreate@mail.com</p>
    </div>
   <br />
      <div>
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
		 <br />
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        <br />
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" cols="12" rows="5"></textarea>
      <br/>
          <button style="float:right; width: 85px;" class="btn btn-primary"  type="submit">Send</button>
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
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />

        
        <div class="footer">
<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
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


    </form>
</body>
</html>