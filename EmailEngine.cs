using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Configuration;

namespace ShopingAdda
{
    public class EmailEngine
    {

        public static void SendEmail(string recepientEmail, string subject, string body)
        {
            using (MailMessage mailMessage = new MailMessage())
            {
                mailMessage.From = new MailAddress(ConfigurationManager.AppSettings["UserName"]);
                mailMessage.Subject= subject;
                mailMessage.Body = body;
                mailMessage.IsBodyHtml = true;
                mailMessage.To.Add(new MailAddress(recepientEmail));
                SmtpClient smtp = new SmtpClient();
                smtp.Host = ConfigurationManager.AppSettings["Host"];
                smtp.EnableSsl = Convert.ToBoolean(ConfigurationManager.AppSettings["EnableSsl"]);
                System.Net.NetworkCredential NetworlCred = new System.Net.NetworkCredential();
                NetworlCred.UserName = ConfigurationManager.AppSettings["UserName"];
                NetworlCred.Password = ConfigurationManager.AppSettings["Password"];
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworlCred;
                smtp.Port =int.Parse(ConfigurationManager.AppSettings["Port"]);
                smtp.Send(mailMessage);
            }
        }

    }
}