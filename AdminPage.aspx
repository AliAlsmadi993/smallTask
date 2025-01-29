<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="WebApplication7.AdminPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Admin Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #f8f9fa;
        }
        .card {
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            height: 100%;
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
        }
        .card img {
            height: 200px;
            object-fit: cover;
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
        }
        .card-title {
            font-size: 1.5rem;
            font-weight: bold;
            color: #007bff;
        }
        .card-text {
            font-size: 1rem;
            color: #6c757d;
        }
        .btn-primary {
            border-radius: 50px;
            padding: 10px 20px;
            font-size: 1rem;
        }
        .row {
            row-gap: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <h2 class="text-center mb-4">Admin Page</h2>
            <div class="row row-cols-1 row-cols-md-2 g-4">
                <!-- Add Book Card -->
                <div class="col">
                    <div class="card text-center">
                        <img src="https://uploads.prod01.london.platform-os.com/instances/21/assets/Waterstones%20books.jpg.crdownload?updated=1645521181" class="card-img-top" alt="Add Book" />
                        <div class="card-body">
                            <h5 class="card-title">Add a Book</h5>
                            <p class="card-text">Click here to add a new book to the collection.</p>
                            <asp:Button ID="btnAddBook" runat="server" CssClass="btn btn-primary" Text="Add Book" OnClick="btnAddBook_Click" />
                        </div>
                    </div>
                </div>

                <!-- Edit Book Card -->
                <div class="col">
                    <div class="card text-center">
                        <img src="https://images-cdn.reedsy.com/discovery/post/109/featured_image/large_aa7b8fcc4ee3a86626aca3157bbd8d697c38429a.jpg" class="card-img-top" alt="Edit Book" />
                        <div class="card-body">
                            <h5 class="card-title">Edit a Book</h5>
                            <p class="card-text">Click here to edit a book in the collection.</p>
                            <asp:Button ID="btnedit" runat="server" CssClass="btn btn-primary" Text="Edit Book" OnClick="btnedit_Click" />
                        </div>
                    </div>
                </div>

                <!-- View Books Card -->
                <div class="col">
                    <div class="card text-center">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtReU98b-aS4kOvEeEG6Hi48wybHwhXgWNMw&s" class="card-img-top" alt="View Books" />
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
