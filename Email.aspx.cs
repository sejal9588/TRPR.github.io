using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TRPR
{
    public partial class Email : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSend_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage msgobj = new MailMessage();
                SmtpClient client = new SmtpClient("smtp.gmail.com");
                msgobj.From = new MailAddress(User.Text);
                msgobj.To.Add(txtTo.Text);
                if (FileUpload1.HasFile)
                {
                    msgobj.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream, FileUpload1.FileName));
                }
                msgobj.Subject = txtSub.Text;
                msgobj.Body = txtBody.Text;
                client.Port = 587;

                client.Credentials = new NetworkCredential(User.Text, Password.Text);
                client.EnableSsl = true;
                client.Send(msgobj);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Message has been sent sucessfuly');", true);

            }
            catch (Exception)
            {
                Response.Write("<center>Your email has not been sent. Make sure you use valid email address.<center>");

            }
        }
    }
}