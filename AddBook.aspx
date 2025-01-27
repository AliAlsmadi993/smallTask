<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="WebApplication7.AddBook" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
    <title>Add Book</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <h2>Add a New Book</h2>

            <!-- ID Field -->
            <div class="form-group">
                <label for="txtId">Book ID</label>
                <asp:TextBox ID="txtId" runat="server" CssClass="form-control" placeholder="Enter Book ID"></asp:TextBox>
            </div>

            <!-- Name Field -->
            <div class="form-group">
                <label for="txtName">Book Name</label>
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter Book Name"></asp:TextBox>
            </div>

            <!-- Kind Field -->
            <div class="form-group">
                <label for="txtKind">Book Kind</label>
                <asp:TextBox ID="txtKind" runat="server" CssClass="form-control" placeholder="Enter Book Kind"></asp:TextBox>
            </div>

            <!-- Level Field -->
            <div class="form-group">
                <label for="txtLevel">Book Level</label>
                <asp:TextBox ID="txtLevel" runat="server" CssClass="form-control" placeholder="Enter Book Level"></asp:TextBox>
            </div>

            <!-- Add Button -->
            <div class="form-group mt-3">
                <asp:Button ID="btnAddBook" runat="server" CssClass="btn btn-primary" Text="Add Book" OnClick="btnAddBook_Click" />
            </div>
        </div>
    </form>
</body>
</html>
