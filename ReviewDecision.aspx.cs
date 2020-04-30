using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TRPR
{
    public partial class ReviewDecision : System.Web.UI.Page
    {
		string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TRPR.mdf;Integrated Security=True;Connect Timeout=30";

		protected void Page_Load(object sender, EventArgs e)
        {
			lblTitile.Text = Session["manuTitle"].ToString();
			SqlConnection con = new SqlConnection(conStr);

			int id = Convert.ToInt32(Session["gvSearchId"]);
			string strQuery = "Select Name from Files WHERE Id = @FileID";

			SqlCommand cmd4 = new SqlCommand(strQuery);

			cmd4.Parameters.AddWithValue("@FileID", id);


			cmd4.CommandType = CommandType.Text;

			cmd4.Connection = con;
			con.Open();
			SqlDataReader reader = cmd4.ExecuteReader();
			reader.Read();
			string name = Convert.ToString(reader[0]);

			reader.Close();

			iframe.Attributes["src"] = "PDF\\" + name;

		}

		protected void lbDashboard_Click(object sender, EventArgs e)
		{
			Response.Redirect("AscoEditor.aspx");
		}

		protected void Button4_Click(object sender, EventArgs e)
		{
			FileInfo fi = new FileInfo(FileUpload1.FileName);
			
			string extn = fi.Extension;
			SqlConnection con = new SqlConnection(conStr);


			string strQuery = "insert into Comment (UpdatedOn,UpdatedBy,CommentToAuthor,CommentToEditor,FinalDecision,Name,DocumentContent,Extn,FilePath,FileID) values (@UpdatedOn,@UpdatedBy,@CommentToAuthor,@CommentToEditor,@FinalDecision,@Name,@DocumentContent,@Extn,@FilePath,@FileID)";

			SqlCommand cmd4 = new SqlCommand(strQuery);

				cmd4.Parameters.AddWithValue("@UpdatedOn", DateTime.Today);
				cmd4.Parameters.AddWithValue("@UpdatedBy", Session["Data"]);
				cmd4.Parameters.AddWithValue("@CommentToAuthor", txtAuthor.Text);
				cmd4.Parameters.AddWithValue("@CommentToEditor", txtEditor.Text);
				cmd4.Parameters.AddWithValue("@FinalDecision",RadioButtonList2.SelectedItem.Text );
			cmd4.Parameters.AddWithValue("@Name", FileUpload1.FileName);
			cmd4.Parameters.AddWithValue("@DocumentContent", FileUpload1.FileBytes);
			cmd4.Parameters.AddWithValue("@Extn",extn );
			cmd4.Parameters.AddWithValue("@FilePath", "App_Data/Feedback/"+ FileUpload1.FileName);
			cmd4.Parameters.AddWithValue("@FileID", Session["gvSearchId"]);

			cmd4.CommandType = CommandType.Text;

			cmd4.Connection = con;
			con.Open();
			cmd4.ExecuteNonQuery();
			lblConf.Text = " Your Recommendations has been sent to EIC successfully.";
			txtAuthor.Text = "";
			txtEditor.Text = "";
		}
	}
}