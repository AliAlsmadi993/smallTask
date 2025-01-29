<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="WebApplication7.profile" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
    <title>User Profile</title>
</head>
<body>
    <form id="form1" runat="server">
        <section style="background-color: #eee;">
            <div class="container py-5">
                <div class="row">
                    <div class="col">
                        <nav aria-label="breadcrumb" class="bg-body-tertiary rounded-3 p-3 mb-4">
                            <ol class="breadcrumb mb-0">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item"><a href="#">Library</a></li>
                                <li class="breadcrumb-item active" aria-current="page">User Profile</li>
                            </ol>
                        </nav>
                    </div>
                </div>

                <div class="row">
                    <!-- Sidebar Profile -->
                    <div class="col-lg-4">
                        <div class="card mb-4">
                            <div class="card-body text-center">
                                <img src="https://i.pinimg.com/736x/32/eb/5b/32eb5b8700325a06af8e936e0c320ce1.jpg" 
                                     alt="avatar" class="rounded-circle img-fluid" style="width: 150px;">
                                <h5 class="my-3">
                                    <asp:Label ID="lblFullName" runat="server" Text="John Doe"></asp:Label>
                                </h5>
                                <p class="text-muted mb-1">Library Member</p>
                                <p class="text-muted mb-4">Membership ID: 
                                    <asp:Label ID="lblProfileMembershipID" runat="server" Text="123456"></asp:Label>
                                </p>
                                <div class="d-flex justify-content-center mb-2">
                                    <asp:Button ID="btnRenew" runat="server" CssClass="btn btn-primary" Text="Renew Membership" />
                                    <asp:Button ID="btnContact" runat="server" CssClass="btn btn-outline-primary ms-1" Text="Contact Support" />
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Profile Details -->
                    <div class="col-lg-8">
                        <div class="card mb-4">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-3"><p class="mb-0">Full Name</p></div>
                                    <div class="col-sm-9">
                                        <p class="text-muted mb-0">
                                            <asp:Label ID="lblName" runat="server" Text="John Doe"></asp:Label>
                                        </p>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3"><p class="mb-0">Email</p></div>
                                    <div class="col-sm-9">
                                        <p class="text-muted mb-0">
                                            <asp:Label ID="lblEmail" runat="server" Text="johndoe@example.com"></asp:Label>
                                        </p>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3"><p class="mb-0">Membership ID</p></div>
                                    <div class="col-sm-9">
                                        <p class="text-muted mb-0">
                                            <asp:Label ID="lblMembershipID" runat="server" Text="123456"></asp:Label>
                                        </p>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3"><p class="mb-0">Membership Status</p></div>
                                    <div class="col-sm-9">
                                        <p class="text-muted mb-0">
                                            <asp:Label ID="lblStatus" runat="server" Text="Active"></asp:Label>
                                        </p>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3"><p class="mb-0">Profile Email</p></div>
                                    <div class="col-sm-9">
                                        <p class="text-muted mb-0">
                                            <asp:Label ID="lblProfileEmail" runat="server"></asp:Label>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>

                      

                        <!-- Edit Profile Button -->
                        <div class="text-center">
                            <asp:Button ID="btnEditProfile" runat="server" CssClass="btn btn-warning" Text="Edit Profile" OnClick="btnEditProfile_Click" />
                        </div>

                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
