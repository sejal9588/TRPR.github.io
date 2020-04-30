<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AEAssign.aspx.cs" Inherits="TRPR.AEAssign" %>

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
			margin-left:10%;
			margin-right:10%;
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
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
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
			width: 100%;
		}

		

		table{
			font-size:5px;
		}
	}
	.auto-style10 {
		width: 186px;
		height: 23px;
	}
	.auto-style36 {
		height: 60px;
	}
	.auto-style42 {
		height: 67px;
	}
	.auto-style44 {
		height: 60px;
		width: 254px;
	}
	.auto-style48 {
		height: 67px;
		width: 254px;
	}
	.auto-style49 {
		width: 254px;
	}
	.auto-style50 {
		height: 65px;
		width: 254px;
	}
	.auto-style51 {
		height: 65px;
	}
	.auto-style52 {
		height: 58px;
		width: 254px;
	}
	.auto-style53 {
		height: 58px;
	}
	.auto-style54 {
		height: 88px;
		width: 254px;
	}
	.auto-style55 {
		height: 88px;
	}
</style>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
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
		<asp:Panel ID="pNav" runat="server">
			<div class="secTop">
				<ul class="nav nav-tabs">
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown"  href="#">View File <span class="caret"></span></a>
						<ul class="dropdown-menu">
						
						<li><asp:LinkButton ID="Manuscript" runat="server" OnClick="Manuscript_Click">Manuscript File</asp:LinkButton></li>

					
							<li><asp:LinkButton ID="Cover" runat="server" OnClick="Cover_Click">Cover Letter</asp:LinkButton></li>
						</ul>
						
					</li>
					<li><a <%--data-toggle="tab"--%>href="ManuInfo.aspx">Manuscript Information</a></li>
				<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown"  href="#">Manage <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li>
								<asp:LinkButton ID="lbAEList" runat="server" OnClick="lbAEList_Click">Invite AE</asp:LinkButton></li>
							<li>
								<asp:LinkButton ID="lbAssignAE" runat="server" OnClick="lbAssignAE_Click">Assign AE</asp:LinkButton></li>
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
		<asp:Panel ID="pAEAssign" runat="server" Width="100%">
		
					<div class="card">
					<center>	<h3 >Assign Manuscript to Associate Editor </h3></center>
						<asp:ObjectDataSource ID="odsAE" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="TRPRLibrary.TRPRLibraryDataSetTableAdapters.AssignAEDetailTableAdapter">
							<SelectParameters>
								<asp:ControlParameter ControlID="ddlAssignAE1" Name="Param1" PropertyName="SelectedValue" Type="String" />
							</SelectParameters>
						</asp:ObjectDataSource>
						<asp:ObjectDataSource ID="odsddlAEAssign" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="TRPRLibrary.TRPRLibraryDataSetTableAdapters.odsAENameTableAdapter">
						</asp:ObjectDataSource>
						<br />


						<asp:Panel ID="Panel2" runat="server">
							<br />
							<table style="width:100%; margin-left:27%; font-size:16px;">
								<tr>
									<td class="auto-style48">
										<asp:Label ID="lblAE3" runat="server" Text="Choose Associate Editor :"></asp:Label>
									</td>
									<td class="auto-style42">
										<asp:DropDownList ID="ddlAssignAE1" runat="server" AppendDataBoundItems="True" AutoPostBack="True" CssClass="auto-style10" DataSourceID="odsddlAEAssign" DataTextField="FullName" DataValueField="FullName" Height="40px" style="border-radius:4px;" Width="250px" required>
											<asp:ListItem Selected="True" Value="0">Select AE</asp:ListItem>
										</asp:DropDownList>
										&nbsp;&nbsp;&nbsp;&nbsp;
										<asp:LinkButton ID="lblDet" runat="server" data-target="#myModal" data-toggle="modal" data-toggle1="tooltip" OnClick="lbViewAEDEtail_Click" title="Click to see AE detail" Font-Size="16px">?</asp:LinkButton>
									</td>
								</tr>
								<tr>
									<td class="auto-style50">
										<asp:Label ID="lblAE1Responsility3" runat="server" Text="Choose Responsibility:"></asp:Label>
									</td>
									<td class="auto-style51">
										<asp:DropDownList ID="ddlResponsibility" runat="server" AppendDataBoundItems="True" CssClass="auto-style10" Height="40px" style="border-radius:4px;" Width="250px">
											<asp:ListItem Selected="True" Value="0">Select Responsiblity</asp:ListItem>
											<asp:ListItem Value="1">Feedback for overall Content.</asp:ListItem>
											<asp:ListItem Value="2">Feedback for Grammar &amp; Spelling.</asp:ListItem>
										</asp:DropDownList>
									</td>
								</tr>
								<tr>
									<td class="auto-style44">
										<asp:Label ID="lblManuTitle" runat="server" Text="Manuscript Title:" ></asp:Label>
										

									</td>
									<td class="auto-style36">
										<asp:TextBox ID="txtManTitle" runat="server" Height="38px" Width="250px" required></asp:TextBox>
									</td>
								</tr>
								<tr>
									<td class="auto-style44">
										<asp:Label ID="lblDueDate" runat="server" Text="Due Date:"></asp:Label>
									</td>
									<td class="auto-style36">
										<asp:TextBox ID="txtDueDate" runat="server" Height="38px" TextMode="Date" Width="250px" required OnTextChanged="txtDueDate_TextChanged"></asp:TextBox>
									</td>
								</tr>
								<tr>
									<td class="auto-style52">
										<asp:Label ID="lblFile" runat="server" Text="Upload File:"></asp:Label>
									</td>
									<td class="auto-style53">
										<asp:FileUpload ID="Filef" runat="server" Width="251px" required/>
										
									</td>
								</tr>
								<tr>
									<td class="auto-style54">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</td>
									<td class="auto-style55">
										&nbsp;
										<asp:Button ID="btnAssignAE5" runat="server" class="btn btn-primary" Text="Assign" Width="77px" OnClick="btnAssignAE5_Click" />
										&nbsp;&nbsp;&nbsp;
										<asp:Button ID="btnUnassignAE3" runat="server" class="btn btn-danger" Text="Unassign" Width="98px" />
									</td>
								</tr>
								<tr>
									<td class="auto-style49">
										<br />
									</td>
									<td>
										<asp:Label ID="lblMessage" runat="server" ForeColor="#3b5992"></asp:Label>
									</td>
								</tr>
							</table>
						</asp:Panel>


						<%--<asp:ObjectDataSource ID="odsAE2Assign" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="TRPRLibrary.TRPRLibraryDataSetTableAdapters.AssignAEDetailTableAdapter">
							<SelectParameters>
								<asp:ControlParameter ControlID="ddlAssignAE2" Name="Param1" PropertyName="SelectedValue" Type="String" />
							</SelectParameters>
						</asp:ObjectDataSource>--%>
					
						<br />
					<%--	//////////////////////--%>
							<!-- The Modal -->
						<div class="modal fade" id="myModal">
							<div class="modal-dialog">
								<div class="modal-content">
									<!-- Modal Header -->
									<div class="modal-header">
										<h2 class="modal-title">Associate Editor Details</h2>
										<%--<button type="button" class="close" data-dismiss="modal">×</button>--%>
									</div>

									<!-- Modal body -->

									<div class="modal-body">
			
										<asp:Panel ID="Panel3" runat="server">

											<div>
												
											<asp:DetailsView ID="dvAEDetail" runat="server" AutoGenerateRows="False" GridLines="None" DataSourceID="odsAE" Height="308px" Width="968px" DataKeyNames="UserName">
												<Fields>
													
													<asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
													<asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
													<asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
													<asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
													<asp:BoundField DataField="Province" HeaderText="Province" SortExpression="Province" />
													<asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
													<asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
												    <asp:BoundField DataField="UpdatedOn" HeaderText="UpdatedOn" SortExpression="UpdatedOn" />
                                                   
													<asp:BoundField DataField="Institutions" HeaderText="Institutions" SortExpression="Institutions" />
													<asp:BoundField DataField="Expertise" HeaderText="Expertise" SortExpression="Expertise" />
												</Fields>
				</asp:DetailsView>






											</div>
										</asp:Panel>
									</div>

									<!-- Modal footer -->
									<div class="modal-footer">
										<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
									</div>

								</div>
							</div>
						</div>


						<asp:LinkButton ID="lblAssign0" runat="server" OnClick="lblAssign0_Click">Assign to different AE</asp:LinkButton>


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
									<asp:LinkButton ID="LinkButton8" runat="server"   OnClick="OpenFile" Text='<%# Eval("Name") %>'></asp:LinkButton>
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


			<%--	//////////////////////--%>
							<!-- The Modal -->
						<div class="modal fade" id="myModal2">
							<div class="modal-dialog">
								<div class="modal-content">
									<!-- Modal Header -->
									<div class="modal-header">
										<h2 class="modal-title">Associate Editor Details
										<%--<button type="button" class="close" data-dismiss="modal">×</button>--%>
									</div>

									<!-- Modal body -->

									<div class="modal-body">
			
									<%--	<asp:Panel ID="Panel1" runat="server">

											<div>
												
											<asp:DetailsView ID="dvAssignAE2" runat="server" AutoGenerateRows="False" GridLines="None" DataSourceID="odsAE2Assign" Height="308px" Width="968px" DataKeyNames="UserName">
												<Fields>
												
													<asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
													<asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
													<asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
													<asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
													<asp:BoundField DataField="Province" HeaderText="Province" SortExpression="Province" />
													<asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
													<asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
												    <asp:BoundField DataField="UpdatedOn" HeaderText="UpdatedOn" SortExpression="UpdatedOn" />
                                                    
													<asp:BoundField DataField="Institutions" HeaderText="Institutions" SortExpression="Institutions" />
													<asp:BoundField DataField="Expertise" HeaderText="Expertise" SortExpression="Expertise" />
												</Fields>
				</asp:DetailsView>


											</div>
										</asp:Panel>--%>
									</div>

									<!-- Modal footer -->
									<div class="modal-footer">
										<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
									</div>

								</div>
							</div>
						</div>


				</div>
			</asp:Panel>
<script>
$(document).ready(function(){
  $('[data-toggle1="tooltip"]').tooltip();   
});
</script>

    	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TRPRConnectionString %>" SelectCommand="SELECT [UserName] FROM [Person] WHERE ([FullName] = @FullName)">
			<SelectParameters>
				<asp:ControlParameter ControlID="ddlAssignAE1" Name="FullName" PropertyName="SelectedValue" Type="String" />
			</SelectParameters>
		</asp:SqlDataSource>

    	<br />


    </form>
</body>
</html>
