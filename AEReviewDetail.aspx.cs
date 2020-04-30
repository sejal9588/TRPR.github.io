using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TRPR
{
    public partial class AEReviewDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
			lblTitile.Text = Session["manuTitle"].ToString();
		





		}

		protected void lbDashboard_Click(object sender, EventArgs e)
		{
			Response.Redirect("AscoEditor.aspx");
		}
	}
}