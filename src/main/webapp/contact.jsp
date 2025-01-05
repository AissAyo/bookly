<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bookly-contact-us</title>
   <%@ include file="/include/css.jsp" %>
</head>
<body class="main-layout inner_page" 
      style="background-image: url('<%= request.getContextPath() %>/template/images/library4k.jpg'); 
             background-position: center; background-repeat: no-repeat;">
 <%@ include file="/include/header.jsp" %>
<div class="contact">
         <div class="container" style="border-radius: 30px; border: 1px solid #000; padding: 20px; background-color:blanchedalmond" >
            <div class="row ">
               <div class="col-md-8 offset-md-2">
                  <div class="titlepage text_align_left">
                     <h2>Get In Touch</h2>
                  </div>
                  <form id="request" class="main_form">
                     <div class="row">
                        <div class="col-md-12">
                           <input class="contactus" placeholder="Name" type="type" name=" Name"> 
                        </div>
                        <div class="col-md-12">
                           <input class="contactus" placeholder="Phone Number" type="type" name="Phone Number">                          
                        </div>
                        <div class="col-md-12">
                           <input class="contactus" placeholder="Email" type="type" name="Email">                          
                        </div>
                        <div class="col-md-12">
                           <textarea class="textarea" placeholder="Message" type="type" Message="Name"></textarea>
                        </div>
                        <div class="col-md-12">
                           <button class="send_btn">Send Now</button>
                        </div>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
	  <%@ include file="/include/footer.jsp" %>

</body>
</html>