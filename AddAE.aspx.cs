using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TRPR
{
	public partial class AddAE : System.Web.UI.Page
	{
		string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TRPR.mdf;Integrated Security=True;Connect Timeout=30";
		private static string user;
		protected void Page_Load(object sender, EventArgs e)
		{

			TextBox1.Visible = false;
			lblEICName.Text = Session["Data"].ToString();
			lblConfirmation.Text = "";
			lblPersonDetail.Visible = false;
			dvpersonDetail.Visible = false;
			gvMessage.Visible = true;
			dvMessage.Visible = false;
			txtReply.Visible = false;
			btnSend.Visible = false;

			lblwords.Visible = false;
			btnCancel.Visible = false;
			btnAssignRole.Visible = false;
			gvMessage.Columns[0].Visible = false;


		}


		protected void lbLogout_Click(object sender, EventArgs e)
		{
			var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
			authenticationManager.SignOut();
			Response.Redirect("Index.aspx");

		}


		protected void gvMessage_RowCommand(object sender, GridViewCommandEventArgs e)
		{

			gvMessage.Columns[0].Visible = true;
			btnAssignRole.Visible = true;
			dvpersonDetail.Visible = true;
			gvMessage.Visible = false;

			lblwords.Visible = false;

			dvMessage.Visible = true;




			if (e.CommandName == "View")
			{
				GridViewRow gvRow = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
				lblPersonDetail.Text = gvRow.Cells[1].Text;
			}
			else
			{


				btnAssignRole.Visible = false;
				dvpersonDetail.Visible = false;
				gvMessage.Visible = true;

				lblwords.Visible = false;

				dvMessage.Visible = false;

				gvMessage.Columns[0].Visible = false;
			}


		}


		protected void btnAssignRole_Click(object sender, EventArgs e)
		{

			SqlConnection con = new SqlConnection(conStr);


			string strQuery = "UPDATE Person SET RoleID = @RoleID WHERE UserName = @UserName";

			SqlCommand cmd4 = new SqlCommand(strQuery);

			cmd4.Parameters.AddWithValue("@RoleID", 1);
			cmd4.Parameters.AddWithValue("@UserName", lblPersonDetail.Text);

			cmd4.CommandType = CommandType.Text;

			cmd4.Connection = con;
			con.Open();
			cmd4.ExecuteNonQuery();
			btnCancel.Visible = true;
			txtReply.Visible = true;
			btnSend.Visible = true;
			dvpersonDetail.Visible = true;
			gvMessage.Visible = false;
			dvMessage.Visible = true;
			lblwords.Visible = true;
			btnAssignRole.Visible = false;

		}

		protected void btnSend_Click(object sender, EventArgs e)
		{
			try
			{
				TextBox1.Text = dvpersonDetail.Rows[1].Cells[1].Text;
				MailMessage mm = new MailMessage("techcreate400@gmail.com", TextBox1.Text);

				mm.Body = txtReply.Text;

				mm.IsBodyHtml = false;
				SmtpClient smtp = new SmtpClient();
				smtp.Host = "smtp.gmail.com";
				smtp.EnableSsl = true;
				NetworkCredential NetworkCred = new NetworkCredential("techcreate400@gmail.com", "NiagaraTech12");
				smtp.UseDefaultCredentials = true;
				smtp.Credentials = NetworkCred;
				smtp.Port = 587;
				smtp.Send(mm);

				lblMessage.Text = "Reply has been sent successfully.";
			}
			catch (Exception)
			{
				lblMessage.Text = "Sorry, Your Reply has not been Sent due to Network Problem.Please try again later.";
				
			}
			Response.Redirect("AddAE.aspx");
		}

		protected void gvMessage_SelectedIndexChanged(object sender, EventArgs e)
		{
			gvMessage.Columns[0].Visible = true;
			gvMessage.Visible = true;
			if (gvMessage.SelectedIndex != 0)
				dvMessage.PageIndex = gvMessage.SelectedIndex;
			gvMessage.Visible = false;
			gvMessage.Columns[0].Visible = false;

		}


	}
}