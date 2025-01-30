<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit_profile.aspx.cs" Inherits="WebApplication7.edit_profile" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
    <title>Edit Profile</title>
    <style>
      body {
            background: url('https://img.pikbest.com/ai/illus_our/20230421/2dce4731ae978cc4557d3c22bdf82319.jpg!w700wp') no-repeat center center fixed;
            background-size: cover;
            color: white; /* Set the text color to white */
        }

        /* Style for the card (form) */
        .card {
            border-radius: 15px;
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent black background */
            color: white; /* Text color inside the form */
            box-shadow: 0 4px 15px rgba(255, 255, 255, 0.5); /* White shadow around the form */
            padding: 30px;
        }

        /* Title style */
        .card h2 {
            font-size: 2rem;
            margin-bottom: 30px;
            text-align: center;
        }

        /* Input field styling */
        .form-control {
            border-radius: 10px;
            background-color: rgba(0, 0, 0, 0.7); /* Dark background for inputs */
            color: white; /* White text inside inputs */
            border: 1px solid rgba(255, 255, 255, 0.3); /* Light border */
            box-shadow: 0 4px 10px rgba(255, 255, 255, 0.2); /* White shadow inside inputs */
            padding: 15px;
            font-size: 1rem;
        }

        /* Input focus effect */
        .form-control:focus {
            border-color: #fff; /* White border on focus */
            box-shadow: 0 0 8px rgba(255, 255, 255, 0.7); /* White glow on focus */
        }

        /* Password input field and toggle icon */
        .input-group-text {
            background-color: #007bff;
            color: white;
            border-radius: 10px 0 0 10px;
        }

        .password-toggle {
            cursor: pointer;
            color: #007bff;
        }

        .password-toggle:hover {
            color: #0056b3;
        }

        /* Custom button styling */
        .btn-custom {
            width: 100%;
            padding: 12px;
            border-radius: 10px;
            font-size: 1.1rem;
            font-weight: bold;
            margin-top: 20px;
        }

        .btn-custom-primary {
            background-color: #007bff;
            border: none;
        }

        .btn-custom-secondary {
            background-color: #6c757d;
            border: none;
        }

        .btn-custom:hover {
            opacity: 0.9;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section class="container py-5">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card shadow-lg">
                        <div class="card-body">
                            <h2 class="text-center mb-4"><i class="fas fa-user-edit"></i> Edit Profile</h2>
                            
                            <div class="mb-3">
                                <label class="form-label"><i class="fas fa-user"></i>  Name</label>
                                <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" placeholder="Enter full name"></asp:TextBox>
                            </div>

                            <div class="mb-3">
                                <label class="form-label"><i class="fas fa-envelope"></i> Email</label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter email"></asp:TextBox>
                            </div>

                 

                            <div class="mb-3">
                                <label class="form-label"><i class="fas fa-lock"></i> Password</label>
                                <div class="input-group">
                                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter new password"></asp:TextBox>
                                    <button type="button" class="btn btn-outline-secondary" onclick="togglePassword()">
                                        <i class="fas fa-eye"></i>
                                    </button>
                                </div>
                            </div>

                            <div class="text-center">
                                <asp:Button ID="btnSaveChanges" runat="server" CssClass="btn btn-primary btn-custom w-100" Text="Save Changes" OnClick="btnSaveChanges_Click" />
                            </div>

                            <div class="text-center mt-3">
                                <asp:Button ID="btnGoToProfile" runat="server" CssClass="btn btn-secondary btn-custom w-100" Text="Go to Profile" OnClick="btnGoToProfile_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>

    <script>
        function togglePassword() {
            var passwordField = document.getElementById('<%= txtPassword.ClientID %>');
            if (passwordField.type === "password") {
                passwordField.type = "text";
            } else {
                passwordField.type = "password";
            }
        }
    </script>
</body>
</html>
