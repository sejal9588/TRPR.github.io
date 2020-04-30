<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AERecomToEIC.aspx.cs" Inherits="TRPR.AERecomToEIC" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	

	
		<style>
			

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
		body {
			font-family: Arial;
			padding: 10px;
			background: #f1f1f1;
		}
		.sub{
			cursor:pointer;
			height:25px;

		}
		.sub:hover{
			
			background-color:#f1f1f1;
		}
		
		h3 {
			border-radius: 4px;
			padding: 10px;
			background-color: #3b5998;
			
			width: 100%;
			color: white;
		}
	    .navbar {
			background-color: #3b5998;
		}

		h2 {
			color: #3b5998;
		}
		

		.secTop {
			margin-left: 15%;
			margin-right: 15%;
		}

		

		.card {
			background-color: white;
			padding: 1px 10px 10px 10px;
			margin-top: 10px;
			margin-left:15%;
			margin-right:15%;
		}
	
	</style>
	

<style>


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



/* The Modal (background) */


/* Modal Content/Box */
.modal-content {
  background-color: #fff;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 2px solid #888;
  width: 90%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
/*.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}*/



/* Add Zoom Animation */
/*.animate {
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
}*/

/* Change styles for span and cancel button on extra small screens */


.input-container {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  width: 100%;
  margin-bottom: 15px;
}

/*.icon {
  padding: 10px;
  background: #3b5998;
  color: white;
  min-width: 40px;
 
  text-align: center;
}*/
/*.imgcontainer {
  text-align: center;
  margin: 12px 0 12px 0;
}*/


/*.footer{
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
  }*/  


@media (min-width: 1441px) and (max-width: 2560px) {
  
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
}


@media (min-width: 1025px) and (max-width: 1440px) {

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
  
  
}
@media (min-width: 769px) and (max-width: 1024px) {

 
 .container {
  padding: 16px;
  width:100%;
} 
 
}


@media (min-width: 426px) and (max-width: 768px) and (orientation: landscape) {
   
 
 .container {
  padding: 16px;
  width:100%;
}
  
}

@media (min-width: 376px) and (max-width: 425px) {
  
 
}


@media (min-width: 320px) and (max-width: 375px) {
  .modal {
 
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  
}
   .container {
  padding: 16px;
  width:100%;
}
}

  }

	</style>
</head>
<body>
    <form id="form1" runat="server">
      <nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-form navbar-left">
						<h4>
						<asp:Label ID="lblTitile" runat="server" Font-Italic="true" ForeColor="White" Font-Bold="true" Font-Size="20px" Font-Underline="true"  Text=""></asp:Label></h4>
					</div>
						<div class="navbar-form navbar-right">
					<div class="input-group">
			<asp:LinkButton ID="lbDashboard" runat="server" ForeColor="White" Font-Bold="true" OnClick="lbDashboard_Click" >Back to Dashboard</asp:LinkButton>
			</div>
							</div>
							</div>
		</nav>

		<br />
		<br />
		<asp:Panel ID="pnAERecom" runat="server">
			<div class="card" >
			<br />
<h3 >Associate Editor's Recommendations</h3>
				<br />
				<br />
				<div style="margin-left:15%; margin-right:10%" >
				<asp:Label ID="Label2" runat="server" Font-Bold="true" Text="Manuscript Title: "></asp:Label>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<asp:Label ID="Label3" runat="server" Text=""></asp:Label><br />
				<asp:Label ID="Label4" runat="server" Font-Bold="true" Text="Associate Editor: "></asp:Label>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label5" runat="server" Text=""></asp:Label>
				<br />
				<asp:Label ID="Label11" runat="server" Font-Bold="true" Text="Upload On: "></asp:Label>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label12" runat="server" Text=""></asp:Label>
					<br />
				<br />
				<asp:Label ID="Label6" runat="server" Font-Bold="true" Text="Comments To Editor"></asp:Label><br />
				<asp:Label ID="Label7" runat="server" Text=""></asp:Label>
					<br />
					<br />
				<asp:Label ID="Label8" runat="server" Font-Bold="true" Text="Comments To Author"></asp:Label><br />
				<asp:Label ID="Label9" runat="server" Text=""></asp:Label>
					<br />
					<br />
				<asp:DetailsView ID="dvFile" runat="server" AutoGenerateRows="False"  BorderStyle="None" GridLines="None" DataKeyNames="Id" DataSourceID="sqlAERecom" Height="50px" Width="394px">
					<Fields>
						
						<asp:TemplateField HeaderText="Attached Files: " HeaderStyle-Font-Bold="true">
							<ItemTemplate >
									<asp:LinkButton ID="LinkButton1" runat="server"   OnClick="OpenFile" Text='<%# Eval("Name") %>'></asp:LinkButton>
							</ItemTemplate>
						</asp:TemplateField>
						
					</Fields>
				</asp:DetailsView>
					<asp:Label ID="lblInform" runat="server" Text="Click "></asp:Label>
				<asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">here</asp:LinkButton>
				&nbsp;<asp:Label ID="lblInform2" runat="server" Text="to send Your Final decision to Author"></asp:Label>
&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
			
				</div>
				<br />
				<asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="sqlAERecom">
					<Fields>
						<asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
						<asp:BoundField DataField="UpdatedOn" HeaderText="UpdatedOn" SortExpression="UpdatedOn" />
						<asp:BoundField DataField="UpdatedBy" HeaderText="UpdatedBy" SortExpression="UpdatedBy" />
						<asp:BoundField DataField="CommentToAuthor" HeaderText="CommentToAuthor" SortExpression="CommentToAuthor" />
						<asp:BoundField DataField="CommentToEditor" HeaderText="CommentToEditor" SortExpression="CommentToEditor" />
						<asp:BoundField DataField="FinalDecision" HeaderText="FinalDecision" SortExpression="FinalDecision" />
						<asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
						<asp:BoundField DataField="Extn" HeaderText="Extn" SortExpression="Extn" />
						<asp:BoundField DataField="FilePath" HeaderText="FilePath" SortExpression="FilePath" />
						<asp:BoundField DataField="FileID" HeaderText="FileID" SortExpression="FileID" />
						<asp:BoundField DataField="Expr1" HeaderText="Expr1" SortExpression="Expr1" />
						<asp:BoundField DataField="ManuID" HeaderText="ManuID" SortExpression="ManuID" />
					</Fields>
				</asp:DetailsView>





    			<br />
				<asp:Label ID="lbltitle" runat="server"></asp:Label>
				<asp:Label ID="lblManuId" runat="server"></asp:Label>
				<br />
				<asp:SqlDataSource ID="sqlAERecom" runat="server" ConnectionString="<%$ ConnectionStrings:TRPRConnectionString %>" SelectCommand="SELECT Comment.Id, Comment.UpdatedOn, Comment.UpdatedBy, Comment.CommentToAuthor, Comment.CommentToEditor, Comment.FinalDecision, Comment.Name, Comment.DocumentContent, Comment.Extn, Comment.FilePath, Comment.FileID, Submission.FileID AS Expr1, Submission.ManuID FROM Submission INNER JOIN Comment ON Submission.FileID = Comment.FileID  WHERE Comment.Id = @CommentID">
					<SelectParameters>
						<asp:SessionParameter Name="CommentID" SessionField="gvAERecomId" />
					</SelectParameters>
				</asp:SqlDataSource>
				




    </div>
 
		</asp:Panel>
    </form>
</body>
</html>
