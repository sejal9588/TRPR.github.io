using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.Owin;
using Owin;
using Microsoft.Owin.Security.Cookies;
using Microsoft.AspNet.Identity;

[assembly: OwinStartup(typeof(TRPR.Startup))]

namespace TRPR
{
	public class Startup
	{
		public void Configuration(IAppBuilder app)
		{
			app.UseCookieAuthentication(new CookieAuthenticationOptions
			{
				AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
				CookieName = "TRPRCookie",
				LoginPath = new PathString("/LogIn"),
				LogoutPath = new PathString("/LogIn"),
				ExpireTimeSpan = System.TimeSpan.FromMinutes(5)
			});

		}
	}
}