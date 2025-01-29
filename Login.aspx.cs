using System;
using System.IO;
using System.Web.UI;

namespace WebApplication7
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }



        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string password = txtPassword.Text;

            string filePath = Server.MapPath("~/App_Data/registrations1.txt");

            if (File.Exists(filePath))
            {
                try
                {
                    string[] lines = File.ReadAllLines(filePath);

                    bool isAuthenticated = false;

                    foreach (var line in lines)
                    {
                        string[] parts = line.Split(',');

                        if (parts.Length >= 3)
                        {
                            string storedEmail = parts[1].Split(':')[1].Trim();
                            string storedPassword = parts[2].Split(':')[1].Trim();

                            if (email == "admin@gmail.com" && password == "1212")
                            {
                                Response.Redirect("AdminPage.aspx");
                                return;
                            }

                            if (storedEmail == email && storedPassword == password)
                            {
                                Session["UserEmail"] = email;

                                Response.Redirect("userPage.aspx"); 

                                return;
                            }
                        }
                    }

                    if (isAuthenticated)
                    {
                        Response.Write("Login successful!");
                    }
                    else
                    {
                        Response.Write("Invalid email or password.");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("An error occurred: " + ex.Message);
                }
            }
            else
            {
                Response.Write("No registration data found.");
            }
        }
    }
}
