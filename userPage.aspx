<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userPage.aspx.cs" Inherits="WebApplication7.userPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div class="col-md-6 mb-4">
     <div class="card">
         <div class="bg-image hover-overlay" data-mdb-ripple-init data-mdb-ripple-color="light">
             <img src="https://mdbcdn.b-cdn.net/img/new/standard/nature/111.webp" class="img-fluid"/>
             <a href="#!">
                 <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
             </a>
         </div>
         <div class="card-body">
             <h5 class="card-title">Show a Book</h5>
             <p class="card-text">Click here to show a  book to the collection.</p>
             <asp:Button ID="btnshowBook" runat="server" CssClass="btn btn-primary" Text="show Book" OnClick="btnshowBook_Click" />
         </div>
     </div>
 </div>

             <div class="col-md-6 mb-4">
     <div class="card">
         <div class="bg-image hover-overlay" data-mdb-ripple-init data-mdb-ripple-color="light">
             <img src="https://mdbcdn.b-cdn.net/img/new/standard/nature/111.webp" class="img-fluid"/>
             <a href="#!">
                 <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
             </a>
         </div>
         <div class="card-body">
             <h5 class="card-title"> Show a Meating  Room</h5>
             <p class="card-text">Click here to add a new book to the collection.</p>
             <asp:Button ID="showMeatingroom" runat="server" CssClass="btn btn-primary" Text="Meating  Room " OnClick="showMeatingroom_Click" />
         </div>
     </div>
 </div>














        </div>
    </form>
</body>
</html>
