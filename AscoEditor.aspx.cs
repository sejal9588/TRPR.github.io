using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OpenPop.Pop3;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using TRPRLibrary;
using TRPRLibrary.TRPRLibraryDataSetTableAdapters;

namespace TRPR
{
    public partial class AscoEditor : System.Web.UI.Page
    {
		string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TRPR.mdf;Integrated Security=True;Connect Timeout=30";

		static OpenPop.Pop3.Pop3Client client = new OpenPop.Pop3.Pop3Client();
		static StringBuilder builder = new StringBuilder();
		private static TRPRLibraryDataSet dsperson;
		private static string name = null;
		static AscoEditor()
		{

			dsperson = new TRPRLibraryDataSet();
			PersonTableAdapter daPerson = new PersonTableAdapter();

			try
			{
				daPerson.Fill(dsperson.Person);

			}
			catch { }
		}
		protected void Page_Load(object sender, EventArgs e)
        {
			lblUser.Text = Session["Data"].ToString();
			lblRoleID.Visible = false;
			lblerror.Visible = false;
			lblMesg.Text = "";
			//if(btnAccept_Click ==  )
			if (!IsPostBack)
			//ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Dear Assiciate Editor, You have  Disgree to Review Manuscript');", false);

			//lblUser.Text = Session["Data"].ToString();
			lbEmail.Visible = false;
            btnAccept.Visible = false;
            btnDecline.Visible = false;
            lblNewInvitation.Visible = false;
            lblWelcome.Visible = true;
            lblInvited.Visible = false;
            btnViewInvitation.Visible = false;
            pnViewSubmission.Visible = false;
            Panel4.Visible = false;
			pnSubmittedReview.Visible = false;
			lblSubmitted.Text = gvSubmittedReview.Rows.Count.ToString();
			lblScore.Text = gvAESearch.Rows.Count.ToString();

		}

       
        protected void lbScoreSumitted_Click(object sender, EventArgs e)
        {
            pnViewSubmission.Visible = true;
            Panel1.Visible = false;
            lbEmail.Visible = false;
            btnAccept.Visible = false;
            btnDecline.Visible = false;
            lblNewInvitation.Visible = false;

            btnViewInvitation.Visible = false;
            //Panel2.Visible = false;
            Panel4.Visible = false;
			pnSubmittedReview.Visible = false;

        }

        protected void btnViewInvitation_Click(object sender, EventArgs e)
        {
            lbEmail.Visible = true;
            btnAccept.Visible = true;
            btnDecline.Visible = true;
            lblNewInvitation.Visible = true;
            lblWelcome.Visible = false;
            lblInvited.Visible = true;
            btnViewInvitation.Visible = true;
            Panel4.Visible = true;



			string strQuery3 = "select  Message,SendDate from AESendInvitation where Id=(SELECT MAX(Id) from AESEndInvitation where  AEName = @AEName )";
			SqlConnection con3 = new SqlConnection(conStr);

			SqlCommand cmd3 = new SqlCommand(strQuery3);


			cmd3.Parameters.AddWithValue("@AEName",Session["Data"]);

			cmd3.CommandType = CommandType.Text;

			cmd3.Connection = con3;
			con3.Open();
			cmd3.ExecuteNonQuery();

			SqlDataReader reader3 = cmd3.ExecuteReader();
			reader3.Read();
			if (reader3.HasRows)
			{
				string Message = reader3[0].ToString();
				string date = reader3[1].ToString();
				reader3.Close();
					lbEmail.Text = Message + "\n" + date;
				

				
			}
			else
			{
				lblMesg.Text = "There is no Invitation yet!";
				btnAccept.Visible = false;
				btnDecline.Visible = false;
				lbEmail.Visible = false;

			}

		}

		protected void lbLogout_Click(object sender, EventArgs e)
		{
			var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
			authenticationManager.SignOut();
			Response.Redirect("Index.aspx");
		}

		protected void lbSubmission_Click(object sender, EventArgs e)
        {
			pnViewSubmission.Visible = false;
			Panel1.Visible = false;
			lbEmail.Visible = false;
			btnAccept.Visible = false;
			btnDecline.Visible = false;
			lblNewInvitation.Visible = false;

			btnViewInvitation.Visible = false;
			
			Panel4.Visible = false;
			pnSubmittedReview.Visible = true;
			//  Response.Redirect("SubmittedReview.aspx");
		}

		protected void gvSubmittedReview_SelectedIndexChanged(object sender, EventArgs e)
		{
			if (gvSubmittedReview.SelectedDataKey != null)
			{
				Session["manuTitle"] = gvSubmittedReview.SelectedRow.Cells[1].Text;
				var gvSearchId = gvSubmittedReview.SelectedDataKey.Value;
				Session["gvSearchId"] = gvSearchId;
				Server.Transfer("SubmittedReview.aspx");
			}
		}
		protected void btnAccept_Click(object sender, EventArgs e)
        {
		
			
			lbEmail.Text = "";
			
			lblWelcome.Visible = true;
			lbEmail.Visible = false;
			ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Dear Associate Editor, Thank you for Agreeing to Review Manuscript');", true);
			Panel1.Visible = true;
			SqlConnection con = new SqlConnection(conStr);


			string strQuery = "insert into InvResponse (Response,UserName,FullName,Upload) values (@Response,@UserName,@FullName,@Upload)";

			SqlCommand cmd4 = new SqlCommand(strQuery);
			DataRow person = dsperson.Person.FindByUserName(lblUser.Text);
			
				cmd4.Parameters.AddWithValue("@Response", "has Accepted Your Review Invitation.");
		
				cmd4.Parameters.AddWithValue("@UserName", Session["Data"]);
			
			cmd4.Parameters.AddWithValue("@FullName",dsperson.Person.FindByUserName(lblUser.Text ).FullName);
			cmd4.Parameters.AddWithValue("@Upload", DateTime.Today);
			cmd4.CommandType = CommandType.Text;

			cmd4.Connection = con;
			con.Open();
			cmd4.ExecuteNonQuery();

		}

		protected void btnDecline_Click(object sender, EventArgs e)
		{
			lbEmail.Text = "";
			
			lbEmail.Visible = false;
			lblWelcome.Visible = true;
			Panel1.Visible = true;
			ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Dear Associate Editor,Recently, You have Disgreed to Review Manuscript');", true);

			SqlConnection con = new SqlConnection(conStr);


			string strQuery = "insert into InvResponse (Response,UserName,FullName,Upload) values (@Response,@UserName,@FullName,@Upload)";

			SqlCommand cmd4 = new SqlCommand(strQuery);
			DataRow person = dsperson.Person.FindByUserName(lblUser.Text);

			cmd4.Parameters.AddWithValue("@Response", "has Declined Your Review Invitation.");

			cmd4.Parameters.AddWithValue("@UserName", Session["Data"]);

			cmd4.Parameters.AddWithValue("@FullName", dsperson.Person.FindByUserName(lblUser.Text).FullName);
			cmd4.Parameters.AddWithValue("@Upload", DateTime.Today);
			cmd4.CommandType = CommandType.Text;

			cmd4.Connection = con;
			con.Open();
			cmd4.ExecuteNonQuery();
		}
		protected void OpenDocument(object sender, EventArgs e)
		{
			LinkButton lnk = (LinkButton)sender;
			GridViewRow gr = (GridViewRow)lnk.NamingContainer;
			int id = int.Parse(gvAESearch.DataKeys[gr.RowIndex].Value.ToString());
			Download(id);
		}
		private void Download(int id)
		{
			DataTable dt = new DataTable();
			using (SqlConnection cn = new SqlConnection(conStr))
			{
				SqlCommand cmd = new SqlCommand("GetFile", cn);
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.Parameters.Add("@Id", SqlDbType.Int).Value = id;
				
				cn.Open();
				SqlDataReader reader = cmd.ExecuteReader();
				dt.Load(reader);
			}
			string name = dt.Rows[0]["Name"].ToString();
			byte[] documentBytes = (byte[])dt.Rows[0]["DocumentContent"];



			Response.ClearContent();
			Response.ContentType = "application/octetstream";
			Response.AddHeader("Content-Disposition", string.Format("attachment; filename={0}", name));
			Response.AddHeader("Content-Length", documentBytes.Length.ToString());
			Response.BinaryWrite(documentBytes);
			Response.Flush();
			Response.Close();

		}

		protected void gvAESearch_SelectedIndexChanged(object sender, EventArgs e)
		{
			if (gvAESearch.SelectedDataKey != null)
			{
				Session["manuTitle"] = gvAESearch.SelectedRow.Cells[1].Text;
				var gvSearchId = gvAESearch.SelectedDataKey.Value;
				Session["gvSearchId"] = gvSearchId;
				Server.Transfer("ReviewManuscript.aspx");
			}
			

		}
		
		protected void lbReview_Click(object sender, EventArgs e)
		{
			
			
		}
		protected void lbAscoEditor_Click(object sender, EventArgs e)
		{
			SqlConnection conid = new SqlConnection(conStr);


			string strQueryid = "Select RoleID from Person WHERE UserName = @UserName";

			SqlCommand cmdid = new SqlCommand(strQueryid);

			cmdid.Parameters.AddWithValue("@UserName", Session["Data"]);


			cmdid.CommandType = CommandType.Text;

			cmdid.Connection = conid;
			conid.Open();
			SqlDataReader readerid = cmdid.ExecuteReader();
			readerid.Read();
			if (readerid.IsDBNull(0))
			{
				Response.Redirect("ReviewPrev.aspx");

			}
			else
			{
				int roleID = Convert.ToInt32(readerid[0]);
				Convert.ToInt32(roleID);
				readerid.Close();

				if (roleID == 1)
				{
					Response.Redirect("AscoEditor.aspx");
				}
				else
				{
					Response.Redirect("ReviewPrev.aspx");
				}
			}
		}

		protected void lbInvitation_Click(object sender, EventArgs e)
		{
			lblInvited.Visible = true;
			lblNewInvitation.Visible = true;
			btnViewInvitation.Visible = true;
			lblWelcome.Visible = false;
			Panel1.Visible = false;
			Panel4.Visible = true;
		}
	}

}