using System;

namespace WebApplication7
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // يمكن إضافة أي كود لتحميل الصفحة هنا إذا لزم الأمر
        }

        // الحدث عند الضغط على زر "Register"
        protected void register1_Click(object sender, EventArgs e)
        {
            // إعادة التوجيه إلى صفحة التسجيل (مثال: WebForm1.aspx)
            Response.Redirect("WebForm1.aspx");
        }

        // الحدث عند الضغط على زر "Login"
        protected void login1_Click(object sender, EventArgs e)
        {
            // إعادة التوجيه إلى صفحة تسجيل الدخول (مثال: Login.aspx)
            Response.Redirect("Login.aspx");
        }
    }
}
