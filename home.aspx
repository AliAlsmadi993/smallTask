<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplication7.home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Home Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #f8f9fa;
        }
        .navbar {
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        .carousel-inner img {
            height: 500px;
            object-fit: cover;
        }
        .carousel-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5); /* شفافية خلفية النص */
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            z-index: 2;
            color: white;
            text-align: center;
        }
        .carousel-indicators [data-bs-target] {
            background-color: #007bff;
        }
        .carousel-control-prev-icon,
        .carousel-control-next-icon {
            filter: invert(1);
        }
        .btn-outline-success {
            margin-left: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Navbar Section -->
        <nav class="navbar navbar-expand-lg navbar-light bg-white sticky-top">
            <div class="container-fluid">
                <a class="navbar-brand fw-bold text-primary" href="#">My Website</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="home.aspx">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">About</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Services
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Service 1</a></li>
                                <li><a class="dropdown-item" href="#">Service 2</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#">Other Services</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled" aria-disabled="true">Contact</a>
                        </li>
                    </ul>
                    <asp:Button ID="register1" runat="server" class="btn btn-outline-success" OnClick="register1_Click" Text="Register" />
                    <asp:Button ID="login1" runat="server" CssClass="btn btn-outline-success" OnClick="login1_Click" Text="Login" />
                </div>
            </div>
        </nav>

        <!-- Carousel Section -->
        <div id="carouselExampleIndicators" class="carousel slide position-relative" data-bs-ride="carousel">
            <!-- Overlay for text -->
            <div class="carousel-overlay">
                <h1>Welcome to Our Website</h1>
                <p class="mt-3">Explore our services and enjoy your experience!</p>
                <asp:Button ID="btnLearnMore" runat="server" CssClass="btn btn-primary mt-3" Text="Learn More" />
            </div>

            <!-- Carousel Indicators -->
            <ol class="carousel-indicators">
                <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"></li>
                <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"></li>
                <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="https://www.independentarabia.com/sites/default/files/styles/1368x911/public/article/mainimage/2019/12/17/135721-212827285.jpg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8kwolhcUyBh_NYk_8GNEFFJlJL-0kYWXtqmA4e_zSAPvRld6HIDtrOedvfrJP764XcO4&usqp=CAU" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="https://bibliosecom.wordpress.com/wp-content/uploads/2019/02/th.jpg?w=430" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </a>
        </div>

        <!-- Content Section -->
        <div class="container text-center mt-5">
            <h1>Explore Our Features</h1>
            <p class="mt-3">We offer a variety of services to meet your needs.</p>
        </div>
    </form>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
