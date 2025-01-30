<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="WebApplication7.profile" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
    <title>User Profile</title>
    <style>
body {
    background: url('https://www8.0zz0.com/2018/05/05/04/240909452.png') no-repeat center center fixed;
    background-size: cover;
    margin: 0;
    padding: 0;
    color: white; /* جعل النصوص باللون الأبيض */
}

.section-bg {
    background: transparent; /* إزالة أي خلفية من الكونتينر */
}

.card {
    border: none;
    border-radius: 15px;
    background-color: rgba(0, 0, 0, 0.3); /* أخضر مع شفافية 30% */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* تأثير الظل */
    transition: transform 0.3s ease;
    z-index: 1; /* التأكد من أن الكاردات تكون فوق الخلفية */
    color: white; /* جعل النص داخل الكاردات باللون الأبيض */
}

.card:hover {
    transform: translateY(-5px);
}

.profile-img {
    border: 5px solid #fff;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.btn-custom {
    background-color: #6c5ce7;
    color: white;
    border-radius: 25px;
    padding: 10px 20px;
    transition: background-color 0.3s ease;
}

.btn-custom:hover {
    background-color: #5a4bcf;
}

.btn-outline-custom {
    border-color: #6c5ce7;
    color: #6c5ce7;
    border-radius: 25px;
    padding: 10px 20px;
    transition: all 0.3s ease;
}

.btn-outline-custom:hover {
    background-color: ;
    color: white;
}

/*.text-purple {
    color: #6c5ce7;
}*/

/* إزالة شريط التنقل */
nav {
    display: none; /* إخفاء شريط التنقل بالكامل */
}

/* جعل النصوص داخل الفورم باللون الأبيض */
.form-control {
    color: white; /* النص داخل الحقول سيكون باللون الأبيض */
    background-color: rgba(0, 0, 0, 0.2); /* خلفية شفافة قليلاً للحقل */
    border: 1px solid rgba(0, 0, 0, 0.5); /* إضافة حد خفيف باللون الأبيض */
}

.form-label {
    color: white; /* النصوص التي تحتوي على label ستكون باللون الأبيض */
}

input::placeholder {
    color: white; /* النصوص داخل الحقول placeholder ستكون باللون الأبيض */
}

/* تخصيص الأزرار داخل الفورم */
.btn-custom {
    color: white; /* النص داخل الأزرار سيكون باللون الأبيض */
}

/* إضافة اللون الأبيض للنصوص داخل جميع الحقول */
input, textarea, select {
    color: white !important; /* إضافة اللون الأبيض لجميع النصوص داخل الحقول */
}

input::placeholder, textarea::placeholder {
    color: white !important; /* إضافة اللون الأبيض للنصوص داخل الـ placeholder */
}

input, textarea, select, .form-control {
    color: white !important; /* جعل النص داخل الحقول باللون الأبيض */
}input, textarea, select, .form-control {
    color: white !important; /* النص داخل الحقول */
}

input::placeholder, textarea::placeholder {
    color: white !important; /* النص داخل الـ placeholder */
}
.ali{
        color: white !important; /* النص داخل الـ placeholder */


}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section class="section-bg">
            <div class="container py-5">
                <div class="row">
                    <div class="col">
                        <nav aria-label="breadcrumb" class="bg-light rounded-3 p-3 mb-4">
                            <ol class="breadcrumb mb-0">
                                <li class="breadcrumb-item"><a href="#" class="text-decoration-none text-purple">Home</a></li>
                                <li class="breadcrumb-item"><a href="#" class="text-decoration-none text-purple">Library</a></li>
                                <li class="breadcrumb-item active"  aria-current="page">User Profile</li>
                            </ol>
                        </nav>
                    </div>
                </div>

                <div class="row">
                    <!-- Sidebar Profile -->
                    <div class="col-lg-4">
                        <div class="card mb-4">
                            <div class="card-body text-center">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFeO-enb1511jdK0krW1zWtbycwZPRE6q7Hg&s" 
                                     alt="avatar" class="rounded-circle profile-img img-fluid" style="width: 150px;">
                                <h5 class="my-3 text-purple">
                                    <asp:Label ID="lblFullName" CssClass="ali" runat="server" Text="John Doe"></asp:Label>
                                </h5>
                            </div>
                        </div>
                    </div>

                    <!-- Profile Details -->
                    <div class="col-lg-8">
                        <div class="card mb-4">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-3"><p class="mb-0"><i class="fas fa-user"></i> Full Name</p></div>
                                    <div class="col-sm-9">
                                        <p class="text-muted mb-0">
                                            <asp:Label ID="lblName" runat="server" Class="ali"  Text="John Doe"></asp:Label>
                                        </p>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3"><p class="mb-0"><i class="fas fa-envelope"></i> Email</p></div>
                                    <div class="col-sm-9">
                                        <p class="text-muted mb-0">
                                            <asp:Label ID="lblEmail" runat="server" Class="ali" Text="johndoe@example.com"></asp:Label>
                                        </p>
                                    </div>
                                </div>
                                
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3"><p class="mb-0"><i class="fas fa-lock"></i> Password</p></div>
                                    <div class="col-sm-9">
                                        <p class="text-muted mb-0">
                                            <asp:Label ID="lblPassword" runat="server" Class="ali" Text="********"></asp:Label>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Edit Profile Button -->
                        <div class="text-center">
                            <asp:Button ID="btnEditProfile" runat="server" CssClass="btn btn-warning btn-custom" Text="Edit Profile" OnClick="btnEditProfile_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
