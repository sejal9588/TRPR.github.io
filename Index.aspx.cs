using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Net.Mail;
using System.Net;

namespace TRPR
{
	public partial class Index : System.Web.UI.Page
	{
		private string username;
		protected void Page_Load(object sender, EventArgs e)
		{
			//this.lblMessage.Text = System.Environment.CurrentDirectory;
		}
		
		protected void btnRegister_Click(object sender, EventArgs e)
		{

			//check to make sure the username is unique
			//insert a profile record and copy username
			
			
				UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();
				UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);
				IdentityUser user = new IdentityUser(txtRegisterUsername.Text);
				IdentityResult idResult = manager.Create(user, txtRegisterPassword.Text);
				if (idResult.Succeeded)
				{

					lblMessage.Text = "User " + user.UserName + " was created successfully!";
					var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
					var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
					authenticationManager.SignIn(userIdentity);
					Session["Data"] = txtRegisterUsername.Text;
					//Response.Redirect("MyProfile.aspx?User=" + txtRegisterUsername.Text);
					Server.Transfer("MyProfile.aspx");

				}
				else
				{
					lblMessage.Text = idResult.Errors.FirstOrDefault();
				}

			
		}

		protected void btnLogin_Click(object sender, EventArgs e)
		{   
			UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();
			UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);
			IdentityUser user = manager.Find(txtLoginUser.Text, txtLoginPass.Text);
			if (user == null)
			{
			

				lblMessage1.Text = "Username or password is incorrect.";
			}
			else
			{
				var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
				var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
				authenticationManager.SignIn(userIdentity);
				Session["Data"] = txtLoginUser.Text;
				Server.Transfer("SecIndex.aspx");

			}
			
		}

		protected void btnForgotPassword_Click(object sender, EventArgs e)
		{
			string mainconn = ConfigurationManager.ConnectionStrings["TRPRConnectionString"].ConnectionString;
			SqlConnection sqlConn = new SqlConnection(mainconn);
			string sqlQuery = "select Email, UserPassword from [dbo].[UserReg] where Email=@Email";
			SqlCommand sqlComm = new SqlCommand(sqlQuery, sqlConn);
			sqlComm.Parameters.AddWithValue("@Email", txtForgotPassword.Text);
			sqlConn.Open();
			SqlDataReader sdr = sqlComm.ExecuteReader();
			if (sdr.Read())
			{
				string username = sdr["Email"].ToString();
				string password = sdr["UserPassword"].ToString();

				MailMessage mm = new MailMessage("techcreate400@gmail.com", txtForgotPassword.Text);
				mm.Subject = "Your Password!";
				mm.Body = string.Format("Hello : <h1>{0}</h1> is your Email id <br/> your Password is <h1>{1}</h1>", username, password);
				mm.IsBodyHtml = true;
				SmtpClient smtp = new SmtpClient();
				smtp.Host = "smtp.gmail.com";
				smtp.EnableSsl = true;
				NetworkCredential nc = new NetworkCredential();
				nc.UserName = "techcreate";
				nc.Password = "NiagaraTech12";

			}
		}

		public string GETUSER
		{
			get
			{
				username = txtRegisterUsername.Text;
				return username;
			}
		}
	}
}