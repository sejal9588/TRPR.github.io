using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TRPR
{
    public partial class SubmittedReview : System.Web.UI.Page
    {
		string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TRPR.mdf;Integrated Security=True;Connect Timeout=30";

		protected void Page_Load(object sender, EventArgs e)
        {
			lblTitile.Text = Session["manuTitle"].ToString();
			dvSubmittedReview.Fields[0].Visible = false;
			dvSubmittedReview.Fields[1].Visible = false;
			lblUser.Text = Session["Data"].ToString();
			lblUser.Visible = false;
		}
      

		protected void lbDashboard_Click(object sender, EventArgs e)
		{
			Response.Redirect("AscoEditor.aspx");
		}
		protected void OpenCover(object sender, EventArgs e)
		{
			dvSubmittedReview.Fields[0].Visible = true;
			LinkButton lnk = (LinkButton)sender;
			DetailsView dv = (DetailsView)lnk.NamingContainer;
			int idCover = Convert.ToInt32(dvSubmittedReview.SelectedValue);
			DetailCoverPage(idCover);
			dvSubmittedReview.Fields[0].Visible = false;
		}
		


		protected void OpenFile(object sender, EventArgs e)
		{
			dvSubmittedReview.Fields[0].Visible = true;
			dvSubmittedReview.Fields[1].Visible = true;
			dvSubmittedReview.Fields[2].Visible = true;
			string  comId = dvSubmittedReview.Rows[0].Cells[1].Text;

		
			LinkButton lnkf = (LinkButton)sender;
			DetailsView dvf = (DetailsView)lnkf.NamingContainer;
			int idFile = Convert.ToInt32(comId) ;
			
			DownloadDetailFile(idFile);
			dvSubmittedReview.Fields[1].Visible = false;
			dvSubmittedReview.Fields[2].Visible = false;
			dvSubmittedReview.Fields[0].Visible = false;
		}

		private void DetailCoverPage(int idCover)
		{
			DataTable dt = new DataTable();
			using (SqlConnection cn = new SqlConnection(conStr))
			{
				SqlCommand cmd = new SqlCommand("GetFile", cn);
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.Parameters.Add("@Id", SqlDbType.Int).Value = idCover;

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
				SqlCommand cmd = new SqlCommand("GetCommentFile", cn);
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.Parameters.Add("@Id", SqlDbType.Int).Value = idFile;
				cmd.Parameters.Add("@UpdatedBy", SqlDbType.VarChar).Value = Session["Data"].ToString(); 

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