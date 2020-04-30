using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TRPRLibrary;
using TRPRLibrary.TRPRLibraryDataSetTableAdapters;


namespace TRPR
{
	public partial class SubSt1 : System.Web.UI.Page
	{

		string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TRPR.mdf;Integrated Security=True;Connect Timeout=30";
		
		//private static TRPRLibraryDataSet dskeywordDraft;
		//private static string name = null;
		//static SubSt1()
		//{

		//	dskeywordDraft = new TRPRLibraryDataSet();
		//	KeywordDraftTableAdapter daKeywords = new KeywordDraftTableAdapter();

		//	try
		//	{
		//		//daKeywords.Fill(dsperson.Person);

		//	}
		//	catch { }
		//}

		//private static int id = -1;
		private static TRPRLibraryDataSet dsperson;
		private static string name = null;
		static SubSt1()
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
		

			if (Request.QueryString["ShowPanel"] == "1")
			{

				Panel1.Visible = false;
				Panel2.Visible = false;
				Panel3.Visible = false;
				Panel4.Visible = false;
				Panel5.Visible = true;
				Panel6.Visible = false;
				pnFile.Visible = false;

				btnPrevious5.Visible = false;
				//id = Convert.ToInt32(Session["id"]);
				//using (SqlConnection cn = new SqlConnection(conStr))
				//{
				//	SqlCommand cmd = new SqlCommand("GetDocument", cn);
				//	cmd.CommandType = CommandType.StoredProcedure;
				//	cmd.Parameters.Add("@Id", SqlDbType.Int).Value = id;
				//	cmd.Parameters.Add("@UploadBy", SqlDbType.Int).Value = Session["Data"];

				//	cn.Open();
				dvGetDraft.Visible = true;
				lbltype.Text = dvGetDraft.Rows[1].Cells[1].Text; 
					lbltitle.Text = dvGetDraft.Rows[2].Cells[1].Text;
					lblabstract.Text = dvGetDraft.Rows[3].Cells[1].Text;
					lblFile1.Text = dvGetDraft.Rows[4].Cells[1].Text;
					lblFile2.Text = dvGetDraft.Rows[6].Cells[1].Text;

					lblkeyword.Text = dvGetDraft.Rows[11].Cells[1].Text;
					lblconflict.Text = dvGetDraft.Rows[10].Cells[1].Text;

				dvGetDraft.Visible = false;

				//}

			}
			else
			{
				byte[] documentContent = FileUpload1.FileBytes;
				byte[] documentContentf = FileUpload2.FileBytes;

				lblUser.Text = Session["Data"].ToString();
				Panel1.Visible = true;
				Panel2.Visible = false;
				Panel3.Visible = false;
				Panel4.Visible = false;
				Panel5.Visible = false;
				Panel6.Visible = false;
				pnFile.Visible = false;
				dvGetDraft.Visible = false;
			}
		}

		protected void btnSave1_Click(object sender, EventArgs e)
		{
			Panel1.Visible = false;
			Panel2.Visible = true;
			try
			{

				lbltype.Text = this.rdomanuType.SelectedValue;
				lbltitle.Text = this.txtTitle.Text;
				lblabstract.Text = this.txtAbstract.Text;

			}
			catch
			{

			}


		}

		
		protected void btnSave_Click(object sender, EventArgs e)
		{

			Panel1.Visible = false;

			//lblFile1.Text = this.FileUpload1.FileName;
			//lblFile2.Text = this.FileUpload2.FileName;


			//if (FileUpload1.HasFiles && FileUpload2.HasFiles)
			//{

			//	lblCover.Text = FileUpload1.FileName;
			//	fileName1 = FileUpload1.FileName;
			//	contents1 = FileUpload1.FileBytes;
			//	lblUploadDate.Text = DateTime.Today.ToShortDateString();
			//	lblUser1.Text = Session["Data"].ToString();

			//	lblSecCover.Text = FileUpload2.FileName;
			//	fileName2 = FileUpload2.FileName;
			//	contents2 = FileUpload2.FileBytes;
			//	lblSecUploadDate.Text = DateTime.Today.ToShortDateString();
			//	lblUser2.Text = Session["Data"].ToString();
			//	pnFile.Visible = true;
			//}
			//else
			//{
			//	lblRemindFiletoUpload.Text = "You have not uploaded any file.";
			//	pnFile.Visible = false;
			//	Panel3.Visible = false;
			//}

			if (contents1 !=null && contents2!=null)
			{
				lblRemindFiletoUpload.Text = "";
				Panel2.Visible = false;
				
				Panel3.Visible = true;
				
				
			}
			else
			{
				lblRemindFiletoUpload.Text = "You have not uploaded any file.";
				Panel2.Visible = true;
				Panel3.Visible = false;
				
			}

			//if (lblCover.Text == null && lblSecCover.Text == null)
			//{
			//	lblRemindFiletoUpload.Text = "You have not uploaded any file.";
			//	Panel2.Visible = true;
			//	Panel3.Visible = false;
			//}
			//else
			//{
			//	Panel3.Visible = true;
			//}
		}
		protected void btnPrevious_Click(object sender, EventArgs e)
		{
			Panel1.Visible = true;
			Panel2.Visible = false;
			
		}


		protected void btnSave3_Click(object sender, EventArgs e)
		{
			Panel1.Visible = false;
			if (lbKeyword1.Items.Count == 0)
			{
				lblKeyMessage.Text = "You have added no keyword.";
				Panel3.Visible = true;
				Panel4.Visible = false;
			}
			
			else
			{
				Panel4.Visible = true;
			}
			
		}
		protected void btnPrevious3_Click(object sender, EventArgs e)
		{
			Panel1.Visible = false;
			Panel2.Visible = true;
			pnFile.Visible = true;
			Panel3.Visible = false;
			
		}

		protected void btnSave4_Click(object sender, EventArgs e)
		{

			Panel1.Visible = false;
			Panel5.Visible = true;


			lbltype.Text = rdomanuType.SelectedValue;
			lbltitle.Text = txtTitle.Text;
			lblabstract.Text = txtAbstract.Text;
			lblkeyword.Text = "";


			foreach (ListItem l in lbKeyword1.Items)
			{
				lblkeyword.Text += l.Text + ", ";

				continue;


			}


			lblFile1.Text = lblCover.Text;
			lblFile2.Text = lblSecCover.Text;

			if (radioConflict.SelectedItem.ToString() == "No")
			{

				txtConflict.Text = "No conflict of Interest.";

			}
			else
			{
				

			}
			lblconflict.Text = txtConflict.Text;
			


		}
		protected void btnPrevious4_Click(object sender, EventArgs e)
		{
			Panel1.Visible = false;
			Panel4.Visible = false;
			Panel3.Visible = true;
		}
		protected void btnPrevious5_Click(object sender, EventArgs e)
		{
			Panel1.Visible = false;
			Panel5.Visible = false;
			Panel4.Visible = true;
		}
		private static List<string> words;

		protected void btnUpload1_Click(object sender, EventArgs e)
		{
			words = new List<string>();

			words.Add(txtKeywords.Text);

			for (int i = 0; i < words.Count; i++)
			{

				lbKeyword1.Items.Add(words[i]);
				txtKeywords.Text = "";
			}
			Panel1.Visible = false;
			Panel3.Visible = true;

			lblKeyMessage.Text = "";
			
		}

		private static int roleID1;
		protected void btnSave5_Click1(object sender, EventArgs e)
		{


			Panel1.Visible = false;
			Panel5.Visible = false;

			Panel6.Visible = true;

			

			if (Request.QueryString["ShowPanel"] == "1")
			{
				DataTable dt = new DataTable();
				using (SqlConnection cn = new SqlConnection(conStr))
				{
					SqlCommand cmd = new SqlCommand("DraftContent", cn);
					cmd.CommandType = CommandType.StoredProcedure;
					cmd.Parameters.Add("@Id", SqlDbType.Int).Value = Session["id"];
					cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = dvGetDraft.Rows[4].Cells[1].Text ;
					cmd.Parameters.Add("@NameF", SqlDbType.VarChar).Value = dvGetDraft.Rows[6].Cells[1].Text ;
					cn.Open();
					SqlDataReader reader = cmd.ExecuteReader();
					dt.Load(reader);
				}
				
				byte[] documentBytes = (byte[])dt.Rows[0]["DocumentContent"];
				byte[] documentBytesf = (byte[])dt.Rows[0]["DocumentContentF"];
				using (SqlConnection cn = new SqlConnection(conStr))
				{

					SqlCommand cmd = new SqlCommand("SaveDocument", cn);
					cmd.CommandType = CommandType.StoredProcedure;

					cmd.Parameters.Add("@ManuType", SqlDbType.VarChar).Value = dvGetDraft.Rows[1].Cells[1].Text;
					cmd.Parameters.Add("@ManuTitle", SqlDbType.VarChar).Value = dvGetDraft.Rows[2].Cells[1].Text;
					cmd.Parameters.Add("@ManuAbstract", SqlDbType.VarChar).Value = dvGetDraft.Rows[3].Cells[1].Text;
					cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = dvGetDraft.Rows[4].Cells[1].Text;
					cmd.Parameters.Add("@Content", SqlDbType.VarBinary).Value = documentBytes;
					cmd.Parameters.Add("@Extn", SqlDbType.VarChar).Value = dvGetDraft.Rows[5].Cells[1].Text;
					cmd.Parameters.Add("@FilePath", SqlDbType.NVarChar).Value = "App_Data/Files/" + dvGetDraft.Rows[4].Cells[1].Text;
					cmd.Parameters.Add("@Namef", SqlDbType.VarChar).Value = dvGetDraft.Rows[6].Cells[1].Text;
					cmd.Parameters.Add("@Contentf", SqlDbType.VarBinary).Value = documentBytesf;
					cmd.Parameters.Add("@Extnf", SqlDbType.VarChar).Value = dvGetDraft.Rows[7].Cells[1].Text;
					cmd.Parameters.Add("@FilePathF", SqlDbType.NVarChar).Value = "App_Data/Files/" + dvGetDraft.Rows[6].Cells[1].Text;
					cmd.Parameters.Add("@UploadOn", SqlDbType.VarChar).Value = DateTime.Today;
					cmd.Parameters.Add("@UploadBy", SqlDbType.VarChar).Value = Session["Data"].ToString();
					cmd.Parameters.Add("@ConflictOfInterest", SqlDbType.VarChar).Value = dvGetDraft.Rows[10].Cells[1].Text;

					cn.Open();

					SqlDataReader reader = cmd.ExecuteReader();
					reader.Read();
					int id = Convert.ToInt32(reader[0]);
					reader.Close();
					string[] words = lblkeyword.Text.Split(',');

					foreach (var word in words)
					{

						SqlCommand cmd2 = new SqlCommand("usp_InsertKeyword", cn);
						cmd2.CommandType = CommandType.StoredProcedure;
						cmd2.Parameters.Add("@keywords", SqlDbType.VarChar).Value = $"{word}";
						cmd2.Parameters.Add("@ManuID", SqlDbType.VarChar).Value = id;
						cmd2.ExecuteNonQuery();
					}
					SqlCommand cmd3 = new SqlCommand("SaveSubmission", cn);
					cmd3.CommandType = CommandType.StoredProcedure;

					cmd3.Parameters.Add("@PersonName", SqlDbType.VarChar).Value = Session["Data"].ToString();
					cmd3.Parameters.Add("@ManuID", SqlDbType.Int).Value = id;
					cmd3.Parameters.Add("@RoleID", SqlDbType.Int).Value = 3;
					cmd3.ExecuteNonQuery();

					//////////////////////////////////////////////
					SqlConnection conid2 = new SqlConnection(conStr);


					string strQueryid2 = "Select RoleID from Person WHERE UserName = @UserName";

					SqlCommand cmdid2 = new SqlCommand(strQueryid2);

					cmdid2.Parameters.AddWithValue("@UserName", Session["Data"]);


					cmdid2.CommandType = CommandType.Text;

					cmdid2.Connection = conid2;
					conid2.Open();
					SqlDataReader readerid2 = cmdid2.ExecuteReader();
					readerid2.Read();
					if (readerid2.HasRows)
					{
						int roleID1 = Convert.ToInt32(readerid2[0]);

						readerid2.Close();
					}
						///
						SqlConnection con5 = new SqlConnection(conStr);


					string strQuery5 = "UPDATE Person SET RoleID = @RoleID WHERE UserName = @UserName";

					SqlCommand cmd5 = new SqlCommand(strQuery5);


					DataRow person5 = dsperson.Person.FindByUserName(lblUser.Text);

					if (roleID1.ToString() == Convert.ToString(1))
					{

						cmd5.Parameters.AddWithValue("@RoleID", 1);
					}
					else 
					{
						cmd5.Parameters.AddWithValue("@RoleID", 3);
					}
					cmd5.Parameters.AddWithValue("@UserName", Session["Data"]);

					cmd5.CommandType = CommandType.Text;

					cmd5.Connection = con5;
					con5.Open();
					cmd5.ExecuteNonQuery();

					///////////////////////
					SqlConnection conid = new SqlConnection(conStr);

				
					string strQueryid = "Select RoleID from Person WHERE UserName = @UserName";

					SqlCommand cmdid = new SqlCommand(strQueryid);

					cmdid.Parameters.AddWithValue("@UserName", Session["Data"]);


					cmdid.CommandType = CommandType.Text;

					cmdid.Connection = conid;
					conid.Open();
					SqlDataReader readerid = cmdid.ExecuteReader();
					readerid.Read();
					int roleID = Convert.ToInt32(readerid[0]);

					readerid.Close();
					///////////////////////////
					SqlConnection con = new SqlConnection(conStr);


					string strQuery = "UPDATE Person SET RoleID = @RoleID WHERE UserName = @UserName";

					SqlCommand cmd4 = new SqlCommand(strQuery);
					DataRow person = dsperson.Person.FindByUserName(lblUser.Text);
					
					if (roleID == 1)
					{

						cmd4.Parameters.AddWithValue("@RoleID", 1);
					}
					else
					{
						cmd4.Parameters.AddWithValue("@RoleID", 3);
					}
					cmd4.Parameters.AddWithValue("@UserName", Session["Data"]);
					
					cmd4.CommandType = CommandType.Text;

					cmd4.Connection = con;
					con.Open();
					cmd4.ExecuteNonQuery();





				}

			}
			else
			{
				FileInfo fi = new FileInfo(fileName1);
				byte[] documentContent = contents1;
				string name = fi.Name;
				string extn = fi.Extension;


				FileInfo fif = new FileInfo(fileName2);
				byte[] documentContentf = contents2;
				string namef = fif.Name;
				string extnf = fif.Extension;

				

				using (SqlConnection cn = new SqlConnection(conStr))
				{

					SqlCommand cmd = new SqlCommand("SaveDocument", cn);
					cmd.CommandType = CommandType.StoredProcedure;

					cmd.Parameters.Add("@ManuType", SqlDbType.VarChar).Value = rdomanuType.Text;
					cmd.Parameters.Add("@ManuTitle", SqlDbType.VarChar).Value = txtTitle.Text;
					cmd.Parameters.Add("@ManuAbstract", SqlDbType.VarChar).Value = txtAbstract.Text;
					cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = lblCover.Text;
					cmd.Parameters.Add("@Content", SqlDbType.VarBinary).Value = documentContent;
					cmd.Parameters.Add("@Extn", SqlDbType.VarChar).Value = extn;
					cmd.Parameters.Add("@FilePath", SqlDbType.NVarChar).Value = "App_Data/Files/" + lblCover.Text;
					cmd.Parameters.Add("@Namef", SqlDbType.VarChar).Value = lblSecCover.Text;
					cmd.Parameters.Add("@Contentf", SqlDbType.VarBinary).Value = documentContentf;
					cmd.Parameters.Add("@Extnf", SqlDbType.VarChar).Value = extn;
					cmd.Parameters.Add("@FilePathF", SqlDbType.NVarChar).Value = "App_Data/Files/" + lblSecCover.Text; 
					cmd.Parameters.Add("@UploadOn", SqlDbType.VarChar).Value = DateTime.Today;
					cmd.Parameters.Add("@UploadBy", SqlDbType.VarChar).Value = Session["Data"].ToString();
					cmd.Parameters.Add("@ConflictOfInterest", SqlDbType.VarChar).Value = txtConflict.Text;

					cn.Open();

					SqlDataReader reader = cmd.ExecuteReader();
					reader.Read();
					int id = Convert.ToInt32(reader[0]);
					reader.Close();

					foreach (ListItem item in lbKeyword1.Items)
					{

						SqlCommand cmd2 = new SqlCommand("usp_InsertKeyword", cn);
						cmd2.CommandType = CommandType.StoredProcedure;
						cmd2.Parameters.Add("@keywords", SqlDbType.VarChar).Value = item.Text;
						cmd2.Parameters.Add("@ManuID", SqlDbType.VarChar).Value = id;
						cmd2.ExecuteNonQuery();
					}

					SqlCommand cmd3 = new SqlCommand("SaveSubmission", cn);
					cmd3.CommandType = CommandType.StoredProcedure;

					cmd3.Parameters.Add("@PersonName", SqlDbType.VarChar).Value = Session["Data"].ToString();
					cmd3.Parameters.Add("@ManuID", SqlDbType.Int).Value = id;


					cmd3.Parameters.Add("@RoleID", SqlDbType.Int).Value = 3;
					cmd3.ExecuteNonQuery();

					/////////////////////////////
					SqlConnection con = new SqlConnection(conStr);


					string strQuery = "UPDATE Person SET RoleID = @RoleID WHERE UserName = @UserName";

					SqlCommand cmd4 = new SqlCommand(strQuery);


					DataRow person = dsperson.Person.FindByUserName(lblUser.Text);

					if (person.ItemArray[11].ToString() == Convert.ToString(1))
					{

						cmd4.Parameters.AddWithValue("@RoleID", 1);
					}
					else
					{
						cmd4.Parameters.AddWithValue("@RoleID", 3);
					}
					cmd4.Parameters.AddWithValue("@UserName", Session["Data"]);

					cmd4.CommandType = CommandType.Text;

					cmd4.Connection = con;
					con.Open();
					cmd4.ExecuteNonQuery();
				}

			}

		}


		protected void btnSave6_Click(object sender, EventArgs e)
		{
			Response.Redirect("Author.aspx");
		}
		protected void lbLogout_Click(object sender, EventArgs e)
		{
			var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
			authenticationManager.SignOut();
			Response.Redirect("Index.aspx");
		}
		private static string fileName1,fileName2;
		private static byte[] contents1,contents2;

		protected void btnUpload_Click(object sender, EventArgs e)
		{
			
			Panel1.Visible = false;
			Panel2.Visible = true;

			
			if (FileUpload1.HasFiles && FileUpload2.HasFiles)
			{
				FileUpload1.SaveAs(Server.MapPath("App_Data/Files/" + FileUpload1.FileName));
				FileUpload2.SaveAs(Server.MapPath("App_Data/Files/" + FileUpload2.FileName ));
				lblCover.Text = FileUpload1.FileName;
				fileName1 = FileUpload1.FileName;
				contents1 = FileUpload1.FileBytes;
				lblUploadDate.Text = DateTime.Today.ToShortDateString();
				lblUser1.Text = Session["Data"].ToString();
				
				lblSecCover.Text = FileUpload2.FileName;
				fileName2 = FileUpload2.FileName;
				contents2 = FileUpload2.FileBytes;
				lblSecUploadDate.Text = DateTime.Today.ToShortDateString();
				lblUser2.Text = Session["Data"].ToString();
				pnFile.Visible = true;
				lblRemindFiletoUpload.Text = "";
			}
			else
			{
				lblRemindFiletoUpload.Text = "You have not uploaded any file.";
				pnFile.Visible = false;
				
			}
		
			//if(lblCover.Text ==null && lblSecCover.Text == null)
			//{
			//	lblRemindFiletoUpload.Text = "You have not uploaded any file.";
			//	Panel2.Visible = true;
			//	Panel3.Visible = false;
			//}
			//else
			//{
			//	Panel3.Visible = true;
			//}
			
				
			

		}

		protected void btnSaveDraft_Click(object sender, EventArgs e)
		{
			Panel1.Visible = false;
			Panel5.Visible = false;

			Panel6.Visible = true;

			FileInfo fi = new FileInfo(fileName1);
			byte[] documentContent = contents1;
			string name = fi.Name;
			string extn = fi.Extension;


			FileInfo fif = new FileInfo(fileName2);
			byte[] documentContentf = contents2;
			string namef = fif.Name;
			string extnf = fif.Extension;

			

			using (SqlConnection cn = new SqlConnection(conStr))
			{

				SqlCommand cmd4 = new SqlCommand("SaveDocumentDraft", cn);
				cmd4.CommandType = CommandType.StoredProcedure;

				cmd4.Parameters.Add("@ManuType", SqlDbType.VarChar).Value = rdomanuType.Text;
				cmd4.Parameters.Add("@ManuTitle", SqlDbType.VarChar).Value = txtTitle.Text;
				cmd4.Parameters.Add("@ManuAbstract", SqlDbType.VarChar).Value = txtAbstract.Text;
				cmd4.Parameters.Add("@Name", SqlDbType.VarChar).Value = lblCover.Text;
				cmd4.Parameters.Add("@Content", SqlDbType.VarBinary).Value = documentContent;
				cmd4.Parameters.Add("@Extn", SqlDbType.VarChar).Value = extn;
				cmd4.Parameters.Add("@FilePath", SqlDbType.NVarChar).Value = "App_Data/Files/" + lblCover.Text;
				cmd4.Parameters.Add("@Namef", SqlDbType.VarChar).Value = lblSecCover.Text;
				cmd4.Parameters.Add("@Contentf", SqlDbType.VarBinary).Value = documentContentf;
				cmd4.Parameters.Add("@Extnf", SqlDbType.VarChar).Value = extnf;
				cmd4.Parameters.Add("@FilePathF", SqlDbType.NVarChar).Value = "App_Data/Files/" + lblSecCover.Text;
				cmd4.Parameters.Add("@UploadOn", SqlDbType.VarChar).Value = DateTime.Today;
				cmd4.Parameters.Add("@UploadBy", SqlDbType.VarChar).Value = Session["Data"].ToString();
				cmd4.Parameters.Add("@ConflictOfInterest", SqlDbType.VarChar).Value = txtConflict.Text;

				cn.Open();

				SqlDataReader reader = cmd4.ExecuteReader();
				reader.Read();
				int id1 = Convert.ToInt32(reader[0]);
				reader.Close();
				
				foreach (ListItem item in lbKeyword1.Items)
				{


					SqlCommand cmd3 = new SqlCommand("usp_InsertKeywordDraft", cn);
					cmd3.CommandType = CommandType.StoredProcedure;

					cmd3.Parameters.Add("@keywords", SqlDbType.VarChar).Value = item.Text;
					cmd3.Parameters.Add("@ManuID", SqlDbType.VarChar).Value = id1;
					cmd3.ExecuteNonQuery();
				}
				Session["file1"] = (byte[])documentContent;
				Session["filef"] = (byte[])documentContentf;
				Response.Redirect("Author.aspx");

			}
		}

		protected void btnRemove_Click(object sender, EventArgs e)
		{
			Panel1.Visible = false;
			Panel3.Visible = true;
			if (lbKeyword1.Text != null)
			{
				
				lbKeyword1.Items.Remove(lbKeyword1.SelectedItem);
			}
			
		}

		protected void radioConflict_SelectedIndexChanged(object sender, EventArgs e)
		{
			Panel1.Visible = false;
			Panel4.Visible = true;
			if (radioConflict.SelectedItem.ToString() == "No")
			{
				pncon.Visible = false;
				
				
			}
			else
			{
				pncon.Visible = true;
			
			}
		}


	}
}