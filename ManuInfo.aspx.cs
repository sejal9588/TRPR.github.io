using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TRPRLibrary;
using TRPRLibrary.TRPRLibraryDataSetTableAdapters;

namespace TRPR
{
	public partial class ManuInfo : System.Web.UI.Page
	{
		string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TRPR.mdf;Integrated Security=True;Connect Timeout=30";

		private static TRPRLibraryDataSet dsManuscript;
		private static DataRow[] rows;

		static ManuInfo()
		{
			dsManuscript = new TRPRLibraryDataSet();
			ManuscriptTableAdapter daPerson = new ManuscriptTableAdapter();

			try
			{
				daPerson.Fill(dsManuscript.Manuscript);

			}
			catch { }
		}
		private static int id = -1;
		protected void Page_Load(object sender, EventArgs e)
		{
			//if (!IsPostBack)
			//{
			//	FillData();
				
			//}
			lblTitile.Text = Session["manId"].ToString();
			dvManu.Fields[0].Visible = false;
			pnAERecom.Visible = false;
			SqlConnection conid = new SqlConnection(conStr);


			string strQueryid = "Select PersonName from Submission WHERE ManuID = @ManuID";

			SqlCommand cmdid = new SqlCommand(strQueryid);

			cmdid.Parameters.AddWithValue("@ManuID", Session["maId"]);


			cmdid.CommandType = CommandType.Text;

			cmdid.Connection = conid;
			conid.Open();
			SqlDataReader readerid = cmdid.ExecuteReader();
			readerid.Read();
			string pname = Convert.ToString(readerid[0]);

			/////////////////
			SqlConnection con = new SqlConnection(conStr);


			string strQuery1 = "Select RoleID from Person WHERE UserName = @UserName";

			SqlCommand cmd = new SqlCommand(strQuery1);

			cmd.Parameters.AddWithValue("@UserName", pname);


			cmd.CommandType = CommandType.Text;

			cmd.Connection = con;
			con.Open();
			SqlDataReader reader = cmd.ExecuteReader();
			reader.Read();
			
				int roleID = Convert.ToInt32(reader[0]);



			if (roleID == 1)
			{
				lblBinded.Text = "This Manuscript is Binded.";
			}
			else
			{
				lblBinded.Text = "";
			}
			//id = Convert.ToInt32(Session["id"]);
			//DataRow manu = dsManuscript.Manuscript.FindById(id);
			//dvAllManu.PageIndex = Convert.ToInt32(Request.QueryString["Id"]);


			//this.lblType.Text = dsManuscript.Manuscript.FindById(id).ManuType;
			//this.lblTitle.Text = dsManuscript.Manuscript.FindById(id).ManuTitle;

			//this.lblUploadOn.Text = dsManuscript.Manuscript.FindById(id).UploadOn.ToString();

			//this.lblUploadBy.Text = dsManuscript.Manuscript.FindById(id).UploadBy;
			//this.lblAbstract.Text = dsManuscript.Manuscript.FindById(id).ManuAbstract;
			//this.lblConflict.Text = dsManuscript.Manuscript.FindById(id).ConflictOfInterest;



		}
		protected void lbAEList_Click(object sender, EventArgs e)
		{

			Response.Redirect("SearchAE.aspx");
		}
		protected void lbAssignAE_Click(object sender, EventArgs e)
		{

			Response.Redirect("AEAssign.aspx");
		}
		protected void lbFinalDecision_Click(object sender, EventArgs e)
		{

			Response.Redirect("EditorFinalDecision.aspx");
		}
		protected void OpenCover(object sender, EventArgs e)
		{
			
			LinkButton lnk = (LinkButton)sender;
			DetailsView dv = (DetailsView)lnk.NamingContainer;
			int idCover = Convert.ToInt32(dvManu.SelectedValue);
			DetailCoverPage(idCover);
		}
		protected void OpenFile(object sender, EventArgs e)
		{
			LinkButton lnkf = (LinkButton)sender;
			DetailsView dvf = (DetailsView)lnkf.NamingContainer;
			int idFile = Convert.ToInt32(dvManu.SelectedValue);
			DownloadDetailFile(idFile);
		}

		private void DetailCoverPage(int idCover)
		{
			DataTable dt = new DataTable();
			using (SqlConnection cn = new SqlConnection(conStr))
			{
				SqlCommand cmd = new SqlCommand("GetDocument", cn);
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.Parameters.Add("@Id", SqlDbType.Int).Value = idCover;
				cmd.Parameters.Add("@UploadBy", SqlDbType.VarChar).Value = dvManu.Rows[5].Cells[1].Text;

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
		private void DownloadDetailFile(int idFile)
		{
			DataTable dt = new DataTable();
			using (SqlConnection cn = new SqlConnection(conStr))
			{
				SqlCommand cmd = new SqlCommand("GetDocument", cn);
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.Parameters.Add("@Id", SqlDbType.Int).Value = idFile;
				cmd.Parameters.Add("@UploadBy", SqlDbType.VarChar).Value = dvManu.Rows[5].Cells[1].Text;
				cn.Open();
				SqlDataReader reader = cmd.ExecuteReader();
				dt.Load(reader);
			}
			string name = dt.Rows[0]["NameF"].ToString();
			byte[] documentBytesf = (byte[])dt.Rows[0]["DocumentContentF"];

			Response.ClearContent();
			Response.ContentType = "application/octetstream";
			Response.AddHeader("Content-Disposition", string.Format("attachment; filename={0}", name));
			Response.AddHeader("Content-Length", documentBytesf.Length.ToString());
			Response.BinaryWrite(documentBytesf);
			Response.Flush();
			Response.Close();

		}


		
		protected void Manuscript_Click(object sender, EventArgs e)
		{
			string path = "C:\\Users\\raina\\Documents\\Desktop\\VideoPrototype3\\TRPR\\TRPR\\App_Data\\Files\\" + this.dvManu.Rows[7].Cells[1].Text;


			WebClient client = new WebClient();
			Byte[] buffer = client.DownloadData(path);




			if (buffer != null)
			{
				Response.ContentType = "application/pdf";
				Response.AddHeader("Content-Length", buffer.Length.ToString());
				Response.BinaryWrite(buffer);
			}
		}

		protected void Cover_Click(object sender, EventArgs e)
		{

			string path = "C:\\Users\\raina\\Documents\\Desktop\\VideoPrototype3\\TRPR\\TRPR\\App_Data\\Files\\" + this.dvManu.Rows[6].Cells[1].Text;


			WebClient client = new WebClient();
			Byte[] buffer = client.DownloadData(path);




			if (buffer != null)
			{
				Response.ContentType = "application/pdf";
				Response.AddHeader("Content-Length", buffer.Length.ToString());
				Response.BinaryWrite(buffer);
			}
		}

		protected void lbDashboard_Click(object sender, EventArgs e)
		{
			Response.Redirect("Editor.aspx");
		}

		protected void lbAERecom_Click(object sender, EventArgs e)
		{
			pnAERecom.Visible = true;
			Panel1.Visible = false;
			Panel5.Visible = false;
			SqlConnection con = new SqlConnection(conStr);


			string strQuery = "Select FileID from Submission WHERE ManuID = @ManuID";

			SqlCommand cmd4 = new SqlCommand(strQuery);

			cmd4.Parameters.AddWithValue("@ManuID", Session["maId"]);


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
				if (DetailsView1.Rows.Count != 0)
				{
					DetailsView1.Visible = true;
					
					pnAERecom.Visible = true;
					Label3.Text = Session["manId"].ToString();
					Label12.Text = DetailsView1.Rows[1].Cells[1].Text;
					Label5.Text = DetailsView1.Rows[2].Cells[1].Text;

					Label9.Text = DetailsView1.Rows[3].Cells[1].Text;
					Label7.Text = DetailsView1.Rows[4].Cells[1].Text;

					DetailsView1.Visible = false;

				}
				else
				{
					Label2.Text = "This Manuscript is in Progress Yet!!";
					Label4.Visible = false;
					Label6.Visible = false;
					Label11.Visible = false;
					Label8.Visible = false;
					lblInform.Visible = false;
					lblInform2.Visible = false;
					LinkButton3.Visible = false;
				}
			}
			else
			{
				Label2.Text = "This Manuscript has not been assigned Yet!!";
				Label4.Visible = false;
				Label6.Visible = false;
				Label11.Visible = false;
				Label8.Visible = false;
				lblInform.Visible = false;
				lblInform2.Visible = false;
				LinkButton3.Visible = false;
			}
			lblFileID.Visible = false;
		}

		protected void LinkButton3_Click(object sender, EventArgs e)
		{


			Response.Redirect("EditorFinalDecision.aspx");
		}

		protected void OpenFileCom(object sender, EventArgs e)
		{
			DetailsView1.Visible = true;

			LinkButton lnkf = (LinkButton)sender;
			DetailsView dvf = (DetailsView)lnkf.NamingContainer;
			int idFile = Convert.ToInt32(dvFile.SelectedValue);
			DownloadDetailFileCom(idFile);
			DetailsView1.Visible = false;
		}
		private void DownloadDetailFileCom(int idFile)
		{
			DataTable dt = new DataTable();
			using (SqlConnection cn = new SqlConnection(conStr))
			{
				SqlCommand cmd = new SqlCommand("GetCommentFile", cn);
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.Parameters.Add("@Id", SqlDbType.Int).Value = idFile;

				cn.Open();
				SqlDataReader reader = cmd.ExecuteReader();
				dt.Load(reader);
			}
			string name = dt.Rows[0]["Name"].ToString();
			byte[] documentBytesf = (byte[])dt.Rows[0]["DocumentContent"];

			Response.ClearContent();
			Response.ContentType = "application/octetstream";
			Response.AddHeader("Content-Disposition", string.Format("attachment; filename={0}", name));
			Response.AddHeader("Content-Length", documentBytesf.Length.ToString());
			Response.BinaryWrite(documentBytesf);
			Response.Flush();
			Response.Close();

		}






		//protected void OpenDocument(object sender, EventArgs e)
		//{
		//	LinkButton lnk = (LinkButton)sender;
		//	GridViewRow gr = (GridViewRow)lnk.NamingContainer;
		//	int id = int.Parse(gvDocuments.DataKeys[gr.RowIndex].Value.ToString());
		//	Download(id);
		//}
		//protected void OpenDocumentf(object sender, EventArgs e)
		//{
		//	LinkButton lnkf = (LinkButton)sender;
		//	GridViewRow grf = (GridViewRow)lnkf.NamingContainer;
		//	int idf = int.Parse(gvDocuments.DataKeys[grf.RowIndex].Value.ToString());
		//	Downloadf(idf);
		//}

		//private void Download(int id)
		//{
		//	DataTable dt = new DataTable();
		//	using (SqlConnection cn = new SqlConnection(conStr))
		//	{
		//		SqlCommand cmd = new SqlCommand("GetDocument", cn);
		//		cmd.CommandType = CommandType.StoredProcedure;
		//		cmd.Parameters.Add("@ID", SqlDbType.Int).Value = id;
		//		cmd.Parameters.Add("@UploadBy", SqlDbType.VarChar).Value = dvManu.Rows[7].Cells[1].Text;

		//		cn.Open();
		//		SqlDataReader reader = cmd.ExecuteReader();
		//		dt.Load(reader);
		//	}
		//	string name = dt.Rows[0]["Name"].ToString();
		//	byte[] documentBytes = (byte[])dt.Rows[0]["DocumentContent"];

		//	Response.ClearContent();
		//	Response.ContentType = "application/octetstream";
		//	Response.AddHeader("Content-Disposition", string.Format("attachment; filename={0}", name));
		//	Response.AddHeader("Content-Length", documentBytes.Length.ToString());
		//	Response.BinaryWrite(documentBytes);
		//	Response.Flush();
		//	Response.Close();



		//}
		//private void Downloadf(int idf)
		//{
		//	DataTable dt = new DataTable();
		//	using (SqlConnection cn = new SqlConnection(conStr))
		//	{
		//		SqlCommand cmd = new SqlCommand("GetDocument", cn);
		//		cmd.CommandType = CommandType.StoredProcedure;
		//		cmd.Parameters.Add("@ID", SqlDbType.Int).Value = idf;
		//		cmd.Parameters.Add("@UploadBy", SqlDbType.VarChar).Value = dvManu.Rows[7].Cells[1].Text;

		//		cn.Open();
		//		SqlDataReader reader = cmd.ExecuteReader();
		//		dt.Load(reader);
		//	}

		//	string namef = dt.Rows[0]["NameF"].ToString();
		//	byte[] documentBytesf = (byte[])dt.Rows[0]["DocumentContentF"];
		//	Response.ClearContent();
		//	Response.ContentType = "application/octetstream";
		//	Response.AddHeader("Content-Disposition", string.Format("attachment; filename={0}", namef));
		//	Response.AddHeader("Content-Length", documentBytesf.Length.ToString());
		//	Response.BinaryWrite(documentBytesf);
		//	Response.Flush();
		//	Response.Close();

		//}

		//private void FillData()
		//{
		//	DataTable dt = new DataTable();
		//	using (SqlConnection cn = new SqlConnection(conStr))
		//	{
		//		SqlCommand cmd = new SqlCommand("GetFiles", cn);
		//		cmd.CommandType = CommandType.StoredProcedure;
		//		//cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = dvManu.Rows[4].Cells[1].Text;
		//		cmd.Parameters.Add("@NameF", SqlDbType.VarChar).Value = dvManu.Rows[5].Cells[1].Text;
		//		cmd.Parameters.Add("@UploadBy", SqlDbType.VarChar).Value = dvManu.Rows[7].Cells[1].Text;

		//		cn.Open();
		//		SqlDataReader reader = cmd.ExecuteReader();

		//		dt.Load(reader);
		//	}
		//	if (dt.Rows.Count > 0)
		//	{
		//		gvDocuments.DataSource = dt;
		//		gvDocuments.DataBind();

		//	}

		//}
		//private void FillData2()
		//{

		//	DataTable dt = new DataTable();
		//	using (SqlConnection cn = new SqlConnection(conStr))
		//	{
		//		SqlCommand cmd = new SqlCommand("GetFiles", cn);
		//		cmd.CommandType = CommandType.StoredProcedure;

		//		cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = dvManu.Rows[4].Cells[1].Text;
		//		cmd.Parameters.Add("@NameF", SqlDbType.VarChar).Value = dvManu.Rows[5].Cells[1].Text;
		//		cmd.Parameters.Add("@UploadBy", SqlDbType.VarChar).Value = dvManu.Rows[7].Cells[1].Text;

		//		cn.Open();
		//		SqlDataReader reader = cmd.ExecuteReader();

		//		dt.Load(reader);
		//	}
		//	if (dt.Rows.Count > 0)
		//	{
		//		gvFile2.DataSource = dt;
		//		gvFile2.DataBind();

		//	}

	}

}