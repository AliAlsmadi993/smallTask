<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit_profile.aspx.cs" Inherits="WebApplication7.edit_profile" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
    <title>Edit Profile</title>
</head>
<body>
    <form id="form1" runat="server">
        <section style="background-color: #eee;">
            <div class="container py-5">
                <div class="row">
                    <div class="col">
                        <h2>Edit Profile</h2>
                        <div class="card mb-4">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-3"><p class="mb-0">Full Name</p></div>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3"><p class="mb-0">Email</p></div>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3"><p class="mb-0">Membership ID</p></div>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtMembershipID" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3"><p class="mb-0">Membership Status</p></div>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtStatus" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <hr>
                                <div class="text-center">
                                    <asp:Button ID="btnSaveChanges" runat="server" CssClass="btn btn-primary" Text="Save Changes" OnClick="btnSaveChanges_Click" />
                                </div>
                                <hr>
                                <div class="text-center">
                                    <asp:Button ID="btnGoToProfile" runat="server" CssClass="btn btn-secondary" Text="Go to Profile" OnClick="btnGoToProfile_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
