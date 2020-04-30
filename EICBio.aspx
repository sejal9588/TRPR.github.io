<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EICBio.aspx.cs" Inherits="TRPR.EICBio" %>

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
		.imgcontainer {
  text-align: center;
  margin: 12px 0 12px 0;
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
		
		.red {
			color: red;
			
		}
		h4 {
			border-radius: 4px;
			padding: 10px;
			background-color: white;
			
			width: 90%;
			color: gray;
			text-align:center;
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

		h2 {
			font-size: 40px;
			font-weight: 900;
			color: #3b5998;
			text-align: center;
		}

		.modal-content {
			/*background-color: #f9f9f9;*/
			background-image: url("imgs/login1.jpg") ;
			background-repeat: no-repeat;
			background-size: cover;
			
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





		.rightcolumn {
			margin-left: 25%;
			margin-right: 10%;
			width: 50%;
			display: inline-block;
			margin-top: 2%;
			color:white;
		}

		.container {
			margin-top: 30px;
			margin-left: 5%;
			margin-right: %;
			width: 100%;
		}

		h3{
			border-radius: 4px;
			padding: 10px;
			background-color: #3b5998;
			/*margin: 2px;*/
			width:100%;
			color:white;
		}
	.modal {
 
  width: 45%; /* Full width */
  height: 100%; /* Full height */
  margin:9% 35% 0 25%;
  background-color: rgba(0,0,0,0); /* Black w/ opacity */


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
/* Modal Content/Box */
.modal-contents {
  background-color: #fff;
  margin: 8% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 2px solid #888;
  width: 45%; /* Could be more or less, depending on screen size */
}
.imgcontainer {
  text-align: center;
  margin: 12px 0 12px 0;
}
 .containermodel {
  padding: 16px;
  width:100%;
}

		@media (min-width: 1025px) and (max-width: 1440px) {
			.rightcolumn {
				width: 60%;
				margin-left: 20%;
			}
			.modal-contents {
			 border-radius:4px;
			 width: 35%;
            }
		}

		@media (min-width: 769px) and (max-width: 1024px) {

			.modal-contents {
			 border-radius:4px;
			 width: 45%;
            }
			.rightcolumn {
				width: 55%;
				margin-left: 23%;
			}
		}


		@media (min-width: 426px) and (max-width: 768px) and (orientation: landscape) {
				.modal-contents {
			 border-radius:4px;
			 width: 45%;
            }
			.modalpopup{
				width:110%;
				height:200%;
			}
			.rightcolumn {
				width: 90%;
				margin-left: 10%;
			}
		}

		@media (min-width: 376px) and (max-width: 425px) {
			.modal-contents {
			 border-radius:4px;
			 width: 75%;
            }
				.modalpopup{
				height:195%
			}
			.rightcolumn {
				margin-left: 8%;
				margin-right: 5%;
				width: 85%;
			}

			h2 {
				font-size: 25px;
			}

	
		}


		@media (min-width: 320px) and (max-width: 375px) {

			.rightcolumn {
				margin-left: 8%;
				margin-right: 5%;
				width: 85%;
			}

			h2 {
				font-size: 20px;
			}
			#dvPerson{
				font-size:2px;
			}
			.modal-contents {

			width: 70%; 
		}
			.modalpopup{
				height:195%;
			}
    h2{
		 font-size:20px;
	 }
	h3{
		padding:8px;
	}
	 .modal {
 
		  width: 100%; /* Full width */
		  height: 100%; /* Full height */
  
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
							<%--<li><a href="Author.aspx">Author</a></li>
							<li><a href="AscoEditor.aspx">Associate Editor</a></li>--%>
							<li><a href="Editor.aspx" >Editor-in-Chief </a></li>

							
							<li class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#">More
                                <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="EICContact.aspx">Contact</a></li>
									<li><a href="https://www.trontario.org/about/tro-staff.html">TRO Staff</a></li>
									<li><a href="https://www.trontario.org/news-events/index.html">Events</a></li>
								</ul>
								
							</li>
						
							<li class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                    <span class="glyphicon glyphicon-user" ></span> <%--<%=Request.QueryString["User"] %>--%> <asp:Label ID="lblUser" runat="server" Text=""></asp:Label>
                                <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="Bio.aspx">My Profile </a></li>
									<li><asp:LinkButton ID="lbLogout" OnClick="lbLogout_Click" runat="server">Log Out</asp:LinkButton></li>
								</ul></li>
								<%--<li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>--%>
						</ul>
							
					    
						</div>
					</div>
				</div>
		
		</nav>

		
			
		<br />
		<asp:Panel ID="pnEditProfile" runat="server">
		<h2>Edit Your Profile</h2>
		<div class="rightcolumn">
			<div class="modal-content animate">
				<div class="container">

					<div class="input-container">
						<br />
						<asp:Label ID="lblEditName" runat="server" Text="Name: "></asp:Label><br />
						<asp:TextBox ID="txtEditName" runat="server" Width="90%" class="form-control"></asp:TextBox><br />
						<asp:Label ID="lblEditInstitution" runat="server" Text="Institution: "></asp:Label><br />
								
						<asp:DropDownList ID="ddlEditInstitution" runat="server" Width="90%" class="form-control" AppendDataBoundItems="True" DataSourceID="sdlInstitution" DataTextField="Institutions" DataValueField="Id">
<%--<asp:ListItem Selected="True" Value="0">Select Institution</asp:ListItem>--%></asp:DropDownList>

						<asp:Label ID="lblEditExpertise" runat="server" Text="Area of Expertise: "></asp:Label><br />
							

						<asp:DropDownList ID="ddlEditAreaOfExpertise" runat="server" class="form-control" AppendDataBoundItems="True" Width="90%" DataSourceID="sqlExpertise" DataTextField="Expertise" DataValueField="Id">
				 <%-- <asp:ListItem Selected="True" Value="0">Select Area Of Expertise</asp:ListItem>--%>
			</asp:DropDownList>
						
						<asp:Label ID="lblEditCity" runat="server" Text="City: "></asp:Label><br />
						<asp:TextBox ID="txtEditCity" runat="server" Width="90%" class="form-control"></asp:TextBox><br />
						
						<asp:Label ID="lblEditEmail" runat="server" Text="Email:"></asp:Label><br />
						<asp:TextBox ID="txtEditEmail" runat="server" Width="90%" class="form-control"></asp:TextBox><br />
						<asp:Label ID="lblEditProvince" runat="server" Text="Province:"></asp:Label><br />
						<asp:TextBox ID="txtEditProvince" runat="server" Width="90%" class="form-control"></asp:TextBox><br />
						<asp:Label ID="lblEditPhone" runat="server" Text="Phone:"></asp:Label><br />
						<asp:TextBox ID="txtEditPhone" runat="server" Width="90%" class="form-control"></asp:TextBox><br />
						<asp:Label ID="lblEditCountry" runat="server" Text="Country:"></asp:Label><br />
						<asp:TextBox ID="txtEditCountry" runat="server"  Width="90%" class="form-control" ></asp:TextBox><br />
					
					
						<asp:Label ID="lblEditPostal" runat="server" Text="Postal Code:"></asp:Label>
						<br />
						<asp:TextBox ID="txtEditPostal" runat="server" Width="90%" class="form-control"></asp:TextBox>
						<br />
					</div>
						
				</div>
			
				<br />
				<asp:Button ID="btnEdit" OnClick="btnEdit_Click" runat="server" Style="margin-left: 12%;" class="btn btn-primary" Text="Save Changes" Width="103px" Height="45px"></asp:Button>
				&nbsp;&nbsp; 
		  <asp:Button ID="btnEditCancel" runat="server" OnClick="btnEditCancel_Click"  class="btn btn-danger" Text="Cancel" Width="103px" Height="45px"></asp:Button>
				<br />
				<br />
				<asp:SqlDataSource ID="sdlInstitution" runat="server" ConnectionString="<%$ ConnectionStrings:TRPRConnectionString %>" SelectCommand="SELECT * FROM [Institution]"></asp:SqlDataSource>
				<asp:SqlDataSource ID="sqlExpertise" runat="server" ConnectionString="<%$ ConnectionStrings:TRPRConnectionString %>" SelectCommand="SELECT * FROM [AreaOfExpertise]"></asp:SqlDataSource>
				<br />
				<asp:SqlDataSource ID="sqlPersonDetail" runat="server" ConnectionString="<%$ ConnectionStrings:TRPRConnectionString %>" SelectCommand="SELECT Person.FullName, Person.Email, Person.Phone, Person.Country, Person.Province, Person.City, Person.PostalCode, Person.InstitutionID, Institution.Institutions, Person.ExpertiseID, AreaOfExpertise.Expertise FROM Person INNER JOIN Institution ON Person.InstitutionID = Institution.Id INNER JOIN AreaOfExpertise ON Person.ExpertiseID = AreaOfExpertise.Id WHERE (Person.UserName = @UserName)">
					<SelectParameters>
						<asp:SessionParameter Name="UserName" SessionField="Data" />
					</SelectParameters>
				</asp:SqlDataSource>
				<asp:ObjectDataSource ID="odsInstitution" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="TRPRLibrary.TRPRLibraryDataSetTableAdapters.InstitutionTableAdapter"></asp:ObjectDataSource>
				<asp:ObjectDataSource ID="odsExpertise" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="TRPRLibrary.TRPRLibraryDataSetTableAdapters.AreaOfExpertiseTableAdapter"></asp:ObjectDataSource>
				<br />
					
						
				
				<br />
			</div>
			<br />
			<br />
			
			</div>
			
			</asp:Panel>
		<asp:Panel ID="pnMyProfile" runat="server">
			<h2>My Profile</h2>
			<div class="rightcolumn">
			<div class="modal-content animate">
				<div class="container">
					<h4> Personal Infrormation</h4>
					<br />
				<br />
				<br />

	<asp:DetailsView ID="dvPersonDetail" runat="server" Height="100px" Width="80%" GridLines="None" ForeColor="White" Font-Size="18px" AutoGenerateRows="False" DataSourceID="sqlPersonDetail">
					<Fields>
						<asp:BoundField DataField="FullName" HeaderText="Full Name:" SortExpression="FullName" />
						<asp:BoundField DataField="Email" HeaderText="Email:" SortExpression="Email" />
						<asp:BoundField DataField="Phone" HeaderText="Phone:" SortExpression="Phone" />
						<asp:BoundField DataField="Country" HeaderText="Country:" SortExpression="Country" />
						<asp:BoundField DataField="Province" HeaderText="Province:" SortExpression="Province" />
						<asp:BoundField DataField="City" HeaderText="City:" SortExpression="City" />
						<asp:BoundField DataField="PostalCode" HeaderText="PostalCode:" SortExpression="PostalCode" />
						<asp:BoundField DataField="Institutions" HeaderText="Institutions:" SortExpression="Institutions" />
						<asp:BoundField DataField="Expertise" HeaderText="Expertise:" SortExpression="Expertise" />
						<asp:BoundField DataField="InstitutionID" Visible="false" HeaderText="InstitutionID" SortExpression="InstitutionID" />
						<asp:BoundField DataField="ExpertiseID" Visible="false"  HeaderText="ExpertiseID" SortExpression="ExpertiseID" />
					</Fields>
				</asp:DetailsView>	
	
				
				<br />
				<br />
					<asp:Button ID="btnEditProfile" class="btn btn-default"  runat="server" Text="Edit your Profile" OnClick="btnEditProfile_Click" />
			
			<br />
			<br />
			</div>
				<asp:Label ID="lblInstID" runat="server" Visible="false" Text="Label"></asp:Label>
				<asp:Label ID="lblExpID" runat="server" Visible="false" Text="Label"></asp:Label>
				</div>
			</div>
		</asp:Panel>

		<div id="id01" class="modalpopup">
  <div class="modal-contents animatemodal" >
    <div class="imgcontainer">
    <center><h3 style="border-radius: 4px; padding: 10px; background-color: #3b5998; width:100%;color:white;">Error Message<span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span></h3></center>
    </div>
  <div class="containermodal">
      <div class="input-container">
	<h2 style="color:gray">Access Denied <span class="glyphicon glyphicon-exclamation-sign"></span> </h2>
		  <br />
</div> 
   
		
    </div>
  </div>
</div>


	


			<br />
		
			<br />
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

	
    </form>
</body>
</html>