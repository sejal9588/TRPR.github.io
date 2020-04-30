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
    public partial class SearchAE : System.Web.UI.Page
    {
		private static TRPRLibraryDataSet dsAE;
		private static DataRow[] rows;

		static SearchAE()
		{
			dsAE = new TRPRLibraryDataSet();
			
			PersonTableAdapter daPerson = new PersonTableAdapter();
			try
			{
				daPerson.Fill(dsAE.Person);
				

			}
			catch { }
		}
		protected void Page_Load(object sender, EventArgs e)
        {
            gvAESearch.Visible = false;
            gvAllAE.Visible = true;
			gvAllAE.Columns[4].Visible = false;
			gvAESearch.Columns[4].Visible = false;
		}


      

        protected void btnSearchCountry_Click(object sender, EventArgs e)
        {
            gvAllAE.Visible = false;
            gvAESearch.Visible = true;
        }

        protected void btnSearchInstitution_Click(object sender, EventArgs e)
        {
            gvAllAE.Visible = false;
            gvAESearch.Visible = true;
        }

        protected void btnSearchName_Click(object sender, EventArgs e)
        {
            gvAllAE.Visible = false;
            gvAESearch.Visible = true;

			



		}
		

		protected void lbAllAEDet_Click(object sender, EventArgs e)
        {
            Response.Redirect("AEDetail.aspx");
        }

      

        protected void lblAEDetail_Click(object sender, EventArgs e)
        {
            Response.Redirect("AEDetail.aspx");
        }

        

		protected void btnAddAE_Click(object sender, EventArgs e)
		{

			try
			{
				DataRow r = dsAE.Person.NewRow();

				r[1] = this.txtFullName.Text;
				r[2] = this.txtEmail.Text;
				r[3] = this.txtPhone.Text;
				r[4] = this.txtCountry.Text;
				r[5] = this.txtProvince.Text;
				r[6] = this.txtCity.Text;
				r[7] = this.txtPostalCode.Text;
				r[8] = DateTime.Today;
				r[9] = this.ddlInstitution.SelectedValue.ToString();
				r[10] = this.ddlAreaExpertise.SelectedValue.ToString();

				dsAE.Person.Rows.Add(r);

				this.Save();

			}
			catch
			{
				// Label1.Text = "Unable to create customer";
			}

		}

		private void Save()
		{

			PersonTableAdapter daPerson = new PersonTableAdapter();

			try
			{

				daPerson.Update(dsAE.Person);
				dsAE.AcceptChanges();
				dsAE.Person.Clear();
				daPerson.Fill(dsAE.Person);
				//Label1.Text = "data saved";

			}
			catch
			{
				dsAE.RejectChanges();

				//Label1.Text = "error";
			}
			Response.Redirect("SearchAE.aspx");



		}

		protected void LinkButton1_Click(object sender, EventArgs e)
		{
		
			
			
		}

		protected void lbInviteAll_Click(object sender, EventArgs e)
		{
			
		}

		protected void gvAESearch_SelectedIndexChanged(object sender, EventArgs e)
		{
			gvAESearch.Columns[4].Visible = true;
			//Session["EICEmail"] = dsAE.Person.FindByUserName(Session["Data"].ToString()).Email;
			Session["AEName"] = gvAESearch.SelectedDataKey.Value;
			Session["FullName"] = gvAESearch.SelectedRow.Cells[0].Text;
			Response.Redirect("InviteForEIC.aspx");
		}

		protected void gvAllAE_SelectedIndexChanged(object sender, EventArgs e)
		{
			gvAllAE.Columns[4].Visible = true;
			Session["AEName"] = gvAllAE.SelectedDataKey.Value;
			Session["FullName"] = gvAllAE.SelectedRow.Cells[0].Text;
			//Session["EICEmail"] = dsAE.Person.FindByUserName(Session["Data"].ToString()).Email;
			Response.Redirect("InviteForEIC.aspx");
		}

		protected void lbDashboard_Click(object sender, EventArgs e)
		{
			Response.Redirect("Editor.aspx");
		}
	}
}