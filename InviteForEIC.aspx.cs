using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TRPR
{
	public partial class UnAuthorised : System.Web.UI.Page
	{
		string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TRPR.mdf;Integrated Security=True;Connect Timeout=30";

		protected void Page_Load(object sender, EventArgs e)
		{
			lbGO.Visible = false;
			txtAE.Text = Session["FullName"].ToString();
			
			//txtTo.Text = Session["AEEmail"].ToString();
			//txtFrom.Text = Session["EICEmail"].ToString();
			//txtTo.Text = Session["AEEmail"].ToString();
		}
		protected void btnSend_Click(object sender, EventArgs e)
		{
			SqlConnection con2 = new SqlConnection(conStr);


			string strQuery2 = "Insert into AESendInvitation(AEName,Message,SendDate) " +
				"values(@AEName,@Message,@SendDate)";


			SqlCommand cmd2 = new SqlCommand(strQuery2);


			cmd2.Parameters.AddWithValue("@AEName", Session["AEName"]);
			cmd2.Parameters.AddWithValue("@Message", txtBody.Text);
			cmd2.Parameters.AddWithValue("@SendDate", DateTime.Today);

			cmd2.CommandType = CommandType.Text;

			cmd2.Connection = con2;
			con2.Open();
			cmd2.ExecuteNonQuery();
			lbGO.Visible = true;
			lblMessage.Text = "Your Invitation has been sent successfully.";

		}

		protected void ddlTemplate_SelectedIndexChanged(object sender, EventArgs e)
		{
			if(ddlTemplate.SelectedIndex == 1)
			{
				txtBody.Text = "Dear Associate Editor,  Would you like to review Manuscript having responsibility to provide feedback on content and overall organization of paper?  Please let us know about your response as soon as possible by an email With regards,Editor-in-Chief" ;
			}
			else if(ddlTemplate.SelectedIndex == 2)
			{
				
				txtBody.Text = "Dear Associate Editor,  Would you like to review Manuscript having responsibility to provide feedback on  overall grammar and spelling? Please let us know about your response as soon as by an email With regards, Editor-in-Chief";
			}
		}

		protected void lbGO_Click(object sender, EventArgs e)
		{
			Response.Redirect("SearchAE.aspx");
		}

		
	}
}