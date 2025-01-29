using System;
using System.IO;
using System.Web.UI;

namespace WebApplication7
{
    public partial class ShowBook : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // المسار إلى ملف الكتب
            string filePath = Server.MapPath("~/App_Data/books2.txt");

            if (File.Exists(filePath))
            {
                string[] lines = File.ReadAllLines(filePath);

                if (lines.Length > 0)
                {
                    foreach (var line in lines)
                    {
                        string[] bookData = line.Split(',');

                        string rowHtml = $"<tr><td>{bookData[0]}</td><td>{bookData[1]}</td><td>{bookData[2]}</td><td>{bookData[3]}</td></tr>";
                        booksTableBody.InnerHtml += rowHtml;
                    }
                }
                else
                {
                    booksTableBody.InnerHtml = "<tr><td colspan='4'>No books available.</td></tr>";
                }
            }
            else
            {
                // إذا كان الملف غير موجود
                booksTableBody.InnerHtml = "<tr><td colspan='4'>No books available.</td></tr>";
            }
        }


       
        protected void btnGoHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string searchTerm = txtSearch.Text.ToLower();
            string filePath = Server.MapPath("~/App_Data/books2.txt");
            string[] lines = File.ReadAllLines(filePath);
            string tableContent = "";

            foreach (var line in lines)
            {
                var data = line.Split(',');

                string bookId = data[0];
                string bookName = data[1];
                string bookKind = data[2];
                string bookLevel = data[3];

                if (bookId.ToLower() == searchTerm)
                {
                    tableContent += $"<tr style='background-color:#FF0000;'>" +
                                    $"<td>{bookId}</td>" +
                                    $"<td>{bookName}</td>" +
                                    $"<td>{bookKind}</td>" +
                                    $"<td>{bookLevel}</td>" +
                                    $"</tr>";

                }
            }
            // تعيين محتوى الجدول بعد معالجة جميع الأسطر
            booksTableBody.InnerHtml = tableContent;

        }
    }
}
