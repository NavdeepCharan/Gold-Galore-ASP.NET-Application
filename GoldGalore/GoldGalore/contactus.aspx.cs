using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;

public partial class contactus : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}
	protected void btnsubmit_Click(object sender, EventArgs e)
	{
		try
		{
			MailMessage Msg = new MailMessage();
			//Sender e-mail address.
			Msg.From = new MailAddress(txtemail.Text);
			//Recipient e-mail address.
			Msg.To.Add("ndctinu@gmail.com");




			//Meaages Subject
			Msg.Subject = "Contact Us Form - Gold Galore Jewellers";
			StringBuilder sb = new StringBuilder();
			sb.Append("Name:" + txtname.Text + "\r\n\n");
			sb.Append("Contact:" + txtcontact.Text + "\r\n\n");
			sb.Append("Email:" + txtemail.Text + "\r\n\n");
			sb.Append("Message:" + txtmessage.Text + "\r\n\n");

			Msg.Body = sb.ToString();
			// SMTP server IP.
			SmtpClient smtp = new SmtpClient();
			smtp.Host = "smtp.gmail.com";
			smtp.Port = 25;
			smtp.Credentials = new System.Net.NetworkCredential("ndctinu@gmail.com", "*srk*007");
			smtp.EnableSsl = true;
			smtp.Send(Msg);
			//Mail Message
			Response.Write("<Script>alert('Thanks to contact us, Gold Galore team will contact you as soon as possible')</Script>");
			// Clear the textbox values
			txtname.Text = "";
			txtcontact.Text = "";
			txtemail.Text = "";
			txtmessage.Text = "";
		}
		catch (Exception ex)
		{
			//Response.Write(ex.Message);
			FailureText.Text = ex.Message;
			ErrorMessage.Visible = true;

		}
	}	
}