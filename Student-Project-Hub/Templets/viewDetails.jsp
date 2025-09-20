<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <title>Project Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(120deg, #f4f8fc 0%, #e0c3fc 100%);
            font-family: 'Segoe UI', sans-serif;
        }
        .container {
            margin-top: 60px;
            background: rgba(255,255,255,0.97);
            padding: 35px 40px;
            border-radius: 18px;
            box-shadow: 0 8px 32px 0 rgba(106,17,203,0.15);
            max-width: 700px;
        }
        h2 {
            font-weight: bold;
            color: #6a11cb;
            text-shadow: 1px 2px 8px #e0c3fc;
            letter-spacing: 2px;
            margin-bottom: 30px;
            text-align: center;
        }
        .table th {
            background: linear-gradient(90deg, #6a11cb 0%, #2575fc 100%) !important;
            color: #fff;
            font-size: 1.05rem;
            letter-spacing: 1px;
            width: 35%;
            border-right: 2px solid #e0c3fc;
        }
        .table td {
            background: #fff;
            vertical-align: middle;
            font-size: 1rem;
            border-left: 2px solid #e0c3fc;
        }
        .table tr:hover td {
            background: #e0c3fc33;
            transition: background 0.3s;
        }
        .wa-link, .feedback-link {
            display: inline-block;
            background: linear-gradient(90deg, #25d366 0%, #128c7e 100%);
            color: #fff !important;
            padding: 6px 16px;
            border-radius: 6px;
            font-weight: 500;
            text-decoration: none;
            transition: background 0.2s, box-shadow 0.2s;
            box-shadow: 0 2px 8px rgba(37,211,102,0.15);
        }
        .wa-link:hover, .feedback-link:hover {
            background: linear-gradient(90deg, #128c7e 0%, #25d366 100%);
            color: #fff;
            box-shadow: 0 4px 16px rgba(37,211,102,0.25);
        }
        .table img {
            border-radius: 10px;
            box-shadow: 0 2px 8px rgba(106,17,203,0.15);
            border: 2px solid #e0c3fc;
            margin: 5px 10px 5px 0;
            transition: transform 0.2s, box-shadow 0.2s;
        }
        .table img:hover {
            transform: scale(1.08);
            box-shadow: 0 4px 16px rgba(106,17,203,0.25);
            border-color: #6a11cb;
        }
        /* Highlight project URL */
        .project-url a {
            color: #2575fc;
            font-weight: 500;
            text-decoration: underline;
            transition: color 0.2s;
        }
        .project-url a:hover {
            color: #6a11cb;
        }
        /* Technologies and steps */
        .tech-stack, .dev-steps {
            background: linear-gradient(90deg, #f7971e 0%, #ffd200 100%);
            color: #333;
            border-radius: 6px;
            padding: 8px 12px;
            font-weight: 500;
            box-shadow: 0 2px 8px rgba(255,210,0,0.08);
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Project Details</h2>
    <table class="table table-bordered">
        <tr><th>Student Name</th><td>${project.name}</td></tr>
        <tr><th>Roll Number</th><td>${project.rollNumber}</td></tr>
        <tr><th>Year</th><td>${project.year}</td></tr>
        <tr>
            <th>Phone</th>
            <td>
                <a href="https://wa.me/${project.phone}" target="_blank" class="wa-link">
                    ${project.phone}
                </a>
            </td>
        </tr>
        <tr><th>Title</th><td>${project.title}</td></tr>
        <tr><th>Description</th><td>${project.description}</td></tr>
        <tr><th>Technologies Stack</th><td class="tech-stack">${project.technologiesStack}</td></tr>
        <tr><th>Development Steps</th><td class="dev-steps">${project.developmentSteps}</td></tr>
        <tr>
            <th>Project URL</th>
            <td class="project-url">
                <c:if test="${not empty project.projectUrl}">
                    <a href="${project.projectUrl}" target="_blank">${project.projectUrl}</a>
                </c:if>
            </td>
        </tr>
        <%-- <tr>
            <th>Webpage Images</th>
            <td>
<c:forEach var="imgPath" items="${fn:split(project.imagePaths, ',')}">
    <img src="/uploads/${fn:split(imgPath, '/')[fn:length(fn:split(imgPath, '/'))-1]}" style="max-width:200px;"/>
</c:forEach>
            </td>
        </tr> --%>
        
        <tr>
    <%-- <th>Download Images</th>
    <td>
        <a href="/download-images/${project.id}" class="btn btn-warning btn-sm">Download All Images (ZIP)</a>
    </td> --%>
</tr>
        
        
        
        
        <tr>
            <th>Feedback</th>
            <td>
                <a href="https://wa.me/${project.phone}?text=Hi%20${project.name},%20I%20would%20like%20to%20give%20feedback%20on%20your%20project%20'${project.title}'."
                   target="_blank" class="feedback-link">
                    Give Feedback on WhatsApp
                </a>
            </td>
        </tr>
        
    </table>
</div>
</body>
</html>
