using System;
using System.IO;

namespace WebApplication7
{
    public partial class AddBook : System.Web.UI.Page
    {
        protected void btnAddBook_Click(object sender, EventArgs e)
        {
            // Get values from TextBoxes
            string bookId = txtId.Text.Trim();
            string bookName = txtName.Text.Trim();
            string bookKind = txtKind.Text.Trim();
            string bookLevel = txtLevel.Text.Trim();

            // Path to the books.txt file in the App_Data folder
            string filePath = Server.MapPath("~/App_Data/books2.txt");

            // Check if the file exists
            if (!File.Exists(filePath))
            {
                // If the file doesn't exist, create it
                File.Create(filePath).Close();
            }

            // Append the book data to the file
            using (StreamWriter writer = new StreamWriter(filePath, true))
            {
                writer.WriteLine($"{bookId},{bookName},{bookKind},{bookLevel}");
            }

            // Optionally, you can clear the textboxes after saving
            txtId.Text = "";
            txtName.Text = "";
            txtKind.Text = "";
            txtLevel.Text = "";

            // Display a message or redirect (optional)
            Response.Write("<script>alert('Book added successfully!');</script>");
        }
    }
}
