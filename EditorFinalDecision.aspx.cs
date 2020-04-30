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
    public partial class EditorFinalDecision : System.Web.UI.Page
    {
		string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TRPR.mdf;Integrated Security=True;Connect Timeout=30";
		private bool fID = false;
		private static TRPRLibraryDataSet dsManu;
		private static string name = null;
		static EditorFinalDecision()
		{

			dsManu = new TRPRLibraryDataSet();
			ManuscriptTableAdapter daManu = new ManuscriptTableAdapter();

			try
			{
				daManu.Fill(dsManu.Manuscript);

			}
			catch { }
		}
		protected void Page_Load(object sender, EventArgs e)
        {
			DetailsView2.Visible = false;
			

			if (Request.QueryString["ShowPanel"] == "1")
			{

				pNav.Visible = false;
				DetailsView1.Visible = true;
				Panel1.Visible = false;
				lbltitle.Text =DetailsView1.Rows[11].Cells[1].Text;
				DataRow manu = dsManu.Manuscript.FindById(Convert.ToInt32(lbltitle.Text));
				Panel5.Visible = false;
				pnAERecom.Visible = true;
				Label3.Text = manu.ItemArray[2].ToString();
				Label12.Text = DetailsView1.Rows[1].Cells[1].Text;
				Label5.Text = DetailsView1.Rows[2].Cells[1].Text;

				Label9.Text = DetailsView1.Rows[3].Cells[1].Text;
				Label7.Text = DetailsView1.Rows[4].Cells[1].Text;

				DetailsView1.Visible = false;
				lbltitle.Visible = false;
				
			}
			else
			{
				DetailsView2.Visible = true;
				lblTitile.Text = Session["manId"].ToString();
				pnAERecom.Visible = false;
				Panel1.Visible = false;
				Panel5.Visible = true;
				lblManuId.Text = Session["maId"].ToString();
				DetailsView2.Visible = false;
			}

			
			
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

		protected void btnAEDecision_Click(object sender, EventArgs e)
		{
			
			SqlConnection con = new SqlConnection(conStr);


			string strQuery = "insert into Comment (UpdatedOn,UpdatedBy,CommentToAuthor,FileID,FinalDecision) values (@UpdatedOn,@UpdatedBy,@CommentToAuthor,@FileID,@FinalDecision)";
			
			SqlCommand cmd4 = new SqlCommand(strQuery);

			cmd4.Parameters.AddWithValue("@UpdatedOn", DateTime.Today);
			cmd4.Parameters.AddWithValue("@UpdatedBy", Session["Data"]);
			cmd4.Parameters.AddWithValue("@CommentToAuthor", txtAuthor.Text);
			if(fID == true)
			{
				cmd4.Parameters.AddWithValue("@FileID", DetailsView1.Rows[9].Cells[1].Text);
			}
			else
			{
				DetailsView2.Visible = true;
				cmd4.Parameters.AddWithValue("@FileID", DetailsView2.Rows[4].Cells[1].Text);
				DetailsView2.Visible = false;
			}

			cmd4.Parameters.AddWithValue("@FinalDecision", RadioButtonList1.SelectedItem.Text);
			
			cmd4.CommandType = CommandType.Text;

			cmd4.Connection = con;
			con.Open();
			cmd4.ExecuteNonQuery();
			txtAuthor.Text = "";
			lblCon.Text = "Your decision has been sent to Author successfully.";
			Panel5.Visible = true;
			pnAERecom.Visible = false;
		}
		protected void OpenFile(object sender, EventArgs e)
		{
			DetailsView1.Visible = true;
		
			LinkButton lnkf = (LinkButton)sender;
			DetailsView dvf = (DetailsView)lnkf.NamingContainer;
			int idFile = Convert.ToInt32(dvFile.SelectedValue);
			DownloadDetailFile(idFile);
			DetailsView1.Visible = false;
		}
		private void DownloadDetailFile(int idFile)
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

		protected void lbDashboard_Click(object sender, EventArgs e)
		{
			Response.Redirect("Editor.aspx");
		}

		protected void lbAERecom_Click(object sender, EventArgs e)
		{
			pnAERecom.Visible = false;
			Panel1.Visible = true;
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
					if (DetailsView4.Rows.Count != 0)
					{
						DetailsView4.Visible = true;


						Label10.Text = Session["manId"].ToString();
						Label14.Text = DetailsView4.Rows[1].Cells[1].Text;
						Label16.Text = DetailsView4.Rows[2].Cells[1].Text;

						Label18.Text = DetailsView4.Rows[3].Cells[1].Text;
						Label20.Text = DetailsView4.Rows[4].Cells[1].Text;

						DetailsView4.Visible = false;

					}
					else
					{
						Label10.Text = "This Manuscript is in Progress Yet!!";
						Label1.Visible = false;
						Label13.Visible = false;
						Label15.Visible = false;
						Label17.Visible = false;
						Label19.Visible = false;
						lblinf.Visible = false;
						lblinf2.Visible = false;
						LinkButton2.Visible = false;
					}
				}
			
			else
			{
				Label10.Text = "This Manuscript has not been assigned Yet!";
				Label1.Visible = false;
				Label13.Visible = false;
				Label15.Visible = false;
				Label17.Visible = false;
				lblinf.Visible = false;
				Label19.Visible = false;
				lblinf2.Visible = false;
				LinkButton2.Visible = false;
			}
			lblFileID.Visible = false;
		}
		protected void LinkButton3_Click(object sender, EventArgs e)
		{
			fID = true;
			pnAERecom.Visible = false;
			Panel5.Visible = true;
			Panel1.Visible = false;
		}
		protected void Manuscript_Click(object sender, EventArgs e)
		{
			SqlConnection con = new SqlConnection(conStr);


			string strQuery = "Select NameF from Manuscript WHERE Id = @ManuID";

			SqlCommand cmd4 = new SqlCommand(strQuery);

			cmd4.Parameters.AddWithValue("@ManuID", Session["maId"]);


			cmd4.CommandType = CommandType.Text;

			cmd4.Connection = con;
			con.Open();
			SqlDataReader reader = cmd4.ExecuteReader();
			reader.Read();

			string fileManu = Convert.ToString(reader[0]);
			

			string path = "C:\\Users\\raina\\Documents\\Desktop\\VideoPrototype3\\TRPR\\TRPR\\App_Data\\Files\\" + fileManu;


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
			SqlConnection con = new SqlConnection(conStr);


			string strQuery = "Select Name from Manuscript WHERE Id = @ManuID";

			SqlCommand cmd4 = new SqlCommand(strQuery);

			cmd4.Parameters.AddWithValue("@ManuID", Session["maId"]);


			cmd4.CommandType = CommandType.Text;

			cmd4.Connection = con;
			con.Open();
			SqlDataReader reader = cmd4.ExecuteReader();
			reader.Read();

			string fileCover = Convert.ToString(reader[0]);
			string path = "C:\\Users\\raina\\Documents\\Desktop\\VideoPrototype3\\TRPR\\TRPR\\App_Data\\Files\\" + fileCover;


			WebClient client = new WebClient();
			Byte[] buffer = client.DownloadData(path);




			if (buffer != null)
			{
				Response.ContentType = "application/pdf";
				Response.AddHeader("Content-Length", buffer.Length.ToString());
				Response.BinaryWrite(buffer);
			}
		}

	}
}