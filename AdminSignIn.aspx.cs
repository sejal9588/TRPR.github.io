using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TRPR
{
	public partial class AdminSignIn : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btnCancel_Click(object sender, EventArgs e)
		{
			Response.Redirect("Index.aspx");
		}

		protected void btnEICRegister_Click(object sender, EventArgs e)
		{
			UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();
			UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);
			IdentityUser user = new IdentityUser(txtEICName.Text);
			IdentityResult idResult = manager.Create(user, txtEICPassword.Text);
			if (idResult.Succeeded)
			{

				lblMessage.Text = "User " + user.UserName + " was created successfully!";
				var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
				var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
				authenticationManager.SignIn(userIdentity);
				Session["Data"] = txtEICName.Text;
				Server.Transfer("EICCreatePage.aspx");

			}
			else
			{
				lblMessage.Text = idResult.Errors.FirstOrDefault();
			}
		}

		protected void lbLoginHere_Click(object sender, EventArgs e)
		{
			Response.Redirect("Login.aspx");
		}
	}
}