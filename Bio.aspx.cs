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
	public partial class Bio : System.Web.UI.Page
	{
		
		string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TRPR.mdf;Integrated Security=True;Connect Timeout=30";

		private static TRPRLibraryDataSet dsperson;
		private static string name = null;
		static Bio()
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
			pnEditProfile.Visible = false;
			pnMyProfile.Visible = true;
			
			lblUser.Text = Session["Data"].ToString();


			name = Session["Data"].ToString();
			lblRoleID.Visible = false;



		}


		
		protected void btnEditProfile_Click(object sender, EventArgs e)
		{
			pnEditProfile.Visible = true;
			pnMyProfile.Visible = false;
			DataRow person = dsperson.Person.FindByUserName(name);
			txtEditName.Text = dvPersonDetail.Rows[0].Cells[1].Text;
			txtEditEmail.Text = dvPersonDetail.Rows[1].Cells[1].Text;
			txtEditPhone.Text = dvPersonDetail.Rows[2].Cells[1].Text;
			txtEditCountry.Text = dvPersonDetail.Rows[3].Cells[1].Text;
			txtEditProvince.Text = dvPersonDetail.Rows[4].Cells[1].Text;
			txtEditCity.Text = dvPersonDetail.Rows[5].Cells[1].Text;
			txtEditPostal.Text = dvPersonDetail.Rows[6].Cells[1].Text;
			ddlEditInstitution.SelectedValue = person.ItemArray[9].ToString();
			ddlEditAreaOfExpertise.SelectedValue =person.ItemArray[10].ToString();


		}

		protected void btnEdit_Click(object sender, EventArgs e)
		{

			pnEditProfile.Visible = false;
			pnMyProfile.Visible = true;

			

			using (SqlConnection cn = new SqlConnection(conStr))
			{
				SqlCommand cmd = new SqlCommand("EditPerson", cn);
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.Parameters.Add("@UserName", SqlDbType.NVarChar).Value = lblUser.Text;
				cmd.Parameters.Add("@FullName", SqlDbType.VarChar).Value = txtEditName.Text;
				cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = txtEditEmail.Text;
				cmd.Parameters.Add("@Phone", SqlDbType.Char).Value = txtEditPhone.Text;
				cmd.Parameters.Add("@Country", SqlDbType.VarChar).Value = txtEditCountry.Text;
				cmd.Parameters.Add("@Provice", SqlDbType.VarChar).Value = txtEditProvince.Text;
				cmd.Parameters.Add("@City", SqlDbType.VarChar).Value = txtEditCity.Text;
				cmd.Parameters.Add("@PostalCode", SqlDbType.Char).Value = txtEditPostal.Text;
				cmd.Parameters.Add("@InstitutionID", SqlDbType.Int).Value = ddlEditInstitution.SelectedValue;
				cmd.Parameters.Add("@AreaOfExpertiseID", SqlDbType.Int).Value = ddlEditAreaOfExpertise.SelectedValue;


				cn.Open();
				cmd.ExecuteNonQuery();

			}
			refresh = true;
			dvPersonDetail.Rows[0].Cells[1].Text = txtEditName.Text;
			dvPersonDetail.Rows[1].Cells[1].Text = txtEditEmail.Text;
			dvPersonDetail.Rows[2].Cells[1].Text = txtEditPhone.Text;
			dvPersonDetail.Rows[3].Cells[1].Text = txtEditCountry.Text;
			dvPersonDetail.Rows[4].Cells[1].Text = txtEditProvince.Text;
			dvPersonDetail.Rows[5].Cells[1].Text = txtEditCity.Text;
			dvPersonDetail.Rows[6].Cells[1].Text = txtEditPostal.Text;
			dvPersonDetail.Rows[7].Cells[1].Text = ddlEditInstitution.SelectedItem.Text;
			dvPersonDetail.Rows[8].Cells[1].Text = ddlEditAreaOfExpertise.SelectedItem.Text;

		}
		private static bool refresh = true;
		protected void btnEditCancel_Click(object sender, EventArgs e)
		{
			pnEditProfile.Visible = false;
			pnMyProfile.Visible = true;


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