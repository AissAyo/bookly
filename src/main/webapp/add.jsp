<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BOOKLY-ADMIN</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/template/css/admin-style.css">
</head>
<body class="main-layout inner_page" 
      style="background-image: url('<%= request.getContextPath() %>/template/images/adminbackground.jpg'); 
             background-position: center; background-repeat: no-repeat;">
<!-- Main content -->

<br>
<br>
<br>
<div style="display: flex; justify-content: center;">
 <a href="index.jsp"><img src="<%= request.getContextPath() %>/template/images/bookly.png" alt="wala khdm 3afak" /></a>					
</div>
<br>
<br>
<br>

<div class="admin-container">
    <h1>add Books</h1>
<form action="<%= request.getContextPath() %>/addbookservlet" method="post" class="book-form" >
    
        <label for="title">
            <span>Title</span>
            <input type="text"  name="title" placeholder="Enter book title"  />
        </label>

        <label for="authors">
            <span>Author</span>
            <input type="text" name="authors"  placeholder="Enter book author"  />
        </label>

        <label for="description">
            <span>Description</span>
            <input type="text" name="description" placeholder="Enter book description"  />
        </label>

        <label for="date">
            <span>Publication Date</span>
            <input type="date"  name="date"  />
        </label>

        <!-- Image upload field -->
        <label for="image">
            <span>Upload Cover Image</span>
            <input type="file" name="image" accept="image/*"  />
        </label>

        <!-- PDF upload field -->
        <label for="pdf">
            <span>Upload PDF</span>
            <input type="file" name="pdf"  accept="application/pdf"  />
        </label>
		 <a href="managebook.jsp">Manage Books</a>					
		
        <button type="submit" class="submit-btn">Add Book</button>
    </form>
</div>

<!-- Footer -->
<footer class="footer">
    <p>&copy; 2025 BOOKLY, All Rights Reserved.</p>
</footer>
</body>
</html>
