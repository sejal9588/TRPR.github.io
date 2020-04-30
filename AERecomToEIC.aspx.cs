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
	public partial class AERecomToEIC : System.Web.UI.Page
	{
		string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TRPR.mdf;Integrated Security=True;Connect Timeout=30";

		private bool fID = false;
		private static TRPRLibraryDataSet dsManu;
		private static string name = null;
		static AERecomToEIC()
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
			DetailsView1.Visible = true;
			lbltitle.Text = DetailsView1.Rows[11].Cells[1].Text;
			DataRow manu = dsManu.Manuscript.FindById(Convert.ToInt32(lbltitle.Text));
			
			Label3.Text = manu.ItemArray[2].ToString();
			Label12.Text = DetailsView1.Rows[1].Cells[1].Text;
			Label5.Text = DetailsView1.Rows[2].Cells[1].Text;

			Label9.Text = DetailsView1.Rows[3].Cells[1].Text;
			Label7.Text = DetailsView1.Rows[4].Cells[1].Text;

			DetailsView1.Visible = false;
			lbltitle.Visible = false;
		}

		protected void LinkButton3_Click(object sender, EventArgs e)
		{
			Response.Redirect("EditorFinalDecision.aspx");
		}
		protected void lbDashboard_Click(object sender, EventArgs e)
		{
			Response.Redirect("Editor.aspx");
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
	}
}