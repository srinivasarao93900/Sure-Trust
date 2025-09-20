<!-- File: student-project-hub/src/main/webapp/WEB-INF/views/upload.jsp -->
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Upload Project</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            min-height: 100vh;
            background: linear-gradient(120deg, #f4f8fc 0%, #e0c3fc 100%);
            font-family: 'Segoe UI', sans-serif;
        }
        .container {
            margin-top: 60px;
            background: rgba(255,255,255,0.97);
            padding: 35px 40px;
            border-radius: 18px;
            box-shadow: 0 8px 32px 0 rgba(106,17,203,0.15);
            max-width: 820px;
        }
        h2 {
            font-weight: bold;
            color: #6a11cb;
            text-shadow: 1px 2px 8px #e0c3fc;
            letter-spacing: 2px;
            margin-bottom: 30px;
            text-align: center;
        }
        label {
            font-weight: 500;
            color: #2575fc;
        }
        .form-control {
            border-radius: 8px;
            border: 1px solid #b39ddb;
            box-shadow: 0 1px 4px rgba(106,17,203,0.06);
            transition: border-color 0.2s;
        }
        .form-control:focus {
            border-color: #6a11cb;
            box-shadow: 0 2px 8px rgba(106,17,203,0.10);
        }
        .btn-success {
            background: linear-gradient(90deg, #43cea2 0%, #185a9d 100%);
            color: #fff;
            border: none;
            border-radius: 10px;
            font-weight: 600;
            font-size: 1.1rem;
            padding: 12px 0;
            box-shadow: 0 2px 8px rgba(67,206,162,0.12);
            transition: background 0.2s, transform 0.2s, box-shadow 0.2s;
        }
        .btn-success:hover {
            background: linear-gradient(90deg, #185a9d 0%, #43cea2 100%);
            color: #fff;
            transform: scale(1.04);
            box-shadow: 0 4px 16px rgba(67,206,162,0.18);
        }
        .form-label-required:after {
            content: " *";
            color: #ee0979;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Upload Your Project</h2>
    <form action="upload" method="post" enctype="multipart/form-data">
        <div class="mb-3">
            <label class="form-label-required">Name:</label>
            <input type="text" name="name" class="form-control" required>
        </div>
        <div class="mb-3">
            <label class="form-label-required">Roll Number:</label>
            <input type="text" name="rollNumber" class="form-control" required>
        </div>
        <div class="mb-3">
            <label class="form-label-required">Year of Study:</label>
            <input type="text" name="year" class="form-control" required>
        </div>
        <div class="mb-3">
            <label class="form-label-required">Phone (WhatsApp):</label>
            <input type="text" name="phone" class="form-control" required>
        </div>
        <div class="mb-3">
            <label class="form-label-required">Project Title:</label>
            <input type="text" name="title" class="form-control" required>
        </div>
        <div class="mb-3">
            <label class="form-label-required">Project Description:</label>
            <textarea name="description" class="form-control" required></textarea>
        </div>
        
        
   		<div class="mb-3">
   		 <label class="form-label-required">Technology Stack:</label>
   		 <input type="text" name="technologiesStack" required placeholder="Technologies Stack" class="form-control mb-2"/>
   		</div>
   		<div class="mb-3">
   		<label class="form-label-required">Steps for Application Development:</label>
   		<textarea name="developmentSteps" required placeholder="Steps for Application Development" class="form-control mb-2"></textarea>
    	</div>
    	<div class="mb-3">
   		<label class="">Project URL (optional):</label>
    	<input type="url" name="projectUrl" placeholder="Project URL (optional)" class="form-control mb-2"/>
   		 </div>
   		
   		 
        
        <div class="mb-3">
            <label class="form-label-required">Upload Project Files (ZIP, PDF, DOC, etc.):</label>
            <input type="file" name="file" class="form-control" required>
        </div>
        <div class="mb-3">
    <label class="form-label-required">Upload Project Demo Files (ZIP, PDF, DOC, etc.):</label>
    <input type="file" name="videofilePath" class="form-control">
</div>
        
        
        <div class="text-center">
            <button type="submit" class="btn btn-success w-100">Upload Project</button>
        </div>
   
    </form>
</div>
</body>
</html>