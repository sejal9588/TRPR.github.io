using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using TRPRLibrary;
using TRPRLibrary.TRPRLibraryDataSetTableAdapters;

namespace TRPR
{
    public partial class Login : System.Web.UI.Page
    {
		private static TRPRLibraryDataSet dsperson;
		private static string name = null;
		static Login()
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

		}
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }

		protected void lbEICRegisterhere_Click(object sender, EventArgs e)
		{
			Response.Redirect("Index.aspx");
			
		}

		protected void btnEICLogin_Click(object sender, EventArgs e)
		{
			UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();
			UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);
			IdentityUser user = manager.Find(txtEICName.Text, txtEICPassword.Text);
			if (user == null)
			{
				lblMessage.Text = "Username or password is incorrect.";
			}
			else
			{
				var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
				var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
				authenticationManager.SignIn(userIdentity);
				Session["Data"] = txtEICName.Text;
				DataRow person = dsperson.Person.FindByUserName(txtEICName.Text);
				lblRoleID.Text = person.ItemArray[11].ToString();
				if (lblRoleID.Text == Convert.ToString(2))
				{
					Response.Redirect("Editor.aspx?User=" + txtEICName.Text);
				}
				else
				{
					lblMessage.Text = "Invalid User";
				}
				
				

				
			}
		}

		protected void lbRegisterHere_Click(object sender, EventArgs e)
		{
			Response.Redirect("AdminSignIn.aspx");
		}
	}
}