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
	public partial class ReviewPrev : System.Web.UI.Page
	{
		private static TRPRLibraryDataSet dsperson;
		private static string name = null;
		static ReviewPrev()
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
			lblRoleID.Visible = false;
			lblUser.Text = Session["Data"].ToString();
		}
		protected void lbLogout_Click(object sender, EventArgs e)
		{
			var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
			authenticationManager.SignOut();
			Response.Redirect("Index.aspx");
		}
		string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TRPR.mdf;Integrated Security=True;Connect Timeout=30";

		protected void btnSend_Click(object sender, EventArgs e)
		{
			SqlConnection con = new SqlConnection(conStr);


			string strQuery2 = "Insert into ReviewPrev(Name,Email,Message,SentOn,PersonName) " +
				"values(@Name,@Email,@Message,@SentOn,@PersonName)";


			SqlCommand cmd2 = new SqlCommand(strQuery2);


			cmd2.Parameters.AddWithValue("@Name", txtName.Text);
			cmd2.Parameters.AddWithValue("@Email", txtEmail.Text);
			cmd2.Parameters.AddWithValue("@Message", txtMessage.Text);
			cmd2.Parameters.AddWithValue("@SentOn", DateTime.Today);
			cmd2.Parameters.AddWithValue("@PersonName", Session["Data"]);
			

			cmd2.CommandType = CommandType.Text;

			cmd2.Connection = con;
			con.Open();
			cmd2.ExecuteNonQuery();

			txtName.Text = "";
			txtEmail.Text = "";
			txtMessage.Text = "";
			lblMessage.Text = "Message has been sent to EIC";
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
			if (readerid.HasRows)
			{
				int roleID = Convert.ToInt32(readerid[0]);

				readerid.Close();
				//DataRow person = dsperson.Person.FindByUserName(lblUser.Text);
				//lblRoleID.Text = person.ItemArray[11].ToString();
				if (roleID.ToString() == Convert.ToString(1))
				{
					Response.Redirect("AscoEditor.aspx");
				}
				else
				{
					Response.Redirect("ReviewPrev.aspx");
				}
			}
			else
			{
				Response.Redirect("ReviewPrev.aspx");
			}
		}
	}
}