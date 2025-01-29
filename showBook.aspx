<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowBook.aspx.cs" Inherits="WebApplication7.ShowBook" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Show Books</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
    <style>
        body {
            background: linear-gradient(120deg, #f8f9fa, #e9ecef);
            min-height: 100vh;
        }
        .card {
            border-radius: 20px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }
        .btn-primary {
            border-radius: 30px;
            padding: 10px 20px;
            font-size: 1.2rem;
        }
        .table {
            background: #fff;
            border-radius: 15px;
            overflow: hidden;
        }
        .table th {
            background-color: #007bff;
            color: white;
            font-weight: bold;
        }
        .table-hover tbody tr:hover {
            background-color: #f1f1f1;
        }
        .header-icon {
            font-size: 3rem;
            color: #007bff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">





            <!-- Page Header -->
            <div class="text-center mb-4">
                <span class="header-icon"><i class="fas fa-book-open"></i></span>
                <h1 class="mt-3">Books List</h1>
                <p class="text-muted">Explore the available books in the library</p>
            </div>


             <div class="card mb-4">
     <div class="card-header bg-info text-white text-center">
         <h3><i class="fas fa-search"></i> Search Books</h3>
     </div>
     <div class="card-body">
         <div class="row">
             <div class="col-md-8">
                 <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" placeholder="Search by book name, kind, or level" />
             </div>
             <div class="col-md-4">
                 <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-primary" OnClick="btnSearch_Click" />
             </div>
         </div>
     </div>
 </div>


            <!-- Books Table -->
            <div class="card">
                <div class="card-body">
                    <table class="table table-hover text-center">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Kind</th>
                                <th>Level</th>
                            </tr>
                        </thead>
                        <tbody id="booksTableBody" runat="server">
                            <!-- Data will be dynamically populated here -->
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- Button to Go Home -->
            <div class="text-center mt-4">
                <asp:Button ID="btnGoHome" runat="server" Text="Go to Home Page" CssClass="btn btn-primary btn-lg" OnClick="btnGoHome_Click" />
            </div>
        </div>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
