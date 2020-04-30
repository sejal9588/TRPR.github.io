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
	public partial class EICCreatePage : System.Web.UI.Page
	{
		string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TRPR.mdf;Integrated Security=True;Connect Timeout=30";

		protected void Page_Load(object sender, EventArgs e)
		{
			txtUserName.Text = Session["Data"].ToString();

			lblUser.Text = Session["Data"].ToString();

		}
		protected void btnSave_Click(object sender, EventArgs e)
		{

			using (SqlConnection cn = new SqlConnection(conStr))
			{
				SqlCommand cmd = new SqlCommand("CreatePerson", cn);
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.Parameters.Add("@UserName", SqlDbType.NVarChar).Value = txtUserName.Text;

				cmd.Parameters.Add("@FullName", SqlDbType.VarChar).Value = txtName.Text;
				cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = txtEmail.Text;
				cmd.Parameters.Add("@Phone", SqlDbType.Char).Value = txtPhone.Text;
				cmd.Parameters.Add("@Country", SqlDbType.VarChar).Value = txtCountry.Text;
				cmd.Parameters.Add("@Provice", SqlDbType.VarChar).Value = txtProvince.Text;
				cmd.Parameters.Add("@City", SqlDbType.VarChar).Value = txtCity.Text;
				cmd.Parameters.Add("@PostalCode", SqlDbType.Char).Value = txtPostalCode.Text;
				cmd.Parameters.Add("@InstitutionID", SqlDbType.Int).Value = ddlInstitution.SelectedValue;
				cmd.Parameters.Add("@AreaOfExpertiseID", SqlDbType.Int).Value = ddlAreaExpertise.SelectedValue;

				cn.Open();
				cmd.ExecuteNonQuery();


				//SqlCommand cmd3 = new SqlCommand("SaveSubmission", cn);
				//cmd3.CommandType = CommandType.StoredProcedure;

				//cmd3.Parameters.Add("@PersonName", SqlDbType.VarChar).Value = Session["Data"].ToString();
				//cmd3.ExecuteNonQuery();
			}

			//Session["Data"] = txtUserName.Text;
			Response.Redirect("EICBio.aspx");
		}

		protected void btnCancel_Click(object sender, EventArgs e)
		{
			Response.Redirect("Index.aspx");
		}

		protected void lbLogout_Click(object sender, EventArgs e)
		{
			var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
			authenticationManager.SignOut();
			Response.Redirect("Index.aspx");
		}


	}
}
