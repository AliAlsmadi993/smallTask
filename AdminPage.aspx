<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="WebApplication7.AdminPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Admin Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <!-- Row to display cards side by side -->
            <div class="row">
                <!-- First Card: Add Book -->
                <div class="col-md-6 mb-4">
                    <div class="card">
                        <div class="bg-image hover-overlay" data-mdb-ripple-init data-mdb-ripple-color="light">
                            <img src="https://mdbcdn.b-cdn.net/img/new/standard/nature/111.webp" class="img-fluid"/>
                            <a href="#!">
                                <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                            </a>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Add a Book</h5>
                            <p class="card-text">Click here to add a new book to the collection.</p>
                            <asp:Button ID="btnAddBook" runat="server" CssClass="btn btn-primary" Text="Add Book" OnClick="btnAddBook_Click" />
                        </div>
                    </div>
                </div>





                <!-- Second Card: View Books -->


                 <div class="col-md-6 mb-4">
     <div class="card">
         <div class="bg-image hover-overlay" data-mdb-ripple-init data-mdb-ripple-color="light">
             <img src="https://mdbcdn.b-cdn.net/img/new/standard/nature/111.webp" class="img-fluid"/>
             <a href="#!">
                 <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
             </a>
         </div>
         <div class="card-body">
             <h5 class="card-title">Edit a Book</h5>
             <p class="card-text">Click here to Edit a book to the collection.</p>
             <asp:Button ID="btnedit" runat="server" CssClass="btn btn-primary" Text="edit Book" OnClick="btnedit_Click" />
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
                            <h5 class="card-title">View Books</h5>
                            <p class="card-text">Click here to view the list of books in the collection.</p>
                            <asp:Button ID="btnViewBooks" runat="server" CssClass="btn btn-primary" Text="View Books" OnClick="btnViewBooks_Click" />
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
