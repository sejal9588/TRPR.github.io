<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InviteForEIC.aspx.cs" Inherits="TRPR.UnAuthorised" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="StyleSheet.css" rel="stylesheet" />
	<style>
		body{
			background-image: url("imgs/login1.jpg");
			background-repeat: no-repeat;
			background-size: cover;
		}
		.red {
			color: red;
		}
		h2 {
			font-size: 40px;
			font-weight: 900;
			color: white;
			text-align: center;
		}

		.modal-content {
			background-color: #f9f9f9;
		}
		.head{
			background-color:#cccccc;
			height:30px;
			left:20px;
		}
		.tables{
			width:360px;
			height:332px;
			margin:auto;
			margin-top:20px;
			font-size:medium;
		}
		.rightcolumn {
			margin-left: 25%;
			margin-right: 10%;
			width: 50%;
			display: inline-block;
			margin-top: 2%;
		}

		.container {
			margin-top: 30px;
			margin-left: 5%;
			margin-right: %;
			width: 100%;
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
		/*input[type=text],  select {
	
    padding: 8px 5px;
	margin:5px 0 5px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
	
	    
}*/
		/*.btn{
			background-color: gray;
			border-radius: 4px;
			padding: 20px;
			text-align:center;
			cursor:pointer;

		}
		.btn:hover{
			background-color:lightgray;
		}*/

		.auto-style3 {
			width: 299px;
		}
		.auto-style4 {
			height: 51px;
			width: 50px;
		}
		
		.auto-style5 {
			width: 50px;
		}
	@media (min-width: 1025px) and (max-width: 1440px) {
			.rightcolumn {
				width: 60%;
				margin-left: 20%;
			}
		}

		@media (min-width: 769px) and (max-width: 1024px) {


			.rightcolumn {
				width: 55%;
				margin-left: 23%;
			}
		}


		@media (min-width: 426px) and (max-width: 768px) and (orientation: landscape) {

			.rightcolumn {
				width: 52%;
				margin-left: 23%;
			}
		}

		@media (min-width: 376px) and (max-width: 425px) {

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
		}

		.auto-style7 {
			width: 299px;
			height: 64px;
		}
		.auto-style8 {
			height: 64px;
			width: 50px;
		}

	</style>
</head>
<body>
    <form id="form1" runat="server">
     <h2>Invitation to Associate Editor</h2>
		<div class="rightcolumn">
			<div class="modal-content animate">
				<div class="container">

					<div class="input-container">
			<table style="width:100%;">
				
				
				<tr>
					<td class="auto-style5"><span class="red">
						<br />
						*</span>To:</td>
					<td class="auto-style3">
						<br />
						<asp:TextBox ID="txtAE" runat="server" ReadOnly="true" Width="80%"></asp:TextBox>
						
						<br />
						
					</td>
					
				</tr>
				
				<tr>
					<td class="auto-style4">Template:</td>
					<td >
						<asp:DropDownList ID="ddlTemplate" runat="server" Width="80%" OnSelectedIndexChanged="ddlTemplate_SelectedIndexChanged" AppendDataBoundItems="True" AutoPostBack="True">
							<asp:ListItem Value="0" Selected="True">Select Invitation Templates</asp:ListItem>
							<asp:ListItem Value="1">Invite AE1</asp:ListItem>
							<asp:ListItem Value="2">Invite AE2</asp:ListItem>
						</asp:DropDownList>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<br />
					</td>
				</tr>
				
				<tr>
					<td class="auto-style5"><span class="red">*</span>Body:</td>
					<td class="auto-style3">
						<asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" Columns="30" Rows="10" Width="80%" Height="85px"></asp:TextBox>
						<br />
						
						<br />
					</td>
					
				</tr>
					
				<tr>
					<td class="auto-style8">	</td>
					
					<td class="auto-style7">
						
						<asp:Button ID="btnSend" runat="server" Text="Send" class="btn btn-primary"  Width="80%" OnClick="btnSend_Click"  /></td>
				
				</tr>
						
				<tr>
					<td class="auto-style5">&nbsp;</td>
					
					<td class="auto-style3">
						
						<asp:Label ID="lblMessage" runat="server" Font-Bold="true" ForeColor="#3b5992"></asp:Label>
						<asp:LinkButton ID="lbGO" runat="server" OnClick="lbGO_Click">Click here to invite another AE</asp:LinkButton>
						
						</td>
			
				</tr>
						
			</table>

</div>
			<br />
						<asp:ObjectDataSource ID="odsddlAEAssign" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="TRPRLibrary.TRPRLibraryDataSetTableAdapters.odsAENameTableAdapter">
						</asp:ObjectDataSource>
			<br />
		</div>
				</div>
			</div>
        
    </form>
</body>
</html>
