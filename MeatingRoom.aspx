<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MeatingRoom.aspx.cs" Inherits="WebApplication7.MeatingRoom" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Meeting Room</title>
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
            <!-- Page Header -->
            <div class="card mb-4">
                <div class="card-header bg-primary text-white text-center">
                    <h2><i class="fas fa-door-open"></i> Meeting Room Details</h2>
                </div>
                <div class="card-body text-center">
                    <asp:Button ID="btnGoHome" runat="server" Text="Go to Home Page" CssClass="btn btn-primary btn-lg" OnClick="btnGoHome_Click" />
                </div>
            </div>

            <!-- Available Rooms Section -->
            <div class="card">
                <div class="card-header bg-success text-white text-center">
                    <h3><i class="fas fa-list"></i> Available Rooms</h3>
                </div>
                <div class="card-body">
                    <table class="table table-bordered text-center">
                        <thead class="table-light">
                            <tr>
                                <th>Room ID</th>
                                <th>Room Name</th>
                                <th>Room Location</th>
                                <th>Room Capacity</th>
                            </tr>
                        </thead>
                        <tbody id="roomsTableBody" runat="server">
                            <!-- Dynamic rows will be added here -->
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
