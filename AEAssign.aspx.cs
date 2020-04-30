using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TRPR
{
	public partial class AEAssign : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			lblTitile.Text = Session["manId"].ToString();
			pnAERecom.Visible = false;

		}
		protected void lbViewAEDEtail_Click(object sender, EventArgs e)
		{
			//dvAEDetail.Visible = true;
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
		string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TRPR.mdf;Integrated Security=True;Connect Timeout=30";

		protected void btnAssignAE5_Click(object sender, EventArgs e)
		{


			if (Filef.PostedFile != null)


			{

				FileInfo fi = new FileInfo(Filef.FileName);
				byte[] documentContent = Filef.FileBytes;
				string name = fi.Name;
				string extn = fi.Extension;
				string FileName = Path.GetFileName(Filef.PostedFile.FileName);


				Filef.SaveAs(Server.MapPath("PDF/" + FileName));




				//SqlConnection con = new SqlConnection(conStr);


				//string strQuery = "Insert into Files(Name,DocumentContent,Extn, FilePath,DueDate,Responsibility,Title) " +
				//	"values(@Name,@DocumentContent,@Extn, @FilePath,@DueDate,@Responsibility,@Title)";


				//SqlCommand cmd = new SqlCommand(strQuery);


				//cmd.Parameters.AddWithValue("@Name", FileName);
				//cmd.Parameters.AddWithValue("@DocumentContent", documentContent);
				//cmd.Parameters.AddWithValue("@Extn", extn);
				//cmd.Parameters.AddWithValue("@FilePath", "App_Data/Files/" + FileName);
				//cmd.Parameters.AddWithValue("@DueDate", txtDueDate.Text);
				//cmd.Parameters.AddWithValue("@Responsibility", ddlResponsibility.SelectedItem.Text);
				//cmd.Parameters.AddWithValue("@Title", txtManTitle.Text);
				//cmd.CommandType = CommandType.Text;

				//cmd.Connection = con;
				//con.Open();
				//cmd.ExecuteNonQuery();
				using (SqlConnection cn = new SqlConnection(conStr))
				{

					SqlCommand cmd = new SqlCommand("StoreFile", cn);
					cmd.CommandType = CommandType.StoredProcedure;

					cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = FileName;
					cmd.Parameters.Add("@DocumentContent", SqlDbType.VarBinary).Value = documentContent;
					cmd.Parameters.Add("@Extn", SqlDbType.VarChar).Value = extn;
					cmd.Parameters.Add("@FilePath", SqlDbType.NVarChar).Value = "PDF/" + FileName;
					cmd.Parameters.Add("@DueDate", SqlDbType.DateTime).Value = txtDueDate.Text;
					cmd.Parameters.Add("@Responsibility", SqlDbType.VarChar).Value = ddlResponsibility.SelectedItem.Text;
					cmd.Parameters.Add("@Title", SqlDbType.VarChar).Value = txtManTitle.Text;

					cn.Open();

					lblMessage.Text = "Manuscript File has been Assigned to " + ddlAssignAE1.SelectedItem.Text;
					cmd.ExecuteNonQuery();
					/////////////////////////////////////
					string strQuery3 = "select UserName from Person where FullName = @FullName";
					SqlConnection con3 = new SqlConnection(conStr);

					SqlCommand cmd3 = new SqlCommand(strQuery3);


					cmd3.Parameters.AddWithValue("@FullName", ddlAssignAE1.SelectedItem.ToString());
					
					cmd3.CommandType = CommandType.Text;

					cmd3.Connection = con3;
					con3.Open();
					cmd3.ExecuteNonQuery();

					SqlDataReader reader3 = cmd3.ExecuteReader();
					reader3.Read();
					
						string username = reader3[0].ToString();
						reader3.Close();

						/////////////////////
						SqlDataReader reader = cmd.ExecuteReader();
						reader.Read();
						
							int id = Convert.ToInt32(reader[0]);
							reader.Close();

							SqlConnection con2 = new SqlConnection(conStr);


							string strQuery2 = "Insert into Review(UserName,FileID,RoleID) " +
								"values(@UserName,@FileID,@RoleID)";


							SqlCommand cmd2 = new SqlCommand(strQuery2);


							cmd2.Parameters.AddWithValue("@UserName", username);
							cmd2.Parameters.AddWithValue("@FileID", id);
							cmd2.Parameters.AddWithValue("@RoleID", 1);

							cmd2.CommandType = CommandType.Text;

							cmd2.Connection = con2;
							con2.Open();
							cmd2.ExecuteNonQuery();


							////////

							SqlConnection con = new SqlConnection(conStr);


							string strQuery = "UPDATE Submission SET FileID = @FileID WHERE ManuID = @ManuID";

							SqlCommand cmd4 = new SqlCommand(strQuery);


							cmd4.Parameters.AddWithValue("@FileID", id);
							cmd4.Parameters.AddWithValue("@ManuID", Session["maId"]);

							cmd4.CommandType = CommandType.Text;

							cmd4.Connection = con;
							con.Open();
							cmd4.ExecuteNonQuery();
						
					
				}
				
				txtManTitle.Text = "";
				txtDueDate.Text = "";

			}
		}

		protected void txtDueDate_TextChanged(object sender, EventArgs e)
		{
			if (Convert.ToDateTime(txtDueDate.Text) < DateTime.Today)
			{
				lblMessage.Text = "Due Date Can't be in back";
			}
			else
			{
				
			}

		}

		protected void lbDashboard_Click(object sender, EventArgs e)
		{
			Response.Redirect("Editor.aspx");

		}

		protected void lbAERecom_Click(object sender, EventArgs e)
		{
			pnAERecom.Visible = true;
			pAEAssign.Visible = false;
		
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
				Label2.Text = "This Manuscript has not been assigned Yet!";
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
		protected void LinkButton3_Click(object sender, EventArgs e)
		{


			Response.Redirect("EditorFinalDecision.aspx");
		}

		protected void lblAssign0_Click(object sender, EventArgs e)
		{
			Response.Redirect("AEAssign.aspx");
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