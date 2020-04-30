<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AEReviewDetail.aspx.cs" Inherits="TRPR.AEReviewDetail" %>

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
			margin-left:25%;
			margin-right:25%;
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
		.secTop{
			margin-left:15%;
			margin-right:15%;
			font-size:20px;
		}
	
          
			 
	</style>
	<style>







@media (min-width: 1025px) and (max-width: 1440px) {
	h2{font-size:24px;
	   text-align:center;
	  
	}
	
	.secTop {
			font-size:15px;
			margin-left:10%;
			margin-right:10%;
		}
}

@media (min-width: 769px) and (max-width: 1024px) {
	h2{font-size:16px;
	  
	}
.secTop {
			width:90%;
			font-size:15px;
			margin-left:8%;
			
			
	
}


@media (min-width: 426px) and (max-width: 768px) and (orientation: landscape) {

h2{font-size:16px;
	  
	}
.secTop {
			width:90%;
			font-size:15px;
			margin-left:5%;
			
			
		}

		
}

@media (min-width: 376px) and (max-width: 425px) {
	h2{font-size:17px;
	   text-align:center;
	}


		}
		.secTop {
			width:100%;
			font-size:17px;
			margin-left:2%;
			margin-right:2%;
			
		}
}


@media (min-width: 320px) and (max-width: 375px) {
	h2{font-size:15px;
	   text-align:center;
	}

  
		
		
	.secTop {
			width:100%;
			font-size:10px;
			margin-left:2%;
			margin-right:2%;
			
		}
	  
}
		

		.auto-style1 {
			height: 34px;
		}
		

	</style>
</head>
<body  id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
    <form id="form1" runat="server">
         <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-form navbar-left" >
		<h4>
						<asp:Label ID="lblTitile" runat="server" Font-Italic="true" ForeColor="White" Font-Bold="true" Font-Size="20px" Font-Underline="true"  Text=""></asp:Label></h4>
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
		<div class="secTop">
		<ul class="nav nav-tabs">
			<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown"  href="ReviewManuscript.aspx">Manuscript File <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="ReviewManuscript.aspx">View File</a></li>
							
							
						</ul>
  </li>
    <li><a href="AEReviewDetail.aspx">Details</a></li>
  <li><a href="ReviewDecision.aspx">Decision</a></li>
    <li><a href="trpr.pdf">Instructions</a></li>
 
          
          <li ><a href="Email.aspx">Send Email</a></li>

  </ul>
			</div>
        <br />
        <br />
		<asp:Panel ID="Panel5" runat="server">
			<div class="card">
			 <h3>Manuscript Information</h3>
				&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
				<br />
			
				
				<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TRPRConnectionString %>" SelectCommand="SELECT * FROM [Files] WHERE ([Id] = @Id)">
					<SelectParameters>
						<asp:SessionParameter Name="Id" SessionField="gvSearchId" Type="Int32" />
					</SelectParameters>
				</asp:SqlDataSource>
		<%--		<center><asp:Label ID="lblCounter" runat="server" Text="" Font-Bold="true" ForeColor="#3b5992" Font-Size="22px"></asp:Label></center>--%><br />
				
				<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" Font-Size="15px" GridLines="None" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="214px" Width="308px">
					<Fields>
						<asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="False" />
						<asp:BoundField DataField="Title" HeaderText="Title: " SortExpression="Title" >
						<HeaderStyle HorizontalAlign="Left" />
						</asp:BoundField>
						<asp:BoundField DataField="Name" HeaderText="Name: " SortExpression="Name" >
						<HeaderStyle HorizontalAlign="Left" />
						</asp:BoundField>
						<asp:BoundField DataField="DueDate" HeaderText="DueDate: " SortExpression="DueDate" >
						<HeaderStyle HorizontalAlign="Left" />
						</asp:BoundField>
						<asp:BoundField DataField="Responsibility" HeaderText="Responsibility: " SortExpression="Responsibility" >
						<HeaderStyle HorizontalAlign="Left" />
						</asp:BoundField>
						<asp:TemplateField>
							<ItemTemplate>
								<asp:Label ID="lblDueDate" runat="server" Text='<%# Eval("DueDate") %>'></asp:Label>
							</ItemTemplate>
						</asp:TemplateField>
					</Fields>
				</asp:DetailsView>
						
				<p id="demo"></p>
				<br />
				<br />
				

				</div>
		</asp:Panel>
<%--		<script>
	var countDownDate = new Date("2019-04-29 12:00:00 AM").getTime();

// Update the count down every 1 second
var x = setInterval(function() {

  // Get todays date and time
  var now = new Date().getTime();

  // Find the distance between now and the count down date
  var distance = countDownDate - now;

  // Time calculations for days, hours, minutes and seconds
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);

  // Display the result in the element with id="demo"
  document.getElementById("demo").innerHTML = days + "d " + hours + "h "
  + minutes + "m " + seconds + "s ";

  // If the count down is finished, write some text 
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("demo").innerHTML = "EXPIRED";
  }
}, 1000);
</script>--%>
    </form>

</body>
</html>
