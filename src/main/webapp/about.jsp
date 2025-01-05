<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bookly</title>
   <%@ include file="/include/css.jsp" %>
</head>
<body class="main-layout inner_page" 
      style="background-image: url('<%= request.getContextPath() %>/template/images/library4k.jpg'); 
             background-position: center; background-repeat: no-repeat;">
	  <%@ include file="/include/header.jsp" %>
 
	<main>

  <div class="about">
      <div class="container">
         <div class="row">
            <div class="col-md-12">
               <div class="titlepage text_align_center">
                 <h2 style="color: rgb(118, 67, 0);">About Our Library</h2>
<p style="color: rgb(118, 67, 0);">
   Welcome to our online library! We provide a vast collection of books, articles, and digital resources, accessible anytime and anywhere. Explore knowledge, ignite imagination, and embark on your reading journey with us.
</p>
                 
                  <video style="height:580px; width:90%;" autoplay controls muted loop>
                     <source src="<%= request.getContextPath() %>/template/images/about.mp4" type="video/mp4">
                     Your browser does not support the video tag.
                  </video>
                   <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br><br>
                  <br>
                  
                  <br>
                  <br>
                  <br>
                   <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br><br>
                  <br>
                  
                  <br>
                  <br>
                  <br>
                   <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                 
                   <br>
                  <br>
                  <br>
               </div>
            </div>
         </div>
      </div>
   </div>
   
	</main>
         

	  <%@ include file="/include/footer.jsp" %>

</body>
</html>