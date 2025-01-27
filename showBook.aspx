<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowBook.aspx.cs" Inherits="WebApplication7.ShowBook" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Show Books</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <h2>Books List</h2>
            <table class="table table-bordered">
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
                    <asp:Button ID="btnGoHome" runat="server" Text="Go to Home Page" CssClass="btn btn-primary mt-3" OnClick="btnGoHome_Click" />

    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
