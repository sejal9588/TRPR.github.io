<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AscoEditor.aspx.cs" Inherits="TRPR.AscoEditor" %>

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
	<link href="StyleSheet.css" rel="stylesheet"/>
		<style>

	
/*.modal {
  display: none;
  position:absolute ; 
  z-index: 1;
  left: 0;
  top: 0;
  width: 100%; 
  height: 100%;
 overflow: auto;
  background-color: rgb(0,0,0);
  background-color: rgba(0,0,0,0.4); 
  padding-top: 60px;
}*/

/* Modal Content/Box */
/*.modal-content {
  background-color: #fff;
  margin: 8% auto 15% auto; 
  border: 2px solid #888;
  width: 25%; 
}*/

/* The Close Button (x) */
/*.close {
  position: absolute;
  right: 5px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
  float:right;
  margin-top:3%;

}*/



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

		body {
			font-family: Arial;
			padding: 10px;
			background: #f1f1f1;
           

		}
		h3{
			border-radius: 4px;
			padding: 10px;
			background-color: #3b5998;
			/*margin: 2px;*/
			width:100%;
			color:white;
			
		}
	    h1{
			text-align:center;
	    }
		
		/* Create two unequal columns that floats next to each other */
		/* Left column */
		.leftcolumn {
			float: left;
			width: 55%;
		
			
		}
    

		/* Right column */
		.rightcolumn {
			float:left;
			width:30%;
			background-color: #f1f1f1;
			padding-left: 20px;
           
		}
       

		/* Add a card effect for articles */
		.card {
			background-color: white;
			padding: 10px;
			margin-top: 20px;
		}
		

		/* Clear floats after the columns */
		.row:after {
			content: "";
			display: table;
			clear: both;
		}
		
		/* Footer */
		/*.footer {
			padding: 20px;
			text-align: center;
			background: #ddd;
			margin-top: 20px;
		}*/
		.search {
				margin-left: 30%;
				margin-top: 5%;
		}

	input[type=text],  select {
	
   
	margin:0 15px 0 15px;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
	color:black;
	 width:92%;
	 height:50px;
}



	 .footer{
	/*padding:20px;*/
	background:#3b5998;
	
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
  .share{
	  color:white;
	
  }

@media (min-width: 1441px) and (max-width: 2560px) {
	body{
		 margin-left:23%;
            margin-right:10%;
	}
	
}


@media (min-width: 1025px) and (max-width: 1440px) {
	body{
		 margin-left:15%;
            margin-right:10%;
	}	
	.search{
			margin-left:20% ;
			
	}
	.rightcolumn {
			
			width:40%;
	}
	 /*.modal-content {
  
  width: 35%;
}*/

}

@media (min-width: 769px) and (max-width: 1024px) {
	.rightcolumn {
			
			width:45%;
	}
	body{
		 margin-left:8%;
            margin-right:8%;
	}	
	
	#lblInvited{
		font-size:15px;
	}
	 /*.modal-content {
  
  width: 35%;
}*/
	
}


@media (min-width: 426px) and (max-width: 768px) and (orientation: landscape) {
	/*.modal-content {
 
  width: 50%;   
}*/
	.rightcolumn {
			
			width:48%;
	}
	body{
		 margin-left:1%;
            margin-right:1%;
	}	
	.search{
			margin-left:7% ;
			margin-right:6% ;
			margin-bottom:2%;
	}
	.leftcolumn {
			
			width: 52%;
			
	}
	input[type=text], select {
				width: 88%;
	}
	h1{
		font-size:20px;
	}
	#lblInvited{
		font-size:12px;
	}
	
}

@media (min-width: 376px) and (max-width: 425px) {
	 /*.modal {
 
  width: 100%; 
  height: 100%; 
  
}*/
	 /*.modal-content {
 
  width: 70%; 
  
}*/
	
	.rightcolumn {
			
			width:100%;
	}
	body{
		
            margin-right:5%;
	}	
	.search{
			margin-left:10% ;
			margin-right:6% ;
			margin-bottom:3%;
			
	}
	.leftcolumn {
			 margin-left:5%;
			  margin-right:5%;
			width: 95%;
			
	}
	h1{
		font-size:20px;
	}
	#lblInvited{
		font-size:12px;
	}
	
}


@media (min-width: 320px) and (max-width: 375px) {
	/*.modal-content {
 
  width: 70%; 
  
}*/
	.rightcolumn {
			
			width:100%;
	}
	body{
			
            margin-right:5%;
	}	
	.search{
			margin-left:7% ;
			 margin-right:5%;
			margin-bottom:5%;
	}
	.leftcolumn {

			 margin-left:5%;
			  margin-right:5%;
			width: 95%;		
	}
	input[type=text], select {
				width: 88%;
	}
	h1{
		font-size:20px;

	}
	#lblInvited{
		font-size:12px;
		margin-left:12%;
	}
	 h2{
		 font-size:20px;
	 }
	
}
	</style>
</head>
<body>
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
                            <li class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                     <span class="glyphicon glyphicon-user" ></span> <asp:Label ID="lblUser" runat="server" Text=""></asp:Label>
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
<br />
<br />
		<asp:Label ID="lblerror" runat="server" Text=""></asp:Label>
		<asp:Panel ID="Panel1" runat="server">
			<div class="leftcolumn">
				<div class="card">
					<h3>Associate Editor</h3>
					 <br />
					<h1 ><asp:Label ID="lblWelcome" runat="server" Text="Welcome to our Website!"></asp:Label> </h1><br />
					<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
				</div>
				<br /><br /></div>
</asp:Panel>
		
		<asp:Panel ID="Panel4" runat="server">
			<div class="leftcolumn">
				<div class="card">
					<h3>Associate Editor</h3><br />
					<h1>
                        <asp:Label ID="lblNewInvitation" runat="server" Text="New Invitations"></asp:Label></h1><br />
					<div style="text-align:center;">
                        <asp:Label ID="lblInvited" runat="server" Text="You have been Invited for review" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnViewInvitation" runat="server" class="btn btn-basic" Text="View Invitation" OnClick="btnViewInvitation_Click"  />
					<br />
					    <br />
					    <asp:Label ID="lblMesg" runat="server" Text="" ForeColor="#3b5992" Font-Bold="true" Font-Size="22px"></asp:Label>
					    <br /><%--<asp:ListBox ID="lbEmail" runat="server" Height="151px" ></asp:ListBox>--%>
						<asp:TextBox ID="lbEmail" runat="server" Height="151px" Width="80%" TextMode="MultiLine"></asp:TextBox>
                        <br />
                        <br />
						<div style="float:right;">
                        <asp:Button ID="btnAccept" runat="server" Text="Accept"  class="btn btn-primary" OnClick="btnAccept_Click" />
                        &nbsp;&nbsp;&nbsp;
						<asp:Button ID="btnDecline" runat="server" class="btn btn-danger" Text="Decline" OnClick="btnDecline_Click" />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</div>
                
<br />
					<br />
					
				</div></div></div>	
  </asp:Panel>

			<asp:Panel ID="pnViewSubmission" runat="server">
			<div class="leftcolumn" >
				<div class="card">
					<h3>Manuscripts To Review</h3>
					 <asp:SqlDataSource ID="sqlViewSubmission" runat="server" ConnectionString="<%$ ConnectionStrings:TRPRConnectionString %>" SelectCommand="SELECT Files.DueDate, Files.Responsibility, Files.Title, Files.Id, Review.UserName, Review.FileID, Files.Name, Files.DocumentContent, Files.Extn, Files.FilePath FROM Files INNER JOIN Review ON Files.Id = Review.FileID WHERE (Review.UserName = @UserName)">
						 <SelectParameters>
							 <asp:SessionParameter Name="UserName" SessionField="Data" />
						 </SelectParameters>
					</asp:SqlDataSource>
					 <br />
					
					 <br />
					<asp:GridView ID="gvAESearch" runat="server" CssClass="table table-hover table-responsive" Gridlines="Horizontal" AutoGenerateColumns="False" Width="100%" Height="108px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" DataKeyNames="Id" DataSourceID="sqlViewSubmission" OnSelectedIndexChanged="gvAESearch_SelectedIndexChanged">
						<Columns>
							<asp:BoundField DataField="Id" HeaderText="Id" Visible="false" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
							<asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
							<asp:BoundField DataField="DueDate" HeaderText="DueDate" Visible="false" SortExpression="DueDate" />
							<asp:BoundField DataField="Responsibility" HeaderText="Responsibility" SortExpression="Responsibility" />
							<asp:TemplateField HeaderText="Manuscript File">
								<ItemTemplate>
									<asp:LinkButton ID="LinkButton1" runat="server" OnClick="OpenDocument" Text='<%# Eval("Name") %>'></asp:LinkButton>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField ShowHeader="False">
								<ItemTemplate>
									<asp:LinkButton ID="lbReview" runat="server" CausesValidation="False" CommandName="Select" Text="Review" OnClick="lbReview_Click"></asp:LinkButton>
								</ItemTemplate>
							</asp:TemplateField>
						</Columns>

			<EmptyDataTemplate>
				No Record Found!!
			</EmptyDataTemplate>
			<FooterStyle BackColor="#CCCC99" ForeColor="Black" />
			
			<PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
			<RowStyle CssClass="cursor-pointer" />
			<SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
			<SortedAscendingCellStyle BackColor="#F7F7F7" />
			<SortedAscendingHeaderStyle BackColor="#4B4B4B" />
			<SortedDescendingCellStyle BackColor="#E5E5E5" />
			<SortedDescendingHeaderStyle BackColor="#242121" />
		</asp:GridView>
					<asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
					<br />
					<br />
					
                       
                 
					

                    </div>
                    
				</div>
               </asp:Panel>
		<asp:Panel ID="pnSubmittedReview" runat="server">
			<div class="leftcolumn" >
				<div class="card">
					<h3>Submitted Manuscripts </h3>
			<asp:GridView ID="gvSubmittedReview" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="table table-hover table-responsive" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="Black" Gridlines="Horizontal" Height="108px" Width="100%" OnSelectedIndexChanged="gvSubmittedReview_SelectedIndexChanged">
						<Columns>
							<asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="false" />
							<asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
							<asp:BoundField DataField="DueDate" HeaderText="DueDate" SortExpression="DueDate" Visible="false" />
							<asp:BoundField DataField="Responsibility" HeaderText="Responsibility" SortExpression="Responsibility" />
							<asp:TemplateField HeaderText="Manuscript File">
								<ItemTemplate>
									<asp:LinkButton ID="LinkButton2" runat="server" OnClick="OpenDocument" Text='<%# Eval("Name") %>'></asp:LinkButton>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField ShowHeader="False">
								<ItemTemplate>
									<asp:LinkButton ID="lbView" runat="server" CausesValidation="False" CommandName="Select"  Text="View"></asp:LinkButton>
								</ItemTemplate>
							</asp:TemplateField>
						</Columns>
						<EmptyDataTemplate>
							No Record Found!!
						</EmptyDataTemplate>
						<FooterStyle BackColor="#CCCC99" ForeColor="Black" />
						<PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
						<RowStyle CssClass="cursor-pointer" />
						<SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
						<SortedAscendingCellStyle BackColor="#F7F7F7" />
						<SortedAscendingHeaderStyle BackColor="#4B4B4B" />
						<SortedDescendingCellStyle BackColor="#E5E5E5" />
						<SortedDescendingHeaderStyle BackColor="#242121" />
					</asp:GridView>
					<br />
					<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TRPRConnectionString %>" SelectCommand="SELECT Files.Id, Files.Name, Files.DocumentContent, Files.Extn, Files.FilePath, Files.DueDate, Files.Responsibility, Files.Title, Files.FinalDecision, Comment.Id AS Expr1, Comment.UpdatedOn, Comment.UpdatedBy, Comment.CommentToAuthor, Comment.CommentToEditor, Comment.FinalDecision AS Expr2, Comment.Name AS Expr3, Comment.DocumentContent AS Expr4, Comment.Extn AS Expr5, Comment.FilePath AS Expr6, Comment.FileID FROM Comment INNER JOIN Files ON Comment.FileID = Files.Id WHERE (Comment.UpdatedBy = @Param1)">
						<SelectParameters>
							<asp:SessionParameter Name="Param1" SessionField="Data" />
						</SelectParameters>
					</asp:SqlDataSource>
					</div></div>
		</asp:Panel>
		<div class="rightcolumn"  >
				
				<div class="card">
					<h3>AE List</h3>
								
						
								
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								
						

		
					<asp:Label ID="lblInvite" runat="server" Text="1"></asp:Label>&nbsp;<asp:LinkButton ID="lbInvitation" runat="server" OnClick="lbInvitation_Click" >Invitations</asp:LinkButton><br />
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:Label ID="lblScore" runat="server" Text="0"></asp:Label>&nbsp;<asp:LinkButton ID="lbScoreSumitted" runat="server" OnClick="lbScoreSumitted_Click" >View Submissions</asp:LinkButton>
					<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblSubmitted" runat="server" Text="0"></asp:Label>&nbsp;<asp:LinkButton ID="lbSubmission" runat="server" OnClick="lbSubmission_Click"  >Submitted Review</asp:LinkButton><br />
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</div>
                    
				</div>
		  
 



		   <%--  
         <div class="footer" >
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
	<div id="google_translate_element" style="
    display: inline-block;"></div>
</footer></div>		

        <script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element');
			}
</script>

<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>--%><%--</script>--%>
		<asp:Label ID="lblRoleID" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>