<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Project Hub</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <style>
        body {
            min-height: 100vh;
            background: linear-gradient(120deg, #f4f8fc 0%, #e0c3fc 100%);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .navbar {
            background: linear-gradient(90deg, #43cea2 0%, #185a9d 100%);
            box-shadow: 0 4px 16px rgba(67,206,162,0.08);
        }
        .navbar-brand {
            font-weight: bold;
            font-size: 1.5rem;
            color: #fff !important;
            letter-spacing: 1px;
        }
        .navbar img {
            margin-right: 10px;
        }
        .main-card {
            margin: 60px auto 0 auto;
            background: rgba(255,255,255,0.97);
            padding: 40px 40px 30px 40px;
            border-radius: 20px;
            box-shadow: 0 8px 32px 0 rgba(106,17,203,0.15);
            max-width: 480px;
        }
        h2 {
            font-weight: bold;
            color: #6a11cb;
            text-shadow: 1px 2px 8px #e0c3fc;
            letter-spacing: 2px;
            margin-bottom: 32px;
        }
        .btn-hub {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            font-size: 1.1rem;
            font-weight: 500;
            border: none;
            border-radius: 10px;
            padding: 14px 0;
            width: 100%;
            margin-bottom: 18px;
            background: linear-gradient(90deg, #43cea2 0%, #185a9d 100%);
            color: #fff;
            box-shadow: 0 2px 8px rgba(67,206,162,0.12);
            transition: background 0.2s, transform 0.2s, box-shadow 0.2s;
        }
        .btn-hub:last-child {
            background: linear-gradient(90deg, #f7971e 0%, #ffd200 100%);
            color: #333;
        }
        .btn-hub:hover {
            transform: scale(1.04);
            box-shadow: 0 4px 16px rgba(67,206,162,0.18);
            color: #fff;
        }
        .btn-hub:last-child:hover {
            background: linear-gradient(90deg, #ffd200 0%, #f7971e 100%);
            color: #fff;
        }
        .btn-contact {
            background: linear-gradient(90deg, #ff6a00 0%, #ee0979 100%);
            color: #fff;
            font-weight: 500;
            border: none;
            border-radius: 10px;
            width: 100%;
            padding: 12px 0;
            margin-top: 10px;
            box-shadow: 0 2px 8px rgba(238,9,121,0.12);
            transition: background 0.2s, transform 0.2s, box-shadow 0.2s;
        }
        .btn-contact:hover {
            background: linear-gradient(90deg, #ee0979 0%, #ff6a00 100%);
            color: #fff;
            transform: scale(1.04);
            box-shadow: 0 4px 16px rgba(238,9,121,0.18);
        }
        .footer {
            text-align: center;
            color: #6a11cb;
            margin-top: 60px;
            font-size: 1rem;
            opacity: 0.8;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="https://img.icons8.com/color/48/000000/student-center.png" alt="" width="62" height="58">
            Student Project Hub
        </a>
       <!--  <button class="btn btn-light ms-auto" style="font-weight:600;">
            <i class="fa-solid fa-user"></i> Login
        </button> -->
    </div>
</nav>
<div class="main-card text-center">
    <h2>Welcome to Student Project Hub</h2>
    <a href="upload" class="btn btn-hub mb-3">
        <i class="fa-solid fa-upload"></i> Upload Project
    </a>
    <a href="projects" class="btn btn-hub">
        <i class="fa-solid fa-list"></i> Show Projects
    </a>
    <button type="button" class="btn btn-contact" data-bs-toggle="modal" data-bs-target="#contactModal">
        <i class="fa-solid fa-envelope"></i> Contact Us
    </button>
</div>
<div class="footer">
    &copy; 2025 Student Project Hub &mdash; Empowering Student Innovation
</div>

<!-- Contact Modal -->
<div class="modal fade" id="contactModal" tabindex="-1" aria-labelledby="contactModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header" style="background: linear-gradient(90deg, #43cea2 0%, #185a9d 100%);">
        <h5 class="modal-title" id="contactModalLabel" style="color:#fff;">Contact Us</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body text-start">
        <p><i class="fa-solid fa-envelope"></i> Email: <a href="mailto:support@projecthub.com">support@projecthub.com</a></p>
        <p><i class="fa-brands fa-whatsapp"></i> WhatsApp: <a href="https://wa.me/919999999999" target="_blank">+91 99999 99999</a></p>
        <p><i class="fa-solid fa-globe"></i> Website: <a href="https://projecthub.com" target="_blank">projecthub.com</a></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>