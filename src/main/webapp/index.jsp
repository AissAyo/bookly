<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bookly</title>
   <%@ include file="/include/css.jsp" %>
</head>
<body>
 <%@ include file="/include/header.jsp" %>
	 <main>
	  <div id="top_section" class=" banner_main">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div id="myCarousel" class="carousel slide" data-ride="carousel">
                   
                     <div class="carousel-inner">
                        <div class="carousel-item active">
                           <div class="container-fluid">
                              <div class="carousel-caption relative">
                                 <div class="bluid">
                                     <h1>Bookly Insights <br>Unleashing the Power of Books</h1>
										<p>There are countless treasures within the pages of every book, <br>each offering unique adventures, wisdom, and perspectives. <br>Dive into the enchanting world of literature with Bookly, <br>where stories come alive and imagination knows no bounds.</p>

                                    <a class="read_more" href="about.html">About Company </a><a class="read_more" href="contact.html">Contact </a>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="carousel-item">
                           <div class="container-fluid">
                              <div class="carousel-caption relative">
                                 <div class="bluid">
                                   <h1>Bookly Insights <br>Unleashing the Power of Books</h1>
										<p>There are countless treasures within the pages of every book, <br>each offering unique adventures, wisdom, and perspectives. <br>Dive into the enchanting world of literature with Bookly, <br>where stories come alive and imagination knows no bounds.</p>

                                    <a class="read_more" href="about.jsp">About  </a><a class="read_more" href="contact.jsp">Contact </a>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="carousel-item">
                           <div class="container-fluid">
                              <div class="carousel-caption relative">
                                 <div class="bluid">
                                    <h1>Creative  <br>Work Idea </h1>
                                    <p>There are many variations of passages of Lorem Ipsum <br>available, but the majority have suffered alteration
                                    </p>
                                    <a class="read_more" href="about.html">About Company </a><a class="read_more" href="contact.html">Contact </a>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="carousel-item">
                           <div class="container-fluid">
                              <div class="carousel-caption relative">
                                 <div class="bluid">
                                    <h1>  <br> </h1>
									<p>      <br>                               </p>
                                    <a class="read_more" href="about.html">About Company </a><a class="read_more" href="contact.html">Contact </a>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                     <i class="fa fa-angle-left" aria-hidden="true"></i>
                     <span class="sr-only">Previous</span>
                     </a>
                     <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                     <i class="fa fa-angle-right" aria-hidden="true"></i>
                     <span class="sr-only">Next</span>
                     </a>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- end slider section -->
   
  
      <!-- end about -->
      <!-- portfolio -->
      <div class="portfolio">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage text_align_left">
                     <h2>Most Popular Books </h2>
                  </div>
               </div>
            </div>
            <div class="row">
                 <div class="col-md-6">
                  <div id="ho_nf" class="portfolio_main text_align_left">
                     <figure>
                        <img src="<%= request.getContextPath() %>/template/images/book.jpg" alt="#"/>
                        <div class="portfolio_text">
                           <div class="li_icon">
                              <a href="https://www.dbooks.org/introductory-algebra-1607826593/pdf/"><span>Read Now</span></a>
                              <a href="https://www.dbooks.org/d/1607826593-1735852305-f7e52c3e04c90d1f/"><span>Download</span></a>
                           </div>
                           <h3>Carrency Dashbord</h3>
                           <p>There are many variations of passages of Lorem Ipsum available, but the majoraity have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable</p>
                        </div>
                     </figure>
                  </div>
               </div>
                <div class="col-md-6">
                  <div id="ho_nf" class="portfolio_main text_align_left">
                     <figure>
                        <img src="<%= request.getContextPath() %>/template/images/book.jpg" alt="#"/>
                        <div class="portfolio_text">
                           <div class="li_icon">
                              <a href="https://www.dbooks.org/introductory-algebra-1607826593/pdf/"><span>Read Now</span></a>
                              <a href="https://www.dbooks.org/d/1607826593-1735852305-f7e52c3e04c90d1f/"><span>Download</span></a>
                           </div>
                           <h3>Carrency Dashbord</h3>
                           <p>There are many variations of passages of Lorem Ipsum available, but the majoraity have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable</p>
                        </div>
                     </figure>
                  </div>
               </div>    <div class="col-md-6">
                  <div id="ho_nf" class="portfolio_main text_align_left">
                     <figure>
                        <img src="<%= request.getContextPath() %>/template/images/book.jpg" alt="#"/>
                        <div class="portfolio_text">
                           <div class="li_icon">
                              <a href="https://www.dbooks.org/introductory-algebra-1607826593/pdf/"><span>Read Now</span></a>
                              <a href="https://www.dbooks.org/d/1607826593-1735852305-f7e52c3e04c90d1f/"><span>Download</span></a>
                           </div>
                           <h3>Carrency Dashbord</h3>
                           <p>There are many variations of passages of Lorem Ipsum available, but the majoraity have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable</p>
                        </div>
                     </figure>
                  </div>
               </div>
               <div class="col-md-6">
                  <div id="ho_nf" class="portfolio_main text_align_left">
                     <figure>
                        <img src="<%= request.getContextPath() %>/template/images/book.jpg" alt="#"/>
                        <div class="portfolio_text">
                           <div class="li_icon">
                              <a href="https://www.dbooks.org/introductory-algebra-1607826593/pdf/"><span>Read Now</span></a>
                              <a href="https://www.dbooks.org/d/1607826593-1735852305-f7e52c3e04c90d1f/"><span>Download</span></a>
                           </div>
                           <h3>Carrency Dashbord</h3>
                           <p>There are many variations of passages of Lorem Ipsum available, but the majoraity have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable</p>
                        </div>
                     </figure>
                  </div>
               </div>
               <div class="col-md-6">
                  <div id="ho_nf" class="portfolio_main text_align_left">
                     <figure>
                        <img src="images/prot4.png" alt="#"/>
                        <div class="portfolio_text">
                           <div class="li_icon">
                              <a href="Javascript:void(0)"><i class="fa fa-search" aria-hidden="true"></i></a>
                              <a href="Javascript:void(0)"><i class="fa fa-link" aria-hidden="true"></i></a>
                           </div>
                           <h3>Carrency Dashbord</h3>
                           <p>There are many variations of passages of Lorem Ipsum available, but the majoraity have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable</p>
                        </div>
                     </figure>
                  </div>
               </div>
               <div class="col-md-12">
                  <a class="read_more" href="books.jsp">See More</a>
               </div>
            </div>
         </div>
      </div>
      <!-- end portfolio -->
    
         <!-- contact -->
      <div class="contact"  style=" background-color:blanchedalmond;align-items: center;"  >
         <div class="container"style="border-radius: 30px; border: 1px solid #000; padding: 20px; alin">
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
      <!-- contact -->
	 </main>
	  <%@ include file="/include/footer.jsp" %>
	 
</body>
</html>