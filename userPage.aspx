<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userPage.aspx.cs" Inherits="WebApplication7.userPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>User Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
    <style>
        body {
            background: #f8f9fa;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container {
            max-width: 800px;
        }
        .card {
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            height: 100%;
        }
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
        }
        .card img {
            height: 200px;
            object-fit: cover;
        }
        .card-title {
            font-size: 1.5rem;
            font-weight: bold;
            color: #007bff;
        }
        .card-text {
            font-size: 1rem;
            color: #6c757d;
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
            border-radius: 50px;
            padding: 10px 20px;
            font-size: 1rem;
            transition: background-color 0.3s ease;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .row {
            row-gap: 20px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
                                        <asp:Button ID="Button5" runat="server" CssClass="btn btn-primary" Text="profile" OnClick="Button5_Click" />

        <div class="container">
            <div class="row row-cols-1 row-cols-md-2 g-4">
                <!-- Show a Book Card -->
                <div class="col">
                    <div class="card text-center">
                        <img src="https://uploads.prod01.london.platform-os.com/instances/21/assets/Waterstones%20books.jpg.crdownload?updated=1645521181" class="card-img-top" alt="Books Image" />
                        <div class="card-body">
                            <h5 class="card-title">Show a Book</h5>
                            <p class="card-text">Click here to view books in the collection.</p>
                            <asp:Button ID="btnshowBook" runat="server" CssClass="btn btn-primary" Text="Show Book" OnClick="btnshowBook_Click" />
                        </div>
                    </div>
                </div>

                <!-- Show a Meeting Room Card -->
                <div class="col">
                    <div class="card text-center">
                        <img src="https://media.maiortvlift.com/maiormover/uploads/2024/05/tech-meeting-room-1024x538.jpg" class="card-img-top" alt="Meeting Room Image" />
                        <div class="card-body">
                            <h5 class="card-title">Show a Meeting Room</h5>
                            <p class="card-text">Click here to view available meeting rooms.</p>
                            <asp:Button ID="showMeatingroom" runat="server" CssClass="btn btn-primary" Text="Meeting Room" OnClick="showMeatingroom_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
