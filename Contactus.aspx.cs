using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Web;
using System.Linq;

public partial class RTW_Webpage_Contactus : System.Web.UI.Page
{
    TextBox[] DemoFieldsArray;
    string strcon = ConfigurationManager.ConnectionStrings["ConnectionStr"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        DemoFieldsArray = new TextBox[] { Firstname, Lastname,phone,school, desg, message };
       
    }

    protected string getIpAddress()
    {
        return HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
    }
    protected string getBrowserType()
    {
        System.Web.HttpBrowserCapabilities browser = Request.Browser;
        return browser.Browser;
    }

    private void ClearDemoFields()
    {
        foreach (TextBox tb in DemoFieldsArray)
        {
            tb.Text = "";
        }
      
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            SqlConnection sqlConnection = new SqlConnection(strcon);
            SqlCommand sqlCommand = new SqlCommand("sp_readtheworld", sqlConnection);
            sqlCommand.CommandType = CommandType.StoredProcedure;

            sqlCommand.Parameters.Add(new SqlParameter("@fname", SqlDbType.VarChar, 200)).Value = Firstname.Text;
            sqlCommand.Parameters.Add(new SqlParameter("@lname", SqlDbType.VarChar, 200)).Value = Lastname.Text;
            sqlCommand.Parameters.Add(new SqlParameter("@school", SqlDbType.VarChar, 500)).Value = school.Text;
            sqlCommand.Parameters.Add(new SqlParameter("@desg", SqlDbType.VarChar, 50)).Value = desg.Text;
            sqlCommand.Parameters.Add(new SqlParameter("@phone", SqlDbType.VarChar, 20)).Value = phone.Text;
            sqlCommand.Parameters.Add(new SqlParameter("@message", SqlDbType.VarChar, 2000)).Value = message.Text;
            sqlCommand.Parameters.Add(new SqlParameter("@custIPAddress", SqlDbType.VarChar, 20)).Value = getIpAddress();
            sqlCommand.Parameters.Add(new SqlParameter("@custBrowser", SqlDbType.VarChar, 100)).Value = getBrowserType();

            try
            {
                sqlConnection.Open();
                sqlCommand.ExecuteNonQuery();
                sqlConnection.Close();
                loadMail();
                ClearDemoFields();
                ClientScript.RegisterStartupScript(GetType(), "hwa", "alert('Thank you for Submitting');", true);

            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }
        else
        {
            return;

        }
    }

    private void loadMail()
    {
        string msgBody = "<table width=600 border=1><tr><td>Name : </td><td>" + Firstname.Text +" "+ Lastname.Text +"</td></tr>" +
                        "<tr><td valign='top'>School Name : </td><td valign='top'>" + school.Text + "</td></tr>" +
                        "<tr><td valign='top'>Designation : </td><td valign='top'>" + desg.Text + "</td></tr>" +
                        "<tr valign='top'><td valign='top'>Telephone/Mobile No : </td><td valign='top'>" + phone.Text + "</td></tr>" +
                        "<tr valign='top'><td>Message : </td><td valign='top'>" + message.Text + "</td></tr></table>";



       // sendMessage("co.clientservicing@orientblackswan.com", "info@orientblackswan.com", msgBody);
        sendMessage("customercare@orientblackswan.com", "info@orientblackswan.com", msgBody);
    }
    private void sendMessage(string toAddress, string fromAddress, string mailbody)
    {
        try
        {
            MailMessage msg = new MailMessage();

            msg.From = new MailAddress(fromAddress);
            msg.To.Add(new MailAddress(toAddress));
            //  msg.CC.Add(new MailAddress("info@orientblackswan.com"));

            msg.Priority = MailPriority.High;
            msg.Subject = "Request For Read the World : " + Firstname.Text + " " + Lastname.Text;
            msg.Body = "" + mailbody;
            msg.IsBodyHtml = true;

            SmtpClient client = new SmtpClient();
            client.Host = "smtp.cloudzimail.com";
            client.Port = 587;
            client.EnableSsl = true;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            client.Credentials = new System.Net.NetworkCredential(fromAddress, "Chsr@321");
            client.Send(msg);

        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
}