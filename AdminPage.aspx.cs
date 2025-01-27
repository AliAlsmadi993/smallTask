using System;

namespace WebApplication7
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // أي منطق لتجهيز الصفحة إذا لزم الأمر
        }

        // دالة معالجة الحدث عندما يتم الضغط على زر "Add Book"
        protected void btnAddBook_Click(object sender, EventArgs e)
        {
            // التوجيه إلى صفحة إضافة الكتاب
            Response.Redirect("AddBook.aspx");
        }

        // دالة معالجة الحدث عندما يتم الضغط على زر "View Books"
        protected void btnViewBooks_Click(object sender, EventArgs e)
        {
            // التوجيه إلى صفحة عرض الكتب
            Response.Redirect("showBook.aspx");
        }

        protected void btnedit_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditBook.aspx");

        }
    }
}
