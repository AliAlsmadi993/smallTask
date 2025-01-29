using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication7
{
    public partial class userPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnshowBook_Click(object sender, EventArgs e)
        {
            Response.Redirect("showBook.aspx");
        }

        protected void showMeatingroom_Click(object sender, EventArgs e)
        {
            Response.Redirect("Meatingroom.aspx");

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("profile.aspx");
        }
    }
}