using System;
using System.IO;

namespace WebApplication7
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string email = txtEmail.Text;
            string password = txtPassword.Text;
            string repeatPassword = txtRepeatPassword.Text;

            if (password == repeatPassword)
            {
                string filePath = Server.MapPath("~/App_Data/registrations1.txt");

                string dataToSave = $"Name: {name}, Email: {email}, Password: {password}\n";

                try
                {
                    if (!File.Exists(filePath))
                    {
                        File.WriteAllText(filePath, dataToSave); 
                    }
                    else
                    {
                        File.AppendAllText(filePath, dataToSave);
                    }


                    Response.Write("Registration successful! Your data has been saved.");
                    Response.Redirect("Login.aspx");
                }
                catch (Exception ex)
                {
                    Response.Write("An error occurred: " + ex.Message);
                }
            }
            else
            {
                Response.Write("Passwords do not match.");
            }
        }
    }
}
