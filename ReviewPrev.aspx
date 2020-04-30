<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReviewPrev.aspx.cs" Inherits="TRPR.ReviewPrev" %>

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
		<br />
		<br />
		<br />
		
		
       
			<!-- Container (Contact Section) -->
<div id="contact" >
   
 <center><h2 style="color:#3b5998; font-weight:bolder;">Contact here to Review Manuscripts</h2></center> 

  
    <div ><br />
      <p>SitSite visitors? Drop a note.</p>
    </div>
 
      <div>
		  <asp:TextBox ID="txtName" runat="server" class="form-control"  placeholder="Name" required></asp:TextBox>
        
		 <br />
		  <asp:TextBox ID="txtEmail" runat="server" class="form-control"  placeholder="Email" required></asp:TextBox>
          
        <br />
		  <asp:TextBox ID="txtMessage" runat="server" class="form-control"  Height="140px" placeholder="Message" TextMode="MultiLine"></asp:TextBox>
      
      <br/>
		  <asp:Button ID="btnSend" runat="server" Text="Send" style="float:right; width:100%;" class="btn btn-primary" OnClick="btnSend_Click" />
        <br />
		    <br />
		<center><asp:Label ID="lblMessage" runat="server" Font-Bold="true" ForeColor="#3b5992"></asp:Label></center>
        </div>
      </div>
   

		<br />
		<div id="id01" class="modal">
  <div class="modal-content animate" >
    <div class="imgcontainer">
        <center><h3>Error Message<span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span></h3></center>
     
    </div>
  <div class="container">
      <div class="input-container">
	<h2 >Access Denied <span class="glyphicon glyphicon-exclamation-sign"></span> </h2>
		  <br />
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
        
       <%-- <div class="footer">
<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  <div class="share">
          <i class="fa fa-facebook-official fa-2x"></i>&nbsp;&nbsp;&nbsp;
          <i class="fa fa-instagram fa-2x"></i>&nbsp;&nbsp;&nbsp;
          <i class="fa fa-snapchat fa-2x"></i>&nbsp;&nbsp;&nbsp;
          <i class="fa fa-pinterest-p fa-2x"></i>&nbsp;&nbsp;&nbsp;
          <i class="fa fa-twitter fa-2x"></i>&nbsp;&nbsp;&nbsp;
          <i class="fa fa-linkedin fa-2x"></i>
        </div>
	<div id="google_translate_element"></div>
</footer></div>	--%>	

        <script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element');
			}
</script>

<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
		<asp:Label ID="lblRoleID" runat="server" Text=""></asp:Label>

    </form>
</body>
</html>
