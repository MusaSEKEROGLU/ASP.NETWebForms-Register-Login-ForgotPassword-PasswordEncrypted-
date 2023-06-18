using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Net;
using System.Net.Mail;

namespace RegisterAndLogin.PasswordEncrypted
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            string username = string.Empty;
            string password = string.Empty;
            string constr = ConfigurationManager.ConnectionStrings["RegisteAndLoginDB"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT Email,Password FROM UserRegistration WHERE Email = @Email"))
                {
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        if (sdr.Read())
                        {
                            username = sdr["Email"].ToString();
                            password = sdr["Password"].ToString();
                        }
                    }
                    con.Close();
                }
            }
            if (!string.IsNullOrEmpty(password))
            {
                MailMessage mm = new MailMessage("drnmaskr2005@gmail.com", txtEmail.Text.Trim());
                mm.Subject = "Password Recovery";
                mm.Body = string.Format("Hi {0},<br /><br />Your password is {1}.<br /><br />Thank You.", username, password);
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.office365.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential();
                NetworkCred.UserName = "drnmaskr2005@gmail.com";
                NetworkCred.Password = "Deren.13579";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
                lblMessage.ForeColor = Color.Green;
                lblMessage.Text = "Password has been sent to your email address.";

                Response.Redirect("Login.aspx");
            }
            else
            {
                lblMessage.ForeColor = Color.Red;
                lblMessage.Text = "This email address does not match our records.";
            }
        }
    }
}
