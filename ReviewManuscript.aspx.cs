using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DocumentFormat.OpenXml.Spreadsheet;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using iTextSharp.text.pdf.parser;

namespace TRPR
{
    public partial class ReviewManuscript : System.Web.UI.Page
    {
		string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TRPR.mdf;Integrated Security=True;Connect Timeout=30";

		protected void Page_Load(object sender, EventArgs e)
        {

			Panel1.Visible = false;
			lblTitile.Text = Session["manuTitle"].ToString();
			DetailsView1.Visible = false;
			pnFeedbackContent.Visible = true;
			pnFeedbackGrammar.Visible = false;
			lblGrammar.Visible = false;
			Panel2.Visible = false;
			lblContent.Visible = false;


			SqlConnection con = new SqlConnection(conStr);

			int id = Convert.ToInt32(Session["gvSearchId"]);
			string strQuery = "Select Name from Files WHERE Id = @FileID";

			SqlCommand cmd4 = new SqlCommand(strQuery);
			
				cmd4.Parameters.AddWithValue("@FileID",id );
			
			 
			cmd4.CommandType = CommandType.Text;

			cmd4.Connection = con;
			con.Open();
			SqlDataReader reader = cmd4.ExecuteReader();
			reader.Read();
			string name =Convert.ToString(reader[0]);
			
			reader.Close();
		
			iframe.Attributes["src"] = "PDF\\"+ name ;


			
		}

		protected void rbResp_SelectedIndexChanged(object sender, EventArgs e)
		{
			if (rbResp.SelectedValue == Convert.ToString(0))
			{
				pnFeedbackContent.Visible = true;
				pnFeedbackGrammar.Visible = false;
				lblContent.Visible = false;
				//lblGrammer2.Visible = false;

			}
			else
			{
				pnFeedbackContent.Visible = false;
				pnFeedbackGrammar.Visible = true;
				lblGrammer.Visible = false;
				lblGrammer2.Visible = false;
				lbGhere.Visible = false;


				//SqlConnection con = new SqlConnection(conStr);


				//string strQuery = "insert into CommentTYpe (Type,Comment) values(@Type,@Comment)";

				//SqlCommand cmd4 = new SqlCommand(strQuery);

				//cmd4.Parameters.AddWithValue("@Type", rbResp.SelectedItem);
				//cmd4.Parameters.AddWithValue("@Comment", txtGrammar.Text);

				//cmd4.CommandType = CommandType.Text;

				//cmd4.Connection = con;
				//con.Open();
				//cmd4.ExecuteNonQuery();
				//string str = string.Empty;
				//try
				//{
				//	PdfReader pdf = new PdfReader();
				//}
				//catch
				//{

				//}
			}
		}

		protected void btnGrammar_Click(object sender, EventArgs e)
		{
			Random r = new Random();
			int num = r.Next();
			lblGrammer.Visible = true;
			lblGrammer2.Visible = true;
			lbGhere.Visible = true;
			Panel2.Visible = true;
				lblGrammar.Visible = true;
			
				lblGrammar.Text = txtGrammar.Text;
				Response.ContentType = "application/pdf";
				Response.AddHeader("content-disposition", "attachment;filename=AEReccommendations"+ num.ToString()+".pdf");
				Response.Cache.SetCacheability(HttpCacheability.NoCache);
				StringWriter swe = new StringWriter();
				HtmlTextWriter hwe = new HtmlTextWriter(swe);
				Panel2.RenderControl(hwe);
				StringReader sr = new StringReader(swe.ToString());
				Document pdfDocGram = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
				HTMLWorker htmlparser = new HTMLWorker(pdfDocGram);

				PdfWriter.GetInstance(pdfDocGram, Response.OutputStream);
				pdfDocGram.Open();
				htmlparser.Parse(sr);
				pdfDocGram.Close();
				Response.Write(pdfDocGram);
			
			txtGrammar.Text = "";
			lblGrammar.Text = "";

			

			Response.End();
			Panel2.Visible = false;
				lblGrammar.Visible = false;
			lblGrammer2.Visible = false;

			//pnFeedbackGrammar.Visible = true;			
		}
	

		protected void btnComment_Click(object sender, EventArgs e)
		{
			Random r = new Random();
			int num = r.Next();
			lblContent.Visible = true;
			Panel1.Visible = true;
			
			lbl2.Text = TextBox1.Text;
			lbl4.Text = TextBox2.Text;
			lbl6.Text = TextBox3.Text;
			lbl8.Text = TextBox4.Text;
			lbl10.Text = TextBox5.Text;
			lbl12.Text = TextBox6.Text;
			
			Response.ContentType = "application/pdf";
			Response.AddHeader("content-disposition", "attachment;filename=AEReccommendations"+  num.ToString() +".pdf");
			Response.Cache.SetCacheability(HttpCacheability.NoCache);
			StringWriter sw = new StringWriter();
			HtmlTextWriter hw = new HtmlTextWriter(sw);
			Panel1.RenderControl(hw);
			StringReader sr = new StringReader(sw.ToString());
			Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
			HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
			
			PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
			pdfDoc.Open();
			htmlparser.Parse(sr);
			pdfDoc.Close();
			Response.Write(pdfDoc);
			Response.End();
			
			
			Panel1.Visible = false;

			TextBox1.Text = "";
			TextBox2.Text = "";
			TextBox3.Text = "";
			TextBox4.Text = "";
			TextBox5.Text = "";
			TextBox6.Text = "";
			


			//pnFeedbackGrammar.Visible = false;
			//pnFeedbackContent.Visible = true;




		}

		protected void lbDashboard_Click(object sender, EventArgs e)
		{
			Response.Redirect("AscoEditor.aspx");
		}
	}
		
	
}