<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditBook.aspx.cs" Inherits="WebApplication7.EditBook" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Edit Book</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <h2>Edit Book</h2>

            <!-- Table of books -->
            <h3>Books List</h3>
            <table class="table table-bordered">
                <thead>
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

            <!-- Form to edit selected book -->
            <h3>Edit Selected Book</h3>
            <div class="form-group">
                <label for="txtBookId">Book ID</label>
                <asp:TextBox ID="txtBookId" runat="server" CssClass="form-control" Enabled="false" />
            </div>
            <div class="form-group">
                <label for="txtBookName">Book Name</label>
                <asp:TextBox ID="txtBookName" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="txtBookKind">Book Kind</label>
                <asp:TextBox ID="txtBookKind" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="txtBookLevel">Book Level</label>
                <asp:TextBox ID="txtBookLevel" runat="server" CssClass="form-control" />
            </div>

            <asp:Button ID="btnUpdate" runat="server" Text="Update Book" CssClass="btn btn-primary" OnClick="UpdateBook_Click" />
             <asp:Button ID="btnshow" runat="server" Text="show Book" CssClass="btn btn-primary" OnClick="btnshow_Click" />

        </div>
    </form>
</body>
</html>
