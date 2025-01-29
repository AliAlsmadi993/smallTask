using System;
using System.IO;
using System.Linq;

namespace WebApplication7
{
    public partial class EditBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadBooks();
                // إذا كان هناك "bookId" في الـ QueryString، نقوم بتحميل بيانات الكتاب المحدد
                if (Request.QueryString["bookId"] != null)
                {
                    string bookId = Request.QueryString["bookId"];
                    LoadBookDetails(bookId);
                }
            }
        }

        // تحميل جميع الكتب من الملف وعرضها في الجدول
        private void LoadBooks()
        {
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

                // إضافة صف جديد للكتاب في الجدول مع زر تعديل
                tableContent += $"<tr>" +
                                $"<td>{bookId}</td>" +
                                $"<td>{bookName}</td>" +
                                $"<td>{bookKind}</td>" +
                                $"<td>{bookLevel}</td>" +
                                $"<td><a href='EditBook.aspx?bookId={bookId}' class='btn btn-warning'>Edit</a></td>" +
                                $"</tr>";
            }

            // تعيين محتوى الجدول
            booksTableBody.InnerHtml = tableContent;
        }

        // تحميل بيانات الكتاب المحدد بناءً على الـ ID
        private void LoadBookDetails(string bookId)
        {
            string filePath = Server.MapPath("~/App_Data/books2.txt");
            string[] lines = File.ReadAllLines(filePath);

            foreach (var line in lines)
            {
                var data = line.Split(',');

                if (data[0] == bookId)
                {
                    // تعيين البيانات في النموذج
                    txtBookId.Text = data[0];
                    txtBookName.Text = data[1];
                    txtBookKind.Text = data[2];
                    txtBookLevel.Text = data[3];
                    break;
                }
            }
        }

        // تحديث بيانات الكتاب في الملف
        protected void UpdateBook_Click(object sender, EventArgs e)
        {
            string bookId = txtBookId.Text;
            string bookName = txtBookName.Text;
            string bookKind = txtBookKind.Text;
            string bookLevel = txtBookLevel.Text;

            string filePath = Server.MapPath("~/App_Data/books2.txt");
            string[] lines = File.ReadAllLines(filePath);
            string updatedContent = "";

            foreach (var line in lines)
            {
                var data = line.Split(',');

                if (data[0] == bookId)
                {
                    // تعديل البيانات في السطر المناسب
                    updatedContent += $"{bookId},{bookName},{bookKind},{bookLevel}\n";
                }
                else
                {
                    updatedContent += line + "\n";
                }
            }

            // حفظ التعديلات في الملف
            File.WriteAllText(filePath, updatedContent);

            LoadBooks();
        }

        // تنفيذ البحث عن الكتب بناءً على الـ bookId
        protected void SearchBooks_Click(object sender, EventArgs e)
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
                                    $"<td><a href='EditBook.aspx?bookId={bookId}' class='btn btn-warning'>Edit</a></td>" +
                                    $"</tr>";
                    
                }
            }
            // تعيين محتوى الجدول بعد معالجة جميع الأسطر
            booksTableBody.InnerHtml = tableContent;

        }


        protected void btnshow_Click(object sender, EventArgs e)
        {
            Response.Redirect("showBook.aspx");
        }
    }
}
