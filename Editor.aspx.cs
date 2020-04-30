using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TRPRLibrary;
using TRPRLibrary.TRPRLibraryDataSetTableAdapters;

namespace TRPR
{
    public partial class Editor : System.Web.UI.Page
    {
		private static TRPRLibraryDataSet dsManuscript;
		private static DataRow[] rows;

		static Editor()
		{
			dsManuscript = new TRPRLibraryDataSet();
			ManuscriptTableAdapter daPerson = new ManuscriptTableAdapter();
			KeywordTableAdapter dakeyword = new KeywordTableAdapter();
		
			try
			{
				daPerson.Fill(dsManuscript.Manuscript);

			}
			catch { }
		}
		protected void Page_Load(object sender, EventArgs e)
        {
			lblEICName.Text = Session["Data"].ToString();
			lblViewSubmissions.Text = gvManu.Rows.Count.ToString();
			gvManusearch.Visible = false;
			gvAllManuSearch.Visible = false;
			gvKeywordSearch.Visible = false;
			gvAllManuSearch.Columns[0].Visible = false;
			gvInvitationResponse.Columns[0].Visible = false;
			gvAERecom.Columns[0].Visible = false;
			gvKeywordSearch.Columns[0].Visible = false;
			gvManu.Columns[0].Visible = false;
			lblAEInvitationResponse.Text = gvInvitationResponse.Rows.Count.ToString();
			lbAEREC.Text = gvAERecom.Rows.Count.ToString();
		}

		protected void lbLogout_Click(object sender, EventArgs e)
		{
			var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
			authenticationManager.SignOut();
			Response.Redirect("Index.aspx");
		}
		protected void lbAssignAE_Click(object sender, EventArgs e)
        {
            Response.Redirect("AEAssign.aspx");
        }

        protected void lbInviteAE_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchAE.aspx");
        }

      
		//private static int id = -1;
		
		//protected void gvManu_SelectedIndexChanged(object sender, EventArgs e)
		//{
		//	GridViewRow row = gvManu.SelectedRow;
		//	//string name = gvManu.Rows[RowIndex].Cells[1].Text;
		//	string name = gvManu.DataKeys[RowIndex]["Id"].ToString();
		//	Response.Redirect("ManuInfo.aspx?man=" + name);


		//	id = Convert.ToInt32(gvManu.SelectedRow.Cells[0].Text);
		//	DataRow manu = dsManuscript.Manuscript.FindById(id);


		//	if (manu != null)
		//	{

				//Session["id"] = gvManu.SelectedRow.Cells[0].Text.ToString();
				//if (gvManu.SelectedIndex != -1)
				//{
				//	Session["index"] = gvManu.SelectedIndex;
				//	Server.Transfer("ManuInfo.aspx");
				//}
				
					
		//	}
		//}
		
		protected void btnSearch_Click(object sender, EventArgs e)
		{



			if (txtManuType.Text != "")
			{
				gvManusearch.Visible = true;
			
				gvAllManuSearch.Visible = false;
				gvKeywordSearch.Visible = false;
				this.gvManusearch.Columns.Clear();
				if (dsManuscript.Manuscript.Count > 0)
				{
					string criteria = GetManuCriteria();
					rows = (criteria.Length > 0) ? dsManuscript.Manuscript.Select(criteria) : dsManuscript.Manuscript.Select();
					DisplayManu();
				}
				
			}
			else if (ddlManuAuthor.SelectedIndex != 0 || ddlManuSearch.SelectedIndex != 0)
			{

				gvAllManuSearch.Visible = true;
				gvKeywordSearch.Visible = false;
				gvManusearch.Visible = false;

			}
			else
			{


				gvKeywordSearch.Visible = true;
				gvManusearch.Visible = false;
				gvAllManuSearch.Visible = false;

			}

				
			
		}
		private static bool refresh = true;
		private string GetManuCriteria()
		{
			string criteria = "";
			criteria += (this.txtManuType.Text.Length > 0) ? "ManuType Like '" + this.txtManuType.Text + "*'" 
		: (this.txtManuType.Text.Length > 0) ? "ManuType Like '" + this.txtManuType.Text + "*'" : "";
			

			return criteria;
		}


		private void DisplayManu()
		{
			// if (this.IsPostBack) return;
			refresh = true;
			DataTable dt = new DataTable();
			
			dt.Columns.Add("Manuscript Type");
			dt.Columns.Add("Manuscript Title");
			
		
			dt.Columns.Add("Author");
			
			foreach (DataRow r in rows)
			{
				DataRow nr = dt.NewRow();
			
				nr[0] = r.ItemArray[1].ToString();
				nr[1] = r.ItemArray[2].ToString();
				
			
				nr[2] = r.ItemArray[11].ToString();
				
				
				dt.Rows.Add(nr);
			}
			gvManusearch.DataSource = dt;
			gvManusearch.DataBind();
		}

		

		protected void gvManu_SelectedIndexChanged(object sender, EventArgs e)
		{
			gvManu.Columns[0].Visible = true;
			Session["maId"] = gvManu.SelectedDataKey.Value;
			Session["manId"] = gvManu.SelectedRow.Cells[2].Text;
			Server.Transfer("ManuInfo.aspx");
		
		}

		protected void LinkButton1_Click(object sender, EventArgs e)
		{
			Response.Redirect("SearchAE.aspx");
		}

		protected void lblInvite_Click(object sender, EventArgs e)
		{
			Response.Redirect("SearchAE.aspx");
		}

		protected void lblInviteType_Click(object sender, EventArgs e)
		{
			Response.Redirect("SearchAE.aspx");
		}

		protected void lbAddAE_Click(object sender, EventArgs e)
		{
			Response.Redirect("AddAE.aspx");
		}

		protected void gvAERecom_SelectedIndexChanged(object sender, EventArgs e)
		{
			gvAERecom.Columns[0].Visible = true;
			Session["gvAERecomId"] = gvAERecom.SelectedDataKey.Value;
			Server.Transfer("EditorFinalDecision.aspx?ShowPanel=1");
			
				
		}
	}
}