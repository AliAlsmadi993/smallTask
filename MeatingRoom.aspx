<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MeatingRoom.aspx.cs" Inherits="WebApplication7.MeatingRoom" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Meeting Room</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Meeting Room Details</h2>
                                <asp:Button ID="btnGoHome" runat="server" Text="Go to Home Page" CssClass="btn btn-primary mt-3" OnClick="btnGoHome_Click" />

            <!-- Display Room List -->
            <h3>Available Rooms</h3>
            <table class="table table-bordered">
                <thead>
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
    </form>
</body>
</html>
