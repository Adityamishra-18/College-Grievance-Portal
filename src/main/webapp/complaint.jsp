<!DOCTYPE html>
<html>
<head>
    <title>Submit Complaint</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f9;
            margin: 0;
            padding: 40px;
        }

        .container {
            width: 500px;
            margin: auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px #ccc;
        }

        h2 {
            text-align: center;
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
        }

        input, textarea, select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            box-sizing: border-box;
        }

        textarea {
            height: 100px;
        }

        button {
            width: 100%;
            margin-top: 20px;
            padding: 12px;
            background: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background: #0056b3;
        }
    </style>
</head>

<body>

<div class="container">

    <h2>Submit Complaint</h2>

    <form action="${pageContext.request.contextPath}/submitComplaint" method="post">

        <label>Complaint Title</label>
        <input type="text" name="title" required>

        <label>Description</label>
        <textarea name="description" required></textarea>

        <label>Category</label>
        <select name="category" required>
            <option value="">Select Category</option>
            <option value="Academic">Academic</option>
            <option value="Hostel">Hostel</option>
            <option value="Library">Library</option>
            <option value="Infrastructure">Infrastructure</option>
            <option value="Examination">Examination</option>
            <option value="Other">Other</option>
        </select>

        <label>Priority</label>
        <select name="priority" required>
            <option value="">Select Priority</option>
            <option value="LOW">Low</option>
            <option value="MEDIUM">Medium</option>
            <option value="HIGH">High</option>
        </select>

        <label>Department</label>
        <input type="text" name="department" required>

        <label>Student ID</label>
        <input type="number" name="studentId" required>

        <button type="submit">Submit Complaint</button>

    </form>

</div>

</body>
</html>
