using System;
using System.IO;
using System.Web.UI;

namespace WebApplication7
{
    public partial class profile : Page
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
                if (string.IsNullOrWhiteSpace(line)) continue; // تخطي الأسطر الفارغة

                string[] userData = line.Split(',');
                if (userData.Length >= 3 && userData[1].Contains(":") && userData[2].Contains(":"))
                {
                    string storedName = userData[0].Split(':')[1].Trim();
                    string storedEmail = userData[1].Split(':')[1].Trim();
                    string storedPassword = userData[2].Split(':')[1].Trim(); // غير مستخدم هنا، لكن يمكن حفظه لاحقًا

                    if (storedEmail.Equals(userEmail, StringComparison.OrdinalIgnoreCase))
                    {
                        // تحقق من أن الـ Label موجودة قبل تعيين القيم
                        if (lblName != null)
                            lblName.Text = storedName;
                        if (lblEmail != null)
                            lblEmail.Text = storedEmail;
                        if (lblFullName != null)
                            lblFullName.Text = storedName;
                        if (lblPassword != null)
                            lblPassword.Text = storedPassword;

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

        protected void btnEditProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("edit_profile.aspx");
        }
    }
}
