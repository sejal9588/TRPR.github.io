<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SubmittedReview.aspx.cs" Inherits="TRPR.SubmittedReview" %>

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
	.card {
			background-color: white;
			padding: 1px 10px 10px 10px;
			margin-top: 10px;
			margin-left:15%;
			margin-right:15%;
		}
	h3{
			border-radius: 4px;
			padding: 10px;
			background-color: #3b5998;
			/*margin: 2px;*/
			width:100%;
			color:white;
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

 
</style>
	<style>
		body{
			background:#f1f1f1;
			padding:10px;
			font-family:Arial;
		}
		.navbar {
	
	background-color: #3b5998;
	
}
      
		h4{
			color:white;
		}
        h2{
		color:#3b5998;
    
	    }
	
	
          
			 
	</style>
	<style>







@media (min-width: 1025px) and (max-width: 1440px) {
	h2{font-size:24px;
	   text-align:center;
	  
	}
	
	
}

@media (min-width: 769px) and (max-width: 1024px) {
	h2{font-size:16px;
	  
	}

	
}


@media (min-width: 426px) and (max-width: 768px) and (orientation: landscape) {

h2{font-size:16px;
	  
	}


		
}

@media (min-width: 376px) and (max-width: 425px) {
	h2{font-size:17px;
	   text-align:center;
	}


	
}


@media (min-width: 320px) and (max-width: 375px) {

}
		

</style>
</head>
<body>
    <form id="form1" runat="server">
       <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-form navbar-left" >
		<h4><asp:Label ID="lblTitile" runat="server" Font-Italic="true" Font-Underline="true"></asp:Label></h4>
    </div>
    <div class="navbar-form navbar-right" >
      <div class="input-group">
		 
        <asp:LinkButton ID="lbDashboard" runat="server" ForeColor="White" Font-Bold="true"  OnClick="lbDashboard_Click">Back to Dashboard</asp:LinkButton>
        </div>
      </div>
    </div>
  </div>
</nav>

		
		<br />
		<br />
		<asp:Panel ID="Panel5" runat="server">
			<div class="card">
			 <h3>Submitted Review</h3>
				<asp:Label ID="lblUser" runat="server"></asp:Label>
			<br />
				<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TRPRConnectionString %>" SelectCommand="SELECT Files.Id, Files.Name, Files.DocumentContent, Files.Extn, Files.FilePath, Files.DueDate, Files.Responsibility, Files.Title, Files.FinalDecision, Comment.Id AS Expr1, Comment.UpdatedOn, Comment.UpdatedBy, Comment.CommentToAuthor, Comment.CommentToEditor, Comment.FinalDecision AS Expr2, Comment.Name AS Expr3, Comment.DocumentContent AS Expr4, Comment.Extn AS Expr5, Comment.FilePath AS Expr6, Comment.FileID FROM Comment INNER JOIN Files ON Comment.FileID = Files.Id WHERE (Files.Id = @Param1) AND (Comment.UpdatedBy = @Param2)">
					<SelectParameters>
						<asp:SessionParameter Name="Param1" SessionField="gvSearchId" />
						<asp:SessionParameter Name="Param2" SessionField="Data" />
					</SelectParameters>
				</asp:SqlDataSource>
				<br />
				<asp:DetailsView ID="dvSubmittedReview" runat="server" AutoGenerateRows="False" BorderStyle="None" DataKeyNames="Id,Expr1" DataSourceID="SqlDataSource1" Font-Size="16px" GridLines="None" Height="500px" style="margin-left:5%; color:gray" Width="90%">
					<Fields>
						<asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id">
						<HeaderStyle />
						</asp:BoundField>
						<asp:BoundField DataField="Expr1" HeaderText="CommentID" InsertVisible="False" ReadOnly="True" SortExpression="Expr1">
						<HeaderStyle />
						</asp:BoundField>
						<asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" Visible="true">
						<HeaderStyle />
						</asp:BoundField>
						<asp:TemplateField HeaderText="Manuscript: ">
								<ItemTemplate>
									<asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("Name") %>' OnClick="OpenCover" CommandArgument='<%# Eval("Name") %>'></asp:LinkButton>
										&nbsp;&nbsp;&nbsp; <label class="btn btn-info">?</label>
								</ItemTemplate>
							</asp:TemplateField>
						<asp:BoundField DataField="DueDate" HeaderText="DueDate" SortExpression="DueDate">
						<HeaderStyle />
						</asp:BoundField>
						<asp:BoundField DataField="Responsibility" HeaderText="Responsibility" SortExpression="Responsibility" Visible="true">
						<HeaderStyle />
						</asp:BoundField>
						<asp:BoundField DataField="UpdatedOn" HeaderText="UpdatedOn" SortExpression="UpdatedOn">
						<HeaderStyle />
						</asp:BoundField>
						<asp:BoundField DataField="UpdatedBy" HeaderText="UpdatedBy" SortExpression="UpdatedBy" />
						<asp:BoundField DataField="CommentToAuthor" HeaderText="CommentToAuthor" SortExpression="CommentToAuthor" />
						<asp:BoundField DataField="CommentToEditor" HeaderText="CommentToEditor" SortExpression="CommentToEditor" />
						<asp:BoundField DataField="Expr2" HeaderText="Final Decision" SortExpression="Expr2" />
						<asp:TemplateField HeaderText="Comment File: ">
								<ItemTemplate>
									<asp:LinkButton ID="LinkButton2" runat="server"  Text='<%# Eval("Expr3") %>' OnClick="OpenFile" CommandArgument='<%# Eval("Expr3") %>'></asp:LinkButton>
										&nbsp;&nbsp;&nbsp; <lablel class="btn btn-info">?</lablel>
								</ItemTemplate>
							</asp:TemplateField>
					</Fields>
				</asp:DetailsView>
				<br />

				</div>
		</asp:Panel>
		<script>
$(document).ready(function(){

  $('.btn-info').tooltip({title: "Click on File name to download!", trigger: "hover", placement: "right"}); 

});
</script>
    </form>
</body>
</html>
