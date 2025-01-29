<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="WebApplication7.profile" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
    <title>User Profile</title>
    <style>
        body {
            background-color: #f8f9fa;
        }
        .profile-card {
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .profile-img {
            width: 150px;
            height: 150px;
            object-fit: cover;
            border: 5px solid #fff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section class="py-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 text-center">
                        <div class="card profile-card p-4">
                            <asp:Image ID="imgProfile" runat="server" CssClass="profile-img rounded-circle mb-3" ImageUrl="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp" />
                            <h4 class="fw-bold"><asp:Label ID="lblName" runat="server" Text="John Doe"></asp:Label></h4>
                            <p class="text-muted"><asp:Label ID="lblEmail" runat="server" Text="johndoe@example.com"></asp:Label></p>
                            <p class="badge bg-success"><asp:Label ID="lblStatus" runat="server" Text="Active"></asp:Label></p>
                            <p class="text-muted">Membership ID: <asp:Label ID="lblMembershipID" runat="server" Text="123456"></asp:Label></p>
                            <asp:Button ID="btnRenew" runat="server" CssClass="btn btn-primary" Text="Renew Membership" />
                            <asp:Button ID="btnSupport" runat="server" CssClass="btn btn-outline-secondary" Text="Contact Support" />
                            <asp:Button ID="btnEditProfile" runat="server" CssClass="btn btn-warning mt-3" Text="Edit Profile" OnClick="btnEditProfile_Click" />
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="card profile-card p-4 mb-4">
                            <h5 class="fw-bold">User Information</h5>
                            <hr>
                            <p><strong>Full Name:</strong> <asp:Label ID="lblFullName" runat="server" Text="John Doe"></asp:Label></p>
                            <p><strong>Email:</strong> <asp:Label ID="lblProfileEmail" runat="server" Text="johndoe@example.com"></asp:Label></p>
                            <p><strong>Membership ID:</strong> <asp:Label ID="lblProfileMembershipID" runat="server" Text="123456"></asp:Label></p>
                        </div>
                        <div class="card profile-card p-4">
                            <h5 class="fw-bold">Borrowed Books</h5>
                            <hr>
                            <asp:Repeater ID="rptBorrowedBooks" runat="server">
                                <ItemTemplate>
                                    <li class="list-group-item"><%# Eval("BookTitle") %> - <span class="text-muted">Due: <%# Eval("DueDate") %></span></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
