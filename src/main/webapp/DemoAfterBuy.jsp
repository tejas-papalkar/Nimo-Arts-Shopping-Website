<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AfterBuy Us-www.nimoarts.com</title>
    <script type="text/javascript"
        src="https://platform-api.sharethis.com/js/sharethis.js#property=60f919b6e08a6a001288e014&product=sticky-share-buttons"
        async="async"></script>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/hower.css">
    
    <link rel="stylesheet" href="css/afterbuycontact.css">
   
</head>

<body>
    <header>
        <nav class="navigation">
            <div class="navleft">
                <ul>
                    <li id="about"><a href="index.jsp">Home</a> </li>
                    <li id="about"><a id="about2" href="about.html">About Us</a> </li>
                    <li id="contact"><a id="location" href="contact.html">Contact</a> </li>
                    <li id="location"><a id="contact2" href="https://maps.app.goo.gl/PPb4mFMeb22z4xpv5" target="-blank"> Location</a></li>
                </ul>
            </div>
            


        </nav>
    </header>
          
    <hr id="con-hr">
    <main>
    <%String CName=(String)session.getAttribute("customerName");
          String CMail=(String)session.getAttribute("customerMail");
          String CMno=(String)session.getAttribute("customerMno");
          String CAdd=(String)session.getAttribute("customeradd");
          String CZip=(String)session.getAttribute("customerZipcode");
          
          out.println(CName);
           out.println(CMail);
           out.println(CMno);
           out.println(CAdd);
           out.println(CZip);%>
          <% response.sendRedirect("invoice.jsp");
           %>
           
        <span id="headi1">Your Order Has Been Placed Successfully !</span><br><br>
<span id="headi2">* Product Will Be Delivered Within 10-15 Working Days </span>
        <span id="heading"><u>Recommendations</u></span>
        <div class="smallarticle">

            <div class="article1">
                <a href="21.html" id="article-html">
                    <img id="article1-img21" src="img/21.png" alt="">

                    <span id="img-caption">Wall Stone Work - 17,000 RS </span>

                </a>
            </div>
            <div class="article1">
                <a href="22.html" id="article-html">
                    <img id="article1-img22" src="img/spspspspspspsps.jpg" alt="">

                    <span id="img-caption">Stone Work - 7999 RS </span>

                </a>
            </div>
            <div class="article1">
                <a href="23.html" id="article-html">
                    <img id="article1-img23" src="img/15.png" alt="">

                    <span id="img-caption">Balaji Art - 35,000 RS </span>

                </a>
            </div>

            <div class="article1">
                <a href="24.html" id="article-html">
                    <img id="article1-img24" src="img/13.png" alt="">

                    <span id="img-caption">Flower Art - 40,000 RS </span>

                </a>
            </div>




        </div><br>


    </main>
    <hr id="con-hr">
    <footer>Copyright &copy;Nimo Arts 2022</footer>
</body>

</html>