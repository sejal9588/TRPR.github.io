using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TRPRLibrary;
using TRPRLibrary.TRPRLibraryDataSetTableAdapters;

namespace TRPR
{
    public partial class Author : System.Web.UI.Page
    {
		string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TRPR.mdf;Integrated Security=True;Connect Timeout=30";

		
		private static TRPRLibraryDataSet dsperson;
		private static DataRow[] rows;
		private static string name = null;
		static Author()
		{

			dsperson = new TRPRLibraryDataSet();
			PersonTableAdapter daPerson = new PersonTableAdapter();
			ManuscriptTableAdapter daManu = new ManuscriptTableAdapter();
			try
			{
				daPerson.Fill(dsperson.Person);
				daManu.Fill(dsperson.Manuscript);

			}
			catch { }
		}

		protected void Page_Load(object sender, EventArgs e)
        {
			gvSaveDraft.Columns[0].Visible = false;
			dvSaveDraftDetail.Fields[0].Visible = false;
			gvDocuments.Columns[0].Visible = false;
			gvSearchTitle.Columns[0].Visible = false;
			gvSearchTitle.Visible = false;
			txtTit.Visible = false;
			lblsearchtit.Visible = false;
			btnSearch.Visible = false;
			pnShowEICResp.Visible = false;
			lblRoleID.Visible = false;
			dvComment.Visible = false;
			lblConfirmation.Text = "";
			lblFileID.Visible = false;
			Label14.Visible = false;
			lblViewProgress.Text = gvDocuments.Rows.Count.ToString();
			if (Request.QueryString["showpanel"] == "2")
			{
				//lblConfirmation.Text = "Draft has been deleted successfully.";
				lblConfirmation.Visible = true;
				dvSaveDraftDetail.Visible = false;
				pnSaveDraft.Visible = true;
				lblConfirmation.Visible = true;
				pnStartSubmission.Visible = false;
				lblUnsubmitted.Text = gvSaveDraft.Rows.Count.ToString();
				lblViewProgress.Text = gvDocuments.Rows.Count.ToString();
				btnDraftSubmit.Visible = false;
				btnDeleteDSraft.Visible = false;
				gvDocuments.Visible = false;
				gvSaveDraft.Visible = true;
				gvSaveDraft.DataBind();
				if (!IsPostBack)
				{
					FillData();


				}
			}
			else
			{
				lblUser.Text = Session["Data"].ToString();
				lblUnsubmitted.Text = gvSaveDraft.Rows.Count.ToString();
				lblViewProgress.Text = gvDocuments.Rows.Count.ToString();
				pnViewProgress.Visible = false;
				pnSaveDraft.Visible = false;
				pnSaveDraftDetail.Visible = false;
				lblConfirmation.Visible = false;
				if (!IsPostBack)
				{
					FillData();


				}
			}
			
		}
		

		protected void lbInstruction_Click(object sender, EventArgs e)
        {
            Response.Redirect("trpr.pdf");
        }

        protected void lbProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditAuthorProfile.aspx");
        }

        protected void btnSubmission_Click(object sender, EventArgs e)
        {
            Response.Redirect("SubSt1.aspx");
        }
		protected void lbLogout_Click(object sender, EventArgs e)
		{
			var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
			authenticationManager.SignOut();
			Response.Redirect("Index.aspx");
		}
		

		protected void OpenCover(object sender, EventArgs e)
		{
			dvSaveDraftDetail.Fields[0].Visible = true;
			LinkButton lnk = (LinkButton)sender;
			DetailsView dv = (DetailsView)lnk.NamingContainer;
			int idCover =Convert.ToInt32(dvSaveDraftDetail.SelectedValue);
			
			DetailCoverPage(idCover);
			
		}
		protected void OpenFile(object sender, EventArgs e)
		{
			dvSaveDraftDetail.Fields[0].Visible = true;
			LinkButton lnkf = (LinkButton)sender;
			DetailsView dvf = (DetailsView)lnkf.NamingContainer;
			int idFile = Convert.ToInt32(dvSaveDraftDetail.SelectedValue);
			DownloadDetailFile(idFile);
			dvSaveDraftDetail.Fields[0].Visible = false;
		}

		private void DetailCoverPage(int idCover)
		{
			DataTable dt = new DataTable();
			using (SqlConnection cn = new SqlConnection(conStr))
			{
				SqlCommand cmd = new SqlCommand("DraftDetailForFile", cn);
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.Parameters.Add("@Id", SqlDbType.Int).Value = idCover;
				
				cn.Open();
				SqlDataReader reader = cmd.ExecuteReader();
				dt.Load(reader);
			}
			string name = dt.Rows[0]["Name"].ToString();
			byte[] documentBytes = (byte[])dt.Rows[0]["DocumentContent"];
		
			Response.ClearContent();
			Response.ContentType = "application/pdf";
			Response.AddHeader("Content-Disposition", string.Format("attachment; filename={0}", name));
			Response.AddHeader("Content-Length", documentBytes.Length.ToString());
			Response.BinaryWrite(documentBytes);
			Response.Flush();
			Response.Close();

			

		}
		private void DownloadDetailFile(int idFile)
		{
			DataTable dt = new DataTable();
			using (SqlConnection cn = new SqlConnection(conStr))
			{
				SqlCommand cmd = new SqlCommand("DraftDetailForFile", cn);
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.Parameters.Add("@Id", SqlDbType.Int).Value = idFile;
				
				cn.Open();
				SqlDataReader reader = cmd.ExecuteReader();
				dt.Load(reader);
			}
			string name = dt.Rows[0]["NameF"].ToString();
			byte[] documentBytesf = (byte[])dt.Rows[0]["DocumentContentF"];
			
			Response.ClearContent();
			Response.ContentType = "application/octet-stream";
			Response.AddHeader("Content-Disposition", string.Format("attachment; filename={0}", name));
			Response.AddHeader("Content-Length", documentBytesf.Length.ToString());
			Response.BinaryWrite(documentBytesf);
			Response.Flush();
			Response.Close();

		}
		


		protected void OpenDocument(object sender, EventArgs e)
		{
			gvDocuments.Columns[0].Visible = true;
			LinkButton lnk = (LinkButton)sender;
			GridViewRow gr = (GridViewRow)lnk.NamingContainer;
			int id = int.Parse(gvDocuments.DataKeys[gr.RowIndex].Value.ToString());
			Download(id);
			gvDocuments.Columns[0].Visible = false;
		}
		protected void OpenDocumentf(object sender, EventArgs e)
		{
			gvDocuments.Columns[0].Visible = true;
			LinkButton lnkf = (LinkButton)sender;
			GridViewRow grf = (GridViewRow)lnkf.NamingContainer;
			int idf = int.Parse(gvDocuments.DataKeys[grf.RowIndex].Value.ToString());
			Downloadf(idf);
			gvDocuments.Columns[0].Visible = false;
		}
		private void Download(int id)
		{
			DataTable dt = new DataTable();
			using (SqlConnection cn = new SqlConnection(conStr))
			{
				SqlCommand cmd = new SqlCommand("GetDocument", cn);
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.Parameters.Add("@Id", SqlDbType.Int).Value = id;
				cmd.Parameters.Add("@UploadBy", SqlDbType.VarChar).Value = Session["Data"];
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
		
		private void Downloadf(int idf)
		{
			DataTable dt = new DataTable();
			using (SqlConnection cn = new SqlConnection(conStr))
			{
				SqlCommand cmd = new SqlCommand("GetDocument", cn);
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.Parameters.Add("@Id", SqlDbType.Int).Value = idf;
				cmd.Parameters.Add("@UploadBy", SqlDbType.VarChar).Value = Session["Data"];
				cn.Open();
				SqlDataReader reader = cmd.ExecuteReader();
				dt.Load(reader);
			}

			string namef = dt.Rows[0]["NameF"].ToString();
			byte[] documentBytesf = (byte[])dt.Rows[0]["DocumentContentF"];
			Response.ClearContent();
			Response.ContentType = "application/octetstream";
			Response.AddHeader("Content-Disposition", string.Format("attachment; filename={0}", namef));
			Response.AddHeader("Content-Length", documentBytesf.Length.ToString());
			Response.BinaryWrite(documentBytesf);
			Response.Flush();
			Response.Close();

		}



		private void FillData()
		{
			gvDocuments.Columns[0].Visible = true;
			DataTable dt = new DataTable();
			using (SqlConnection cn = new SqlConnection(conStr))
			{
				SqlCommand cmd = new SqlCommand("GetDocuments", cn);
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.Parameters.Add("@UploadBy", SqlDbType.VarChar).Value = Session["Data"];

				cn.Open();
				SqlDataReader reader = cmd.ExecuteReader();

				dt.Load(reader);
			}
			if (dt.Rows.Count > 0)
			{
				gvDocuments.DataSource = dt;
				gvDocuments.DataBind();

			}
			lblViewProgress.Text = gvDocuments.Rows.Count.ToString();
			gvDocuments.Columns[0].Visible = false;
		}
		

		protected void lbViewProgress_Click(object sender, EventArgs e)
		{
			pnViewProgress.Visible = true;
			pnStartSubmission.Visible = false;
			gvDocuments.Visible = true;
			pnSaveDraft.Visible = false;
			gvSearchTitle.Visible = false;
			btnSearch.Visible = true;
			txtTit.Visible = true;
			lblsearchtit.Visible = true;
			

		}

		protected void lbStartSubmission_Click(object sender, EventArgs e)
		{
			pnViewProgress.Visible = false;
			pnStartSubmission.Visible = true;
			pnSaveDraft.Visible = false;
			
		}

		protected void lbUnsubmitted_Click(object sender, EventArgs e)
		{

			pnViewProgress.Visible = false;
			pnStartSubmission.Visible = false;
			pnSaveDraft.Visible = true;
			lblConfirmation.Visible = true;
			gvSaveDraft.Visible = true;


		}
		private static int id = -1;


		private static int gvSaveDraftID; 
		protected void btnDraftSubmit_Click(object sender, EventArgs e)
		{
			gvSaveDraft.Visible = true;
			dvSaveDraftDetail.Fields[0].Visible = true;
			dvSaveDraftDetail.Rows[0].Cells[1].Visible = true;
			gvSaveDraft.Columns[0].Visible = true;
			gvSaveDraftID =Convert.ToInt32(dvSaveDraftDetail.DataKey.Value);
			
			Session["id"] = gvSaveDraftID;
			Server.Transfer("SubSt1.aspx?ShowPanel=1");
		


		}

		protected void btnDeleteDraft_Click(object sender, EventArgs e)
		{
			pnSaveDraft.Visible = true;
			lblConfirmation.Visible = true;
			gvSearchTitle.Visible = false;
			txtTit.Visible = false;
			lblsearchtit.Visible = false;
			btnSearch.Visible = false;
			using (SqlConnection cn = new SqlConnection(conStr))
			{

				try
				{


					gvSaveDraft.Columns[0].Visible = true;
					dvSaveDraftDetail.Fields[0].Visible = true;
					SqlCommand cmd = new SqlCommand("DeleteDraft", cn);
					cmd.CommandType = CommandType.StoredProcedure;

					cmd.Parameters.Add("@ID", SqlDbType.Int).Value = gvSaveDraft.SelectedDataKey.Value;
					cmd.Parameters.Add("@ManuID", SqlDbType.Int).Value = gvSaveDraft.SelectedDataKey.Value;

					
					cn.Open();
					
					cmd.ExecuteNonQuery();
					lblConfirmation.Text = "Draft has been deleted successfully.";
					gvSaveDraft.Columns[0].Visible = false;
					dvSaveDraftDetail.Fields[0].Visible = false;
					gvSaveDraft.DataBind();

					
				}
				catch (Exception ex)
				{
					lblConfirmation.Text = ex.Message;
				}

			}
			//Server.Transfer("Author.aspx?showpanel=2");


		}

		protected void gvSaveDraft_SelectedIndexChanged(object sender, EventArgs e)
		{
			pnSaveDraftDetail.Visible = true;
			//Session["ID"] = gvSaveDraft.SelectedRow.Cells[0].Text;

			//dvSaveDraftDetail.SetPageIndex(gvSaveDraft.SelectedIndex);
			gvSaveDraft.Columns[0].Visible = true;
			dvSaveDraftDetail.Fields[0].Visible = true;
			if (gvSaveDraft.SelectedIndex != 0)
				dvSaveDraftDetail.PageIndex = gvSaveDraft.SelectedIndex;
			gvSaveDraft.Columns[0].Visible = false;
			dvSaveDraftDetail.Fields[0].Visible = false;

		}

		

		protected void lbSendEmail_Click(object sender, EventArgs e)
		{
			Response.Redirect("Email.aspx");
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

		

		protected void gvDocuments_RowCommand(object sender, GridViewCommandEventArgs e)
		{
			gvSaveDraft.Visible = false;
			lblConfirmation.Visible = false;
			gvDocuments.Columns[0].Visible = true;
			dvComment.Visible = true;
			
			lblFileID.Visible = true;
			Label14.Visible = true;
			if (e.CommandName == "getId")
			{
				int Id = int.Parse(e.CommandArgument.ToString());
				Label14.Text = Id.ToString();
			}

			pnShowEICResp.Visible = true;
			pnStartSubmission.Visible = false;

			SqlConnection con = new SqlConnection(conStr);

			
			string strQuery = "Select FileID from Submission WHERE ManuID = @ManuID";

			SqlCommand cmd4 = new SqlCommand(strQuery);

			cmd4.Parameters.AddWithValue("@ManuID", Label14.Text);


			cmd4.CommandType = CommandType.Text;

			cmd4.Connection = con;
			con.Open();
			SqlDataReader reader = cmd4.ExecuteReader();
			reader.Read();
			
				string fileID = Convert.ToString(reader[0]);

				reader.Close();
				if (fileID != "")
				{
					lblFileID.Text = fileID.ToString();
					Convert.ToInt32(lblFileID.Text);
					if (dvComment.Rows.Count != 0)
					{
						Label12.Text = dvComment.Rows[1].Cells[1].Text;
						Label13.Text = dvComment.Rows[3].Cells[1].Text;
						Label7.Text = dvComment.Rows[2].Cells[1].Text;

					}
					else
					{
						Label12.Text = "Your Manuscript is in Progress Yet!!";
						Label1.Visible = false;
						Label6.Visible = false;
						Label11.Visible = false;
						lblRecomm.Visible = false;
					}
				}
			
			else
			{
				Label12.Text = "Your Manuscript is in Progress Yet!!";
				Label1.Visible = false;
				Label6.Visible = false;
				Label11.Visible = false;
				lblRecomm.Visible = false;
			}
			dvComment.Visible = false;
			
			lblFileID.Visible = false;
			Label14.Visible = false;
			gvDocuments.Columns[0].Visible = false;
		}
		protected void gvSearchTitle_RowCommand(object sender, GridViewCommandEventArgs e)
		{
			gvSaveDraft.Visible = false;
			lblConfirmation.Visible = false;
			gvSearchTitle.Columns[0].Visible = true;
			dvComment.Visible = true;

			lblFileID.Visible = true;
			Label14.Visible = true;
			if (e.CommandName == "getId")
			{
				int Id = int.Parse(e.CommandArgument.ToString());
				Label14.Text = Id.ToString();
			}

			pnShowEICResp.Visible = true;
			pnStartSubmission.Visible = false;

			SqlConnection con = new SqlConnection(conStr);


			string strQuery = "Select FileID from Submission WHERE ManuID = @ManuID";

			SqlCommand cmd4 = new SqlCommand(strQuery);

			cmd4.Parameters.AddWithValue("@ManuID", Label14.Text);


			cmd4.CommandType = CommandType.Text;

			cmd4.Connection = con;
			con.Open();
			SqlDataReader reader = cmd4.ExecuteReader();
			reader.Read();
			
				string fileID = Convert.ToString(reader[0]);

				reader.Close();
				if (fileID != "")
				{
					lblFileID.Text = fileID.ToString();
					Convert.ToInt32(lblFileID.Text);
					if (dvComment.Rows.Count != 0)
					{
						Label12.Text = dvComment.Rows[1].Cells[1].Text;
						Label13.Text = dvComment.Rows[3].Cells[1].Text;
						Label7.Text = dvComment.Rows[2].Cells[1].Text;

					}
					else
					{
						Label12.Text = "Your Manuscript is in Progress Yet!!";
						Label1.Visible = false;
						Label6.Visible = false;
						Label11.Visible = false;
						lblRecomm.Visible = false;
					}
				}
			
			else
			{
				Label12.Text = "Your Manuscript is in Progress Yet!!";
				Label1.Visible = false;
				Label6.Visible = false;
				Label11.Visible = false;
				lblRecomm.Visible = false;
			}
			dvComment.Visible = false;

			lblFileID.Visible = false;
			Label14.Visible = false;
			gvSearchTitle.Columns[0].Visible = false;
		}

		protected void btnSearch_Click(object sender, EventArgs e)
		{
			gvDocuments.Visible = false;
			gvDocuments.Columns[0].Visible = true;
			pnViewProgress.Visible = true;
			pnStartSubmission.Visible = false;
			gvSearchTitle.Visible = true;
			pnSaveDraft.Visible = false;
			btnSearch.Visible = true;
			txtTit.Visible = true;
			lblsearchtit.Visible = true;
		}
	}
}