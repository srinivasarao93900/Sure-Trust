<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>All Projects</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(120deg, #f4f8fc 0%, #e0c3fc 100%);
            font-family: 'Segoe UI', sans-serif;
        }
        h2 {
            font-weight: bold;
            color: #6a11cb;
            text-shadow: 1px 2px 8px #e0c3fc;
            letter-spacing: 2px;
        }
        .table th {
            background: linear-gradient(90deg, #6a11cb 0%, #2575fc 100%) !important;
            color: #fff;
            font-size: 1.1rem;
            letter-spacing: 1px;
        }
        .table td {
            background: #fff;
            vertical-align: middle;
            font-size: 1rem;
        }
        .btn-info {
            background: linear-gradient(90deg, #43cea2 0%, #185a9d 100%);
            color: #fff;
            border: none;
            box-shadow: 0 2px 8px rgba(67,206,162,0.2);
            transition: transform 0.2s, box-shadow 0.2s;
        }
        .btn-info:hover {
            background: linear-gradient(90deg, #185a9d 0%, #43cea2 100%);
            transform: scale(1.08);
            box-shadow: 0 4px 16px rgba(67,206,162,0.3);
        }
        .btn-warning {
            background: linear-gradient(90deg, #f7971e 0%, #ffd200 100%);
            color: #333;
            border: none;
            box-shadow: 0 2px 8px rgba(255,210,0,0.2);
            transition: transform 0.2s, box-shadow 0.2s;
        }
        .btn-warning:hover {
            background: linear-gradient(90deg, #ffd200 0%, #f7971e 100%);
            color: #fff;
            transform: scale(1.08);
            box-shadow: 0 4px 16px rgba(255,210,0,0.3);
        }
        .container {
            margin-top: 40px;
            background: rgba(255,255,255,0.95);
            padding: 30px 40px;
            border-radius: 18px;
            box-shadow: 0 8px 32px 0 rgba(106,17,203,0.15);
        }
        tr:hover td {
            background: #e0c3fc33;
            transition: background 0.3s;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>All Uploaded Projects</h2>
    <input type="text" id="searchBox" class="form-control mb-3" placeholder="Search by Name, Roll No, Title...">
    <!-- <table class="table table-bordered table-striped mt-3"> -->
    <table class="table table-bordered table-striped mt-3" id="projectsTable">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Roll No</th>
                <th>Project Title</th>
                <th>Technology Stack</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="project" items="${projects}">
                <tr>
                    <td>${project.id}</td>
                    <td>${project.name}</td>
                    <td>${project.rollNumber}</td>
                    <td>${project.title}</td>
                    <th>${project.technologiesStack}</th>
                  <td>
    <a href="view/${project.id}" class="btn btn-info btn-sm">View</a>
    <c:if test="${not empty project.filePath}">
        <a href="download/${project.id}" class="btn btn-warning btn-sm ms-1">Download</a>
    </c:if>
    <c:if test="${not empty project.videofilePath}">
        <a href="download-supporting/${project.id}" class="btn btn-warning btn-sm ms-1">Download Project Demo Video</a>
    </c:if>
</td>

                    
                    
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
<script>
document.addEventListener('DOMContentLoaded', function () {
    document.getElementById('searchBox').addEventListener('keyup', function () {
        var value = this.value.toLowerCase();
        var rows = document.querySelectorAll('#projectsTable tbody tr');
        rows.forEach(function (row) {
            var text = row.textContent.toLowerCase();
            row.style.display = text.includes(value) ? '' : 'none';
        });
    });
});
</script>


</body>
</html>
