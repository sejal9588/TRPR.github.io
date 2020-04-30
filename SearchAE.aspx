<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchAE.aspx.cs" Inherits="TRPR.SearchAE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<style>
		.red {
			color: red;
		}
	.footer{
	padding:20px;
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
  .tabl {
	  width:100%;
	 

	 
  }
 
  .auto-style2 {
			height: 52px;
		}
		body {
			font-family: Arial;
			/*padding: 10px;*/
			background: #f1f1f1;
		}
		.navbar {
			background-color: #3b5998;
		}
		h3 {
			border-radius: 4px;
			padding: 10px;
			background-color: #3b5998;
			
			width: 100%;
			color: white;
		}
			.card {
			background-color: white;
			padding: 1px 10px 10px 10px;
			margin-top: 15px;
			margin-left:10%;
			margin-right:10%;
		}
	
		
	</style><style>
	



@media (min-width: 1025px) and (max-width: 1440px) {
	.card {
		
			margin-left:5%;
			margin-right:5%;
		}
	
}

@media (min-width: 769px) and (max-width: 1024px) {
	.card {
		
			margin-left:5%;
			margin-right:5%;
		}
	
}


@media (min-width: 426px) and (max-width: 768px) and (orientation: landscape) {

	.tabl{
		font-size:18px;
	}
	
}

@media (min-width: 376px) and (max-width: 425px) {
	.tabl{
		font-size:15px;
	}
	 
}


		@media (min-width: 320px) and (max-width: 375px) {
			.tabl {
				font-size: 10px;
				
			}
			
		
		}	
	
</style>
</head>
<body>
    <form id="form1" runat="server">
       	<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-form navbar-left">
			
    <%-- <a href="#"><button type="button"  class="btn btn-basic active" data-toggle="modal" data-target="#myModal">Add Associate Editor</button>  </a>--%>
 		

				</div>
				<div class="navbar-form navbar-right">
					<div class="input-group">

						<asp:LinkButton ID="lbDashboard" runat="server" ForeColor="White" Font-Bold="true"  OnClick="lbDashboard_Click">Back to Dashboard</asp:LinkButton>
						
					</div>
				</div>
			</div>
		</nav>
		<div class="container">
 
  <!-- Trigger the modal with a button -->
  

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title" style="color:white; font-weight:bolder; background-color:#3b5998;">Associate Editor</h3>
        </div>
        <div class="modal-body">
         <p><span class="red">*</span>AE Name</p>
        	<asp:TextBox ID="txtFullName" runat="server" class="form-control"  placeholder="Name"></asp:TextBox>
        </div>
		   <div class="modal-body">
			  <p> <span class="red">*</span>Institution</p>
					<asp:DropDownList ID="ddlInstitution" runat="server" Forcolor="#f1f1f1" Width="100%" class="form-control" AppendDataBoundItems="True" DataSourceID="odsddlInstitution" DataTextField="Institutions" DataValueField="Id"  >
							<asp:ListItem  Value="0">Select AE Institution</asp:ListItem>
						</asp:DropDownList>
</div>
		   <div class="modal-body">
						<p><span class="red">*</span>Area Of Expertise:</p>
						<asp:DropDownList ID="ddlAreaExpertise" runat="server" Forcolor="#f1f1f1"  class="form-control"  Width="100%" DataTextField="Expertise" AppendDataBoundItems="True" DataSourceID="odsddlExpertise" DataValueField="ID" >
							<asp:ListItem Value="0">Select Area Of Expertise</asp:ListItem>
							
				</asp:DropDownList>

			   </div>


		   <div class="modal-body">
         <p> <span class="red">*</span> Email</p>
    
			   <asp:TextBox ID="txtEmail" runat="server" class="form-control"  placeholder="Email"></asp:TextBox>
        </div>
		   <div class="modal-body">
		    <p> <span class="red">*</span> Phone</p>
			   <asp:TextBox ID="txtPhone" runat="server" class="form-control"  placeholder="Phone"></asp:TextBox>
    
        </div>
		   <div class="modal-body">
			    <p> <span class="red">*</span> Country</p>
			   <div class="autocomplete">
				   <asp:TextBox ID="txtCountry" runat="server" class="form-control"  placeholder="Country"></asp:TextBox>
							
						</div>
 </div>
		  <div class="modal-body">
			    <p> <span class="red">*</span> Province</p>
      
			  <asp:TextBox ID="txtProvince" runat="server" class="form-control"  placeholder="Province"></asp:TextBox>
		 </div>
		  <div class="modal-body">
			    <p> <span class="red">*</span> City</p>
			  <asp:TextBox ID="txtCity" runat="server" class="form-control"  placeholder="City"></asp:TextBox>
     
		 </div>
		  <div class="modal-body">
			    <p> <span class="red">*</span> Postal Code</p>
			  <asp:TextBox ID="txtPostalCode" runat="server" class="form-control"  placeholder="Postal Code"></asp:TextBox>

		 </div>
		 
		  <div class="modal-footer">
			<asp:Button ID="btnAddAE" runat="server" class="btn btn-primary" Text="Add AE" OnClick="btnAddAE_Click" />
			&nbsp;&nbsp;&nbsp;
			<asp:Button ID="btnCancelAE" runat="server"  class="btn btn-danger" data-dismiss="modal" Text="Cancel" />
          
        </div>
      </div>
      
    </div>
  </div>
  


	<div class="card">
					<h3>Select Associate Editor </h3>
				<br />
		<div class="jumbotron" style="border-radius:4px;">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;
				
		<table class="tabl">
				<tr >
				
					<td class="auto-style2" > <asp:Label ID="Label2" runat="server" Text="Search by AE name: "></asp:Label></td>
					<td class="auto-style2" > <asp:DropDownList ID="ddlAEName" runat="server" class="form-control" AppendDataBoundItems="True" DataSourceID="odsAEName" DataTextField="FullName" DataValueField="FullName"><asp:ListItem Value="0" Selected="True">Select AE</asp:ListItem>
			</asp:DropDownList></td>
					<td class="auto-style2" ><asp:Button ID="btnSearchName" runat="server" Text="Search"  class="btn btn-primary" style="margin-left:10%;" Width="95px" OnClick="btnSearchName_Click" /></td>
				</tr>
				
			<tr >
				
					<td class="auto-style2" > <asp:Label ID="Label1" runat="server" Text="Search by AE Institution: "></asp:Label></td>
					<td class="auto-style2" > <asp:DropDownList ID="ddlAEInstitution" runat="server" class="form-control"  DataSourceID="odsddlInstitution" DataTextField="Institutions" DataValueField="Id" AppendDataBoundItems="True"><asp:ListItem Value="0" Selected="True">Select Institution</asp:ListItem>
			</asp:DropDownList>

						
					</td>
					<td class="auto-style2"><asp:Button ID="btnSearchInstitution" runat="server" Text="Search"  class="btn btn-primary" style="margin-left:10%;"  Width="95px" OnClick="btnSearchInstitution_Click" /></td>
				</tr>
		
			<tr >
					
					<td  class="auto-style2"> <asp:Label ID="Label3" runat="server" Text="Search by AE Expertise : "></asp:Label></td>
					<td  class="auto-style2" > <asp:DropDownList ID="ddlExpertise" runat="server" class="form-control"  AppendDataBoundItems="True" DataSourceID="odsddlExpertise" DataTextField="Expertise" DataValueField="Id"   ><asp:ListItem Value="0" >Select Area of Expertise</asp:ListItem>
			</asp:DropDownList></td>
					<td  class="auto-style2"><asp:Button ID="btnSearchCountry" runat="server" Text="Search" style="margin-left:10%;" class="btn btn-primary"  Width="95px" OnClick="btnSearchCountry_Click" /></td>
				</tr>
		
			</table>
	
	</div>


		<br />
		<asp:GridView ID="gvAESearch" runat="server" CssClass="table table-hover table-responsive" Gridlines="Horizontal" AutoGenerateColumns="False" Width="100%" Height="108px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" DataKeyNames="UserName" DataSourceID="odsAESearch" OnSelectedIndexChanged="gvAESearch_SelectedIndexChanged">
			<Columns>
				<asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
				<asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
				<asp:BoundField DataField="Institutions" HeaderText="Institutions" SortExpression="Institutions" />
				<asp:BoundField DataField="Expertise" HeaderText="Expertise" SortExpression="Expertise" />
				<asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
				<asp:TemplateField ShowHeader="False">
					<ItemTemplate>
						<asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" OnClick="LinkButton1_Click"  Text="Invite AE"></asp:LinkButton>
					</ItemTemplate>
				</asp:TemplateField>
			</Columns>
			<EmptyDataTemplate>
				No Record Found!!
			</EmptyDataTemplate>
			<FooterStyle BackColor="#CCCC99" ForeColor="Black" />
			<HeaderStyle BackColor="#3b5998" Font-Bold="True" ForeColor="White" />
			<PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
			<RowStyle CssClass="cursor-pointer" />
			<SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
			<SortedAscendingCellStyle BackColor="#F7F7F7" />
			<SortedAscendingHeaderStyle BackColor="#4B4B4B" />
			<SortedDescendingCellStyle BackColor="#E5E5E5" />
			<SortedDescendingHeaderStyle BackColor="#242121" />
		</asp:GridView>
		<asp:GridView ID="gvAllAE" runat="server" CssClass="table table-hover table-responsive" Gridlines="Horizontal" AutoGenerateColumns="False" Width="100%" Height="108px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" DataKeyNames="UserName" DataSourceID="odsAllAE" OnSelectedIndexChanged="gvAllAE_SelectedIndexChanged">
			<Columns>
				<asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
				<asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
				<asp:BoundField DataField="Institutions" HeaderText="Institutions" SortExpression="Institutions" />
				<asp:BoundField DataField="Expertise" HeaderText="Expertise" SortExpression="Expertise" />
				<asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
				<asp:TemplateField ShowHeader="False">
					<ItemTemplate>
						<asp:LinkButton ID="lbInviteAll" runat="server" CausesValidation="False" CommandName="Select" OnClick="lbInviteAll_Click" Text="Invite AE"></asp:LinkButton>
					</ItemTemplate>
				</asp:TemplateField>
			</Columns>
			<EmptyDataTemplate>
				No Record Found!!
			</EmptyDataTemplate>
			<FooterStyle BackColor="#CCCC99" ForeColor="Black" />
			<HeaderStyle BackColor="#3b5998" Font-Bold="True" ForeColor="White" />
			<PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
			<RowStyle CssClass="cursor-pointer" />
			<SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
			<SortedAscendingCellStyle BackColor="#F7F7F7" />
			<SortedAscendingHeaderStyle BackColor="#4B4B4B" />
			<SortedDescendingCellStyle BackColor="#E5E5E5" />
			<SortedDescendingHeaderStyle BackColor="#242121" />
		</asp:GridView>


					<br />
					<br />
					<asp:ObjectDataSource ID="odsddlAESearch" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="TRPRLibrary.TRPRLibraryDataSetTableAdapters.ddlAESearchTableAdapter"></asp:ObjectDataSource>
					<asp:ObjectDataSource ID="odsddlInstitution" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="TRPRLibrary.TRPRLibraryDataSetTableAdapters.InstitutionTableAdapter"></asp:ObjectDataSource>
					<asp:ObjectDataSource ID="odsddlExpertise" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="TRPRLibrary.TRPRLibraryDataSetTableAdapters.AreaOfExpertiseTableAdapter"></asp:ObjectDataSource>
					<asp:ObjectDataSource ID="odsAllAE" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="TRPRLibrary.TRPRLibraryDataSetTableAdapters.AllAETableAdapter">
					</asp:ObjectDataSource>
					<asp:ObjectDataSource ID="odsAESearch" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="TRPRLibrary.TRPRLibraryDataSetTableAdapters.AESearchTableAdapter">
						<SelectParameters>
							<asp:ControlParameter ControlID="ddlExpertise" Name="Param2" PropertyName="SelectedValue" Type="Int32" />
							<asp:ControlParameter ControlID="ddlAEInstitution" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
							<asp:ControlParameter ControlID="ddlAEName" Name="Param3" PropertyName="SelectedValue" Type="String" />
						</SelectParameters>
					</asp:ObjectDataSource>
					<asp:ObjectDataSource ID="odsAEName" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="TRPRLibrary.TRPRLibraryDataSetTableAdapters.odsAENameTableAdapter">
					</asp:ObjectDataSource>
		<br />
		<br />
</div></div>

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
</footer></div>		--%>
		
        <script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element');
			}
</script>

<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>


    </form>
</body>
</html>
