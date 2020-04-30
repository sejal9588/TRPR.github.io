using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TRPR
{
	public partial class EICContact : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			lblUser.Text = Session["Data"].ToString();
		}
		protected void lbLogout_Click(object sender, EventArgs e)
		{
			var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
			authenticationManager.SignOut();
			Response.Redirect("Index.aspx");
		}
	}
}