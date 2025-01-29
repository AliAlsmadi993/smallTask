<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditBook.aspx.cs" Inherits="WebApplication7.EditBook" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Edit Book</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #f8f9fa;
        }
        .card {
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        .btn-primary {
            border-radius: 30px;
        }
        .table th, .table td {
            vertical-align: middle;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <!-- Search Section -->
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
                            <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-primary" OnClick="SearchBooks_Click" />
                        </div>
                    </div>
                </div>
            </div>

            <!-- Books List Section -->
            <div class="card mb-4">
                <div class="card-header bg-primary text-white text-center">
                    <h3><i class="fas fa-list"></i> Books List</h3>
                </div>
                <div class="card-body">
                    <table class="table table-bordered text-center">
                        <thead class="table-light">
                            <tr>
                                <th>Book ID</th>
                                <th>Book Name</th>
                                <th>Book Kind</th>
                                <th>Book Level</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody id="booksTableBody" runat="server">
                            <!-- Data will be populated from code-behind -->
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- Edit Book Section -->
            <div class="card">
                <div class="card-header bg-success text-white text-center">
                    <h3><i class="fas fa-edit"></i> Edit Selected Book</h3>
                </div>
                <div class="card-body">
                    <!-- ID Field -->
                    <div class="form-group mb-3">
                        <label for="txtBookId" class="form-label">Book ID</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="fas fa-hashtag"></i></span>
                            <asp:TextBox ID="txtBookId" runat="server" CssClass="form-control" Enabled="false" />
                        </div>
                    </div>

                    <!-- Name Field -->
                    <div class="form-group mb-3">
                        <label for="txtBookName" class="form-label">Book Name</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="fas fa-book"></i></span>
                            <asp:TextBox ID="txtBookName" runat="server" CssClass="form-control" />
                        </div>
                    </div>

                    <!-- Kind Field -->
                    <div class="form-group mb-3">
                        <label for="txtBookKind" class="form-label">Book Kind</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="fas fa-list"></i></span>
                            <asp:TextBox ID="txtBookKind" runat="server" CssClass="form-control" />
                        </div>
                    </div>

                    <!-- Level Field -->
                    <div class="form-group mb-4">
                        <label for="txtBookLevel" class="form-label">Book Level</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="fas fa-layer-group"></i></span>
                            <asp:TextBox ID="txtBookLevel" runat="server" CssClass="form-control" />
                        </div>
                    </div>

                    <!-- Buttons -->
                    <div class="d-flex justify-content-between">
                        <asp:Button ID="btnUpdate" runat="server" Text="Update Book" CssClass="btn btn-primary btn-lg" OnClick="UpdateBook_Click" />
                        <asp:Button ID="btnshow" runat="server" Text="Show Books" CssClass="btn btn-secondary btn-lg" OnClick="btnshow_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
