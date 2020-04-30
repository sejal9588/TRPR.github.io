using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;

namespace TRPR
{
	public partial class AssignRole : System.Web.UI.Page
	{
		string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TRPR.mdf;Integrated Security=True;Connect Timeout=30";

		protected void Page_Load(object sender, EventArgs e)
		{
			

			DataTable dt = new DataTable();
			using (SqlConnection cn = new SqlConnection(conStr))
			{
				SqlCommand cmd = new SqlCommand("DraftDetailForFile", cn);
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.Parameters.Add("@Id", SqlDbType.Int).Value = Session["idCovers"];

				cn.Open();
				SqlDataReader reader = cmd.ExecuteReader();


				dt.Load(reader);
				string name = dt.Rows[0]["Name"].ToString();
				byte[] documentBytes = (byte[])dt.Rows[0]["DocumentContent"];


				reader.Close();


				iframe.Attributes["src"] = "~Files\\" + name;
			}
		}
		
	
	}
}