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

                                    <a class="read_more" href="about.jsp">About  </a><a class="read_more" href="contact.jsp">Contact </a>
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
                        <img src="<%= request.getContextPath() %>/template/images/img3.jpg" alt="#"/>
                        <div class="portfolio_text">
                           <div class="li_icon">
                              <a href="https://www.dbooks.org/aspnet-core-6-succinctly-164200233x/pdf/"><span>Read Now</span></a>
                              <a href="https://www.dbooks.org/d/164200233X-1736417736-a107ff2485ef3e57/"><span>Download</span></a>
                           </div>
                           <h3>ASP.NET Core 6 Succinctly</h3>
                           <p>
In ASP.NET Core 6 Succinctly, author Dirk Strauss guides web developers through some of the significant performance and feature improvements newly available in ASP.NET Core 6. Learn about the unmissable practicality of Hot Reload, explore super-helpful C# 10 features, pick up the essentials of how to build a minimal API, and discover how and why developers should use dependency injection.
	
This open book is licensed under a Open Publication License (OPL). You can download ASP.NET Core 6 Succinctly ebook for free in PDF format (2.2 MB).
</p>
                        </div>
                     </figure>
                  </div>
               </div>
                <div class="col-md-6">
                  <div id="ho_nf" class="portfolio_main text_align_left">
                     <figure>
                        <img src="<%= request.getContextPath() %>/template/images/img5.jpg" alt="#"/>
                        <div class="portfolio_text">
                           <div class="li_icon">
                              <a href="https://www.dbooks.org/build-a-raspberry-pi-media-player-5709901124/pdf/"><span>Read Now</span></a>
                              <a href="https://www.dbooks.org/d/5709901124-1736330438-80711b98c2be0682/"><span>Download</span></a>
                           </div>
                           <h3>Build a Raspberry Pi Media Player</h3>
                           <p>Power up your TV and music system with Raspberry Pi: build the ultimate media centre, smart music system, and create a home server.
- Inside Build a Raspberry Pi Media Player.
- Create the ultimate media centre. Gather your parts and build your Raspberry Pi media player.
- Install media player software. How to use RetroPie software for playing games, and add Kodi for media and streaming.
- Build the ultimate home server. Sharing and storing files on your Raspberry Pi enables you to access them from anywhere in the home.
- Create an amazing music system. Create a digital jukebox using open-source software.
- Set up multi-room audio. Fill your home with sound using a multi-room setup.
- Product tests. The best media player equipment tested.</p>
                        </div>
                     </figure>
                  </div>
               </div>    <div class="col-md-6">
                  <div id="ho_nf" class="portfolio_main text_align_left">
                     <figure>
                        <img src="<%= request.getContextPath() %>/template/images/img4.jpg" alt="#"/>
                        <div class="portfolio_text">
                           <div class="li_icon">
                              <a href="https://www.dbooks.org/engineering-systems-dynamics-modelling-simulation-and-design-199013209x/pdf/"><span>Read Now</span></a>
                              <a href="https://www.dbooks.org/d/199013209X-1736330718-46da66d4eab85250/"><span>Download</span></a>
                           </div>
                           <h3>Engineering Systems Dynamics, Modelling, Simulation, and Design</h3>
                           <p>This open education resource presents effective system modelling methods, including Lagrangian and bond graph, and the application of a relevant engineering software tool, 20-sim. The content is designed for engineering students and professionals in the field to support their understanding and application of these methods for modelling, simulation, and design of engineering systems. The text also includes videos showing selected worked-out examples.</p>
                        </div>
                     </figure>
                  </div>
               </div>
               <div class="col-md-6">
                  <div id="ho_nf" class="portfolio_main text_align_left">
                     <figure>
                        <img src="<%= request.getContextPath() %>/template/images/img2.jpg" alt="#"/>
                        <div class="portfolio_text">
                           <div class="li_icon">
                              <a href="https://www.dbooks.org/financing-investment-in-times-of-high-public-debt-1805112015/pdf/"><span>Read Now</span></a>
                              <a href="https://www.dbooks.org/d/1805112015-1736342184-dfc4577410d59571/"><span>Download</span></a>
                           </div>
                           <h3>Financing Investment in Times of High Public Debt</h3>
                           <p>The fourth book in the 'European Public Investment Outlook' series focuses on the urgent issue of how to finance needed investment in critical tangible and intangible infrastructure given high levels of public debt, a thorny problem facing many governments across Europe. Drawing on expertise from academics, researchers at public policy institutes and international governance bodies, the contributors analyse the current situation and prospects and propose feasible solutions.
                             Financing Investment in Times of High Public Debt offers a powerful combination of high-level analysis of cross-continental policies and trends, with close examination of specific contexts in France, Italy, Germany and Spain. The chapters in Part II explore challenges including how to finance climate investments, the extent to which national promotional banks can offer solutions, EU budget reform and recent trends in tax progressivity.
                             This book is essential reading for economists, policymakers, and anyone interested in implementing and financing public policy in Europe and wanting to better understand the intricacies of EU governance and institutions.</p>
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