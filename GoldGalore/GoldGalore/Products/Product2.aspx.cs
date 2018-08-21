using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Products_Product2 : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		bool val1 = (System.Web.HttpContext.Current.User != null) && System.Web.HttpContext.Current.User.Identity.IsAuthenticated;
		if (!val1)
			Response.Redirect("/Account/Login.aspx");
	}
}