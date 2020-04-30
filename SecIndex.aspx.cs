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
	public partial class SecIndex : System.Web.UI.Page
	{
		string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TRPR.mdf;Integrated Security=True;Connect Timeout=30";

		private static TRPRLibraryDataSet dsperson;
		private static string name = null;
		static SecIndex()
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
			dvRole.Visible = false;
			lblRoleID.Visible = false;
			lblUser.Text = Session["Data"].ToString();
			
		}
		protected void lbLogout_Click(object sender, EventArgs e)
		{
			var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
			authenticationManager.SignOut();
			Response.Redirect("Index.aspx");
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
	}
}