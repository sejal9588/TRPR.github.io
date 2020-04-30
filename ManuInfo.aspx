<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManuInfo.aspx.cs" Inherits="TRPR.ManuInfo" %>

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
	
<style>
body {
  margin: 0;
  min-width: 250px;
}

/* Include the padding and border in an element's total width and height */
* {
  box-sizing: border-box;
}

/* Remove margins and padding from the list */
dl {
  margin: 0;
  padding: 0;
}

/* Style the list items */
dl dt {
  cursor: pointer;
  position: relative;
  padding: 12px 8px 12px 40px;
  list-style-type: none;
  background: #eee;
  font-size: 18px;
  transition: 0.2s;
  
  /* make the list items unselectable */
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Set all odd list items to a different color (zebra-stripes) */
dl dt:nth-child(odd) {
  background: #f9f9f9;
}

/* Darker background-color on hover */
dl dt:hover {
  background: #ddd;
}

/* When clicked on, add a background color and strike out text */
dl dt.checked {
  background: #888;
  color: #fff;
  text-decoration: line-through;
}

/* Add a "checked" mark when clicked on */
dl dt.checked::before {
  content: '';
  position: absolute;
  border-color: #fff;
  border-style: solid;
  border-width: 0 2px 2px 0;
  top: 10px;
  left: 16px;
  transform: rotate(45deg);
  height: 15px;
  width: 7px;
}

/* Style the close button */
.closed {
  position: absolute;
  right: 0;
  top: 0;
  padding: 12px 16px 12px 16px;
}
#myInput{
color:black;
}
.closed:hover {
  background-color: white;
  color: black;
}

/* Style the header */
.header {
  background-color: #3b5982;
  padding: 30px 40px;
  color: white;
  text-align: center;
}

/* Clear floats after the header */
.header:after {
  content: "";
  display: table;
  clear: both;
}

/* Style the input */
input {
  margin: 0;
  border: none;
  border-radius: 0;
  width: 75%;
  padding: 10px;
  float: left;
  font-size: 16px;
}

/* Style the "Add" button */
.addBtn {
  padding: 10px;
  width: 25%;
  background: #d9d9d9;
  color: #555;
  float: left;
  text-align: center;
  font-size: 16px;
  cursor: pointer;
  transition: 0.3s;
  border-radius: 0;
}


.addBtn:hover {
  background-color: #bbb;
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

						<asp:LinkButton ID="lbDashboard" runat="server" ForeColor="White" Font-Bold="true"  OnClick="lbDashboard_Click">Back to Dashboard</asp:LinkButton>
						
					</div>
				</div>
			</div>
		</nav>

		<br />
		<br />
		<asp:Panel ID="pNav" runat="server">
			<div class="secTop">
				<ul class="nav nav-tabs">
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown"  href="#">View File <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<%--<li><a href="#" onclick="Manuscript_Click">Manuscript File</a></li>--%>
						<li><asp:LinkButton ID="LinkButton4" runat="server" OnClick="Manuscript_Click">Manuscript File</asp:LinkButton></li>

						<%--	<li><a href="#">Cover Letter</a></li>--%>
							<li><asp:LinkButton ID="LinkButton5" runat="server" OnClick="Cover_Click">Cover Letter</asp:LinkButton></li>
						</ul>
						
					</li>
					<li><a <%--data-toggle="tab"--%>href="ManuInfo.aspx">Manuscript Information</a></li>
				<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown"  href="#">Manage <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li>
								<asp:LinkButton ID="lbAEList" runat="server" OnClick="lbAEList_Click">Invite AE</asp:LinkButton></li>
							<li><asp:LinkButton ID="lbAssignAE" runat="server" OnClick="lbAssignAE_Click">Assign AE</asp:LinkButton></li>
								<li><asp:LinkButton ID="lbFinalDecision" runat="server" OnClick="lbFinalDecision_Click">Final Decision</asp:LinkButton></li>
							
							<li>
								<asp:LinkButton ID="lbAERecom" runat="server" OnClick="lbAERecom_Click">Comments</asp:LinkButton></li>
							
						</ul>
					<li><a  href="trpr.pdf">Instructions</a></li>
					<li ><a href="Email.aspx">Send Email</a></li>
				</ul>
	</div>
		</asp:Panel>
		<br />
		<br />
				<asp:Panel ID="Panel5" runat="server">
			<div class="card">
			 <h3>Manuscript Information</h3>
				&nbsp;&nbsp;&nbsp; &nbsp;<center><asp:Label ID="lblBinded" runat="server"  Font-bold="true" Font-size="22px" Text="" BackColor="#f1f1f1" ForeColor="#3b5992"></asp:Label></center>
				<asp:DetailsView ID="dvManu" style="margin-left:5%; color:gray" GridLines="None" BorderStyle="None"  runat="server" AutoGenerateRows="False"  Font-Size="16px"   DataKeyNames="Id" DataSourceID="sqlSelectManu" Height="500px" Width="90%">
					<Fields>
						<asp:BoundField DataField="Id" HeaderText="Id: " InsertVisible="False" ReadOnly="True" SortExpression="Id" >
						<HeaderStyle  />
						</asp:BoundField>
						<asp:BoundField DataField="ManuType" HeaderText="ManuType: " SortExpression="ManuType" >
						<HeaderStyle  />
						</asp:BoundField>
						<asp:BoundField DataField="ManuTitle" HeaderText="ManuTitle: " SortExpression="ManuTitle" >
						<HeaderStyle  />
						</asp:BoundField>
						<asp:BoundField DataField="ManuAbstract" HeaderText="ManuAbstract: " SortExpression="ManuAbstract" >
						<HeaderStyle  />
						</asp:BoundField>
						
						<asp:BoundField DataField="UploadOn" HeaderText="UploadOn: " SortExpression="UploadOn" >
						<HeaderStyle />
						</asp:BoundField>
						<asp:BoundField DataField="UploadBy" HeaderText="UploadBy: " SortExpression="UploadBy" >
						<HeaderStyle  />
						</asp:BoundField>
						<asp:BoundField DataField="Name" Visible="true" HeaderText="Cover Letter: " SortExpression="Name" >
						<HeaderStyle />
						</asp:BoundField>
						<asp:BoundField DataField="NameF" Visible="true" HeaderText="Manuscript File: " SortExpression="NameF" >
						<HeaderStyle />
						</asp:BoundField>
						<asp:BoundField DataField="ConflictOfInterest" HeaderText="ConflictOfInterest: " SortExpression="ConflictOfInterest" NullDisplayText="No Conflict Of Interest" >
						<HeaderStyle  />
						</asp:BoundField>
						<asp:BoundField DataField="Keyword" HeaderText="Keyword: " ReadOnly="True" SortExpression="Keyword" >
						<HeaderStyle  />
						</asp:BoundField>
						<asp:TemplateField HeaderText="Cover Page: ">
								<ItemTemplate>
									<asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("Name") %>' OnClick="OpenCover" CommandArgument='<%# Eval("Name") %>'></asp:LinkButton>
										&nbsp;&nbsp;&nbsp; <label class="btn btn-info">?</label>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="Manuscript File: ">
								<ItemTemplate>
									<asp:LinkButton ID="LinkButton2" runat="server"  Text='<%# Eval("NameF") %>' OnClick="OpenFile" CommandArgument='<%# Eval("NameF") %>'></asp:LinkButton>
										&nbsp;&nbsp;&nbsp; <lablel class="btn btn-info">?</lablel>
								</ItemTemplate>
							</asp:TemplateField>

					</Fields>
				</asp:DetailsView>
				<br />
				<br />
				<br />
				<asp:SqlDataSource ID="sqlSelectManu" runat="server" ConnectionString="<%$ ConnectionStrings:TRPRConnectionString %>" SelectCommand="ShowDocForEICinDetailView" SelectCommandType="StoredProcedure">
					<SelectParameters>
						<asp:SessionParameter Name="ID" SessionField="maId" Type="Int32" />
					</SelectParameters>
				</asp:SqlDataSource>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />

				


		



				</div>
		</asp:Panel>





		<asp:Panel ID="Panel1" runat="server">
			<div class="card">
	<div id="myDIV" class="header">
  <h2 style="margin:5px; color:white; font-size:19px;">My To Do List</h2>
  <input type="text" id="myInput" placeholder="Write your Note here...">
  <span onclick="newElement()" class="addBtn">Add</span>
</div>

<dl id="myUL">
  <dt>This Manuscript needs to be Assign.</dt>
  <dt class="checked">See Submission</dt>

 
</dl>
				<br />
				<br />

				</div>

		</asp:Panel>






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
									<asp:LinkButton ID="LinkButton8" runat="server"   OnClick="OpenFileCom" Text='<%# Eval("Name") %>'></asp:LinkButton>
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
				<br />
				<br />
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





    			<asp:Label ID="lblFileID" runat="server"></asp:Label>





    			<br />
				<br />
				<asp:SqlDataSource ID="sqlAERecom" runat="server" ConnectionString="<%$ ConnectionStrings:TRPRConnectionString %>" SelectCommand="SELECT Comment.Id, Comment.UpdatedOn, Comment.UpdatedBy, Comment.CommentToAuthor, Comment.CommentToEditor, Comment.FinalDecision, Comment.Name, Comment.DocumentContent, Comment.Extn, Comment.FilePath, Comment.FileID, Submission.FileID AS Expr1, Submission.ManuID FROM Submission INNER JOIN Comment ON Submission.FileID = Comment.FileID  WHERE Comment.FileID = @FileID">
					<SelectParameters>
						<asp:ControlParameter ControlID="lblFileID" Name="FileID" PropertyName="Text" />
					</SelectParameters>
				</asp:SqlDataSource>
				




    </div>
 
		</asp:Panel>






		<script>
$(document).ready(function(){

  $('.btn-primary').tooltip({title: "Click on File name to download!", trigger: "hover", placement: "right"}); 

});
</script>
		<script>
// Create a "close" button and append it to each list item
var myNodelist = document.getElementsByTagName("DT");
var i;
for (i = 0; i < myNodelist.length; i++) {
  var span = document.createElement("SPAN");
  var txt = document.createTextNode("\u00D7");
  span.className = "closed";
  span.appendChild(txt);
  myNodelist[i].appendChild(span);
}

// Click on a close button to hide the current list item
var close = document.getElementsByClassName("closed");
var i;
for (i = 0; i < close.length; i++) {
  close[i].onclick = function() {
    var div = this.parentElement;
    div.style.display = "none";
  }
}

// Add a "checked" symbol when clicking on a list item
var list = document.querySelector('dl');
list.addEventListener('click', function(ev) {
  if (ev.target.tagName === 'DT') {
    ev.target.classList.toggle('checked');
  }
}, false);

// Create a new list item when clicking on the "Add" button
function newElement() {
  var li = document.createElement("dt");
  var inputValue = document.getElementById("myInput").value;
  var t = document.createTextNode(inputValue);
  li.appendChild(t);
  if (inputValue === '') {
    alert("You must write something!");
  } else {
    document.getElementById("myUL").appendChild(li);
  }
  document.getElementById("myInput").value = "";

  var span = document.createElement("SPAN");
  var txt = document.createTextNode("\u00D7");
  span.className = "closed";
  span.appendChild(txt);
  li.appendChild(span);

  for (i = 0; i < close.length; i++) {
    close[i].onclick = function() {
      var div = this.parentElement;
      div.style.display = "none";
    }
  }
}
</script>
    </form>
</body>
</html>
