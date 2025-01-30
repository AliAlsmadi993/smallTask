using System;
using System.IO;
using System.Web.UI;

namespace WebApplication7
{
    public partial class edit_profile : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadUserProfile();
            }
        }

        private void LoadUserProfile()
        {
            string filePath = Server.MapPath("~/App_Data/registrations1.txt");
            string userEmail = Session["UserEmail"] as string;

            //string userEmail = File.Exists(Server.MapPath("~/App_Data/login_data.txt"))
            //? File.ReadAllLines(Server.MapPath("~/App_Data/login_data.txt"))[0].Split(',')[0].Trim()
            //: null;

            if (string.IsNullOrEmpty(userEmail))
            {
                Response.Write("No user is logged in.");
                return;
            }

            if (!File.Exists(filePath))
            {
                Response.Write("File not found.");
                return;
            }

            string[] lines = File.ReadAllLines(filePath);
            bool userFound = false;

            foreach (var line in lines)
            {
                if (string.IsNullOrWhiteSpace(line)) continue;

                string[] userData = line.Split(',');
                if (userData.Length >= 3)
                {
                    string storedName = userData[0].Split(':')[1].Trim();
                    string storedEmail = userData[1].Split(':')[1].Trim();
                    string storedPassword = userData[2].Split(':')[1].Trim();

                    if (storedEmail.Equals(userEmail, StringComparison.OrdinalIgnoreCase))
                    {
                        txtFullName.Text = storedName;
                        txtEmail.Text = storedEmail;
                        txtPassword.Text = storedPassword;
                        userFound = true;
                        break;
                    }
                }
            }

            if (!userFound)
            {
                Response.Write("User not found in the file.");
            }
        }

        protected void btnSaveChanges_Click(object sender, EventArgs e)
        {
            string filePath = Server.MapPath("~/App_Data/registrations1.txt");
            string userEmail = Session["UserEmail"] as string;

            if (string.IsNullOrEmpty(userEmail))
            {
                Response.Write("No user is logged in.");
                return;
            }

            if (!File.Exists(filePath))
            {
                Response.Write("File not found.");
                return;
            }

            string[] lines = File.ReadAllLines(filePath);
            string updatedContent = "";
            bool userFound = false;

            foreach (var line in lines)
            {
                if (string.IsNullOrWhiteSpace(line)) continue;

                string[] userData = line.Split(',');
                if (userData.Length >= 3)
                {
                    string storedEmail = userData[1].Split(':')[1].Trim();

                    if (storedEmail.Equals(userEmail, StringComparison.OrdinalIgnoreCase))
                    {
                        userData[0] = "Name: " + txtFullName.Text;
                        userData[1] = "Email: " + txtEmail.Text;
                        userData[2] = "Password: " + txtPassword.Text;

                        updatedContent += string.Join(",", userData) + Environment.NewLine;
                        userFound = true;
                    }
                    else
                    {
                        updatedContent += line + Environment.NewLine;
                    }
                }
            }

            if (userFound)
            {
                File.WriteAllText(filePath, updatedContent);
                Response.Redirect("profile.aspx");
            }
            else
            {
                Response.Write("User not found.");
            }
        }

        protected void btnGoToProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("profile.aspx");
        }
    }
}
