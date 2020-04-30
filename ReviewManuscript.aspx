                      <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReviewManuscript.aspx.cs" Inherits="TRPR.ReviewManuscript" %>

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
  .rightcolumn {
  float: left;
  width: 40%;
  
  height: 900px; /* Should be removed. Only for demonstration */
}

/* Create two equal columns that floats next to each other */
.leftcolumn {
  float: left;
  width: 35%;
  margin-left:15%;
   margin-right:5%;
  height: 900px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */

 .list{
	 margin-top:7%;
		   width:100%;
		  
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
	  
      #btnComment{
			width:93%;
			margin-left:4%;
	margin-right:4%;
	
            
      
	    /*.auto-style13 {
			width: 373px;
		}
		.auto-style14 {
			width: 373px;
			height: 26px;
		}
		.auto-style15 {
			height: 26px;
		}
		.auto-style16 {
			height: 673px;
		}
		.auto-style17 {
			width: 373px;
			height: 49px;
		}
		.auto-style18 {
			height: 49px;
		}
			 
		.auto-style20 {
			width: 150px;
			height: 49px;
		}
		.auto-style21 {
			width: 150px;
			height: 26px;
		}
		.auto-style22 {
			width: 150px
		}*/
			 
	</style>
	<style>

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}



.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  width:100%;
}

.col-25 {

  float: left;
  width: 40%;
  margin-top: 15px;
}
.list{
	height:775px;
}
.col-75 {
	margin-left:5%;
  float: left;
  width: 30%;
  margin-top: 15px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
  margin-top:2%;
  margin-bottom:2%;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */




@media (min-width: 1025px) and (max-width: 1440px) {
	h2{font-size:24px;
	   text-align:center;
	  
	}
	.leftcolumn{
		width:40%;
		margin-left:7%;
	}
	.rightcolumn{
		width:40%;
	}
	.col-25, .col-75 {
    width: 100%;
    margin-top: 2%;
	margin-left:4%;
	margin-right:4%;
  }
		#btnComment{
			width:93%;
			margin-left:4%;
	margin-right:4%;
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
	.leftcolumn{
		width:40%;
		margin-left:8%;
	}
	.rightcolumn{
		width:40%;
	}
	.col-25, .col-75 {
    width: 100%;
    margin-top: 2%;
	margin-left:4%;
	margin-right:4%;
  }
		#btnComment{
			width:93%;
			margin-left:4%;
	margin-right:4%;
		}
}


@media (min-width: 426px) and (max-width: 768px) and (orientation: landscape) {

h2{font-size:16px;
	  
	}
.secTop {
			width:90%;
			font-size:15px;
			margin-left:5%;
			
			
		}
	.leftcolumn{
		width:40%;
		height:500px;
		margin-left:7%;
	}
	.rightcolumn{
		width:40%;
		margin-top:0;
	}
		.col-25, .col-75 {
    width: 100%;
    margin-top: 2%;
	margin-left:4%;
	margin-right:4%;
  }
		#btnComment{
			width:93%;
			margin-left:4%;
	margin-right:4%;
		}
		
}

@media (min-width: 376px) and (max-width: 425px) {
	h2{font-size:17px;
	   text-align:center;
	}
	.leftcolumn{
		width:90%;
		height:500px;
		margin-left:5%;
	}
	.rightcolumn{
		width:90%;
		margin-left:3%;
	}
		.col-25, .col-75 {
    width: 100%;
    margin-top: 2%;
	margin-left:3%;
	margin-right:3%;
  }
		#btnComment{
			width:93%;
			margin-left:4%;
	margin-right:4%;
		}
		.secTop {
			width:100%;
			font-size:7px;
			margin-left:1%;
			margin-right:1%;
			
		}
}


@media (min-width: 320px) and (max-width: 375px) {
	h2{font-size:15px;
	   text-align:center;
	}
	.leftcolumn{
		width:90%;
		height:500px;
		margin-left:5%;
	}
	.rightcolumn{
		width:90%;
		margin-left:2%;

	}
		.col-25, .col-75 {
    width: 100%;
    margin-top: 2%;
	margin-left:4%;
	margin-right:4%;
  }
		#btnComment{
			width:93%;
			margin-left:4%;
	margin-right:4%;
		}
		
	.secTop {
			width:100%;
			font-size:7px;
			margin-left:1%;
			margin-right:1%;
			
		}
	
	  
}

		</style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
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
							<li><a href="ReviewManuscript.aspx">View PDF</a></li>
							
							
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
			
		
		
		<div class="row">
       <div class="leftcolumn">

	<div style="width:100%; height:80%;">
		<iframe id="iframe" runat="server" style="width:100%; height:100%;"></iframe>
	</div>
		  <%-- <asp:TextBox ID="TextBox7" runat="server" class="list"  Height="500px" ></asp:TextBox>--%>

		 
		   <br />
		   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TRPRConnectionString %>" SelectCommand="SELECT * FROM [Files] WHERE ([Id] = @Id)">
			   <SelectParameters>
				   <asp:SessionParameter Name="Id" SessionField="gvSearchId" Type="Int32" />
			   </SelectParameters>
		   </asp:SqlDataSource>
		   <br />
		   <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
			   <Fields>
				   <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
				   <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
				   <asp:BoundField DataField="Extn" HeaderText="Extn" SortExpression="Extn" />
				   <asp:BoundField DataField="FilePath" HeaderText="FilePath" SortExpression="FilePath" />
				   <asp:BoundField DataField="DueDate" HeaderText="DueDate" SortExpression="DueDate" />
				   <asp:BoundField DataField="Responsibility" HeaderText="Responsibility" SortExpression="Responsibility" />
				   <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
				   <asp:BoundField DataField="FinalDecision" HeaderText="FinalDecision" SortExpression="FinalDecision" />
			   </Fields>
		   </asp:DetailsView>
		 
		   </div>



		   <div class="rightcolumn">
<div class="container">
	
	<asp:RadioButtonList ID="rbResp" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" OnSelectedIndexChanged="rbResp_SelectedIndexChanged">
		<asp:ListItem Value="0" Selected="True"> Feedback for overall content</asp:ListItem>
		<asp:ListItem Value="1"> Feedback for Grammar &amp; Spelling</asp:ListItem>
	</asp:RadioButtonList>
	<asp:Panel ID="pnFeedbackContent" runat="server">
					<h2>Write your comments in the boxes below.</h2><br/>
    <div class="row">
      <div class="col-25">
       <asp:Label ID="Label2" runat="server" Text="1. Organization,structure and presentation(style,clarity and readability)"></asp:Label>
      </div>
      <div class="col-75">
		 
       <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" class="form-control"  Width="99%" required ></asp:TextBox>
      </div>

    </div>
		
    <div class="row">
      <div class="col-25">
       	<asp:Label ID="Label3" runat="server" Text="2. A rationale for the study which includes a clear purpose statement
                            and research questions addressed in the paper and a brief review of related
                            literature including key citations"></asp:Label>
      </div>
      <div class="col-75">
       <asp:TextBox ID="TextBox2" class="form-control" TextMode="MultiLine"  runat="server" required ></asp:TextBox>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
       <asp:Label ID="Label4" runat="server" Text="3. Does it have an abstract that is approx. 250 words and also
                            includes 5-6 keywords that best describe content of the article?"></asp:Label>
      </div>
      <div class="col-75">
       <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"  CssClass="form-control" required ></asp:TextBox>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
       <asp:Label ID="Label5" runat="server" Text="4. Is the length of manuscript a maximum number
                            of 15 pages including references?"></asp:Label>
      </div>
      <div class="col-75">
       <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"  class="form-control" required ></asp:TextBox>
      </div>
    </div>
    
      <div class="row">
      <div class="col-25">
    <asp:Label ID="Label6" runat="server" Text="5. Is it formatted properly? Type manuscripts in Miscrosoft Word,
                            Times new Roman, double-spaced,with 1-inch margin on all four sides. Tables must be original,figures must be of high quality"></asp:Label>
      </div>
      <div class="col-75">
     <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"  class="form-control" required ></asp:TextBox>
      </div>
    </div>
    
      <div class="row">
      <div class="col-25">
 	<asp:Label ID="Label7" runat="server" Text="6. Does the citations and referencing follow the guidelines laid out in
                            the publication Manual of the American Psychological Association?"></asp:Label>
      </div>
      <div class="col-75">
    	<asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine"  class="form-control" required></asp:TextBox>
      </div>
    </div>
  


			
      <div class="col-75">
     <asp:Button ID="btnComment"  runat="server" class="btn btn-primary" Text="Save Comments" Height="47px" OnClick="btnComment_Click"  />
		<br /><br /><center>  <asp:Label ID="lblContent" runat="server" Text="Your Recommendation file has been downloaded. You Can attach it with your final decision" Font-Bold="true" ForeColor="#3b5992"></asp:Label></center>
      </div>
    </div>
  </asp:Panel>

	<asp:Panel ID="pnFeedbackGrammar" runat="server">
			<h2>Write your comments in the boxes below.</h2><br/><br />
	<label id="lblTitleCount" class="count" style="float:right"> 0 COUNT </label><br />
		<asp:TextBox ID="txtGrammar" TextMode="MultiLine" runat="server" onkeyup="counter()" Height="342px" required></asp:TextBox>
		<br />
		 <div class="col-75">
		<asp:Button ID="btnGrammar" runat="server" class="btn btn-primary" Height="47px" Text="Save Comment" OnClick="btnGrammar_Click" />
			 </div>
		<br /><br />
		<center><asp:Label ID="lblGrammer" runat="server" Text="Your Recommendation file has been downloaded. You Can attach it with your final decision. Click" Font-Bold="true" ForeColor="#3b5992"></asp:Label><asp:LinkButton ID="lbGhere"   runat="server"> here </asp:LinkButton><asp:Label ID="lblGrammer2" runat="server" Text=" to attach it with your final decision"></asp:Label></center>
	</asp:Panel>
			  
    </div>
    
  </div>
		
		<asp:Panel ID="Panel1" runat="server">

			<center><asp:Label ID="Label8" runat="server" Font-Bold="true" Font-Size="18px" ForeColor="#3b58992" Text="Associate Editor's Recommendations on overall Content of Manuscript"></asp:Label></center><br />
			<br />
			<asp:Label ID="lbl1" runat="server" Font-Bold="true" Text="1. Organization,structure and presentation(style,clarity and readability)"></asp:Label><br />
			<asp:Label ID="lbl2" runat="server" Text="Label"></asp:Label><br /><br />
			<asp:Label ID="lbl3" runat="server"  Font-Bold="true" Text="2. A rationale for the study which includes a clear purpose statement
                            and research questions addressed in the paper and a brief review of related
                            literature including key citations"></asp:Label><br />
			<asp:Label ID="lbl4" runat="server" Text="Label"></asp:Label><br /><br />
			<asp:Label ID="lbl5" runat="server"  Font-Bold="true" Text="3. Does it have an abstract that is approx. 250 words and also
                            includes 5-6 keywords that best describe content of the article?"></asp:Label><br />
			<asp:Label ID="lbl6" runat="server" Text="Label"></asp:Label><br /><br />
			<asp:Label ID="lbl7" runat="server"  Font-Bold="true" Text="4. Is the length of manuscript a maximum number
                            of 15 pages including references?"></asp:Label><br />
			<asp:Label ID="lbl8" runat="server" Text="Label"></asp:Label><br /><br />
			<asp:Label ID="lbl9" runat="server"  Font-Bold="true" Text="5. Is it formatted properly? Type manuscripts in Miscrosoft Word,
                            Times new Roman, double-spaced,with 1-inch margin on all four sides. Tables must be original,figures must be of high quality"></asp:Label><br />
			<asp:Label ID="lbl10" runat="server" Text="Label"></asp:Label><br /><br />
			<asp:Label ID="lbl11" runat="server"  Font-Bold="true" Text="6. Does the citations and referencing follow the guidelines laid out in
                            the publication Manual of the American Psychological Association?"></asp:Label><br />
			<asp:Label ID="lbl12" runat="server" Text="Label"></asp:Label><br /><br />
			 
			</asp:Panel>
        		  
			<asp:Panel ID="Panel2" runat="server">
				<asp:Label ID="Label1" runat="server" Text="Associate Editor's Recommendations on Grammar & spelling of Manuscript" Font-Bold="true" Font-Size="14px" ForeColor="#3b58992" ></asp:Label>
				<br/>
					<asp:Label ID="lblGrammar" runat="server" Text="Label"></asp:Label>
			</asp:Panel>
		
	<script>

        function counter() {
            var texterea = document.getElementById("txtGrammar");
			var words = texterea.value.split(' ').length;
			if (words <= 250) {
				document.getElementById("lblTitleCount").textContent = words + " COUNT";
			} else {
				document.getElementById("lblTitleCount").textContent = "WORD LIMIT EXCEEDED";
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
</footer></div>		

        <script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element');
			}
</script>

<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>--%>
       

    </form>
</body>
</html>