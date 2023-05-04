<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Nimo Arts-main</title>
    <script type="text/javascript"
        src="https://platform-api.sharethis.com/js/sharethis.js#property=60f919b6e08a6a001288e014&product=sticky-share-buttons"
        async="async"></script>
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="css/hower.css">
    <link rel="stylesheet" href="css/slideshow.css">
    <link rel="stylesheet" href="css/afterbuycontact.css">
    <link rel="stylesheet" href="css/ExtendedCss.css">



</head>

<body>
    <header>
        <nav class="navigation">
            <div class="navleft">
                <ul>
                    <li id="logo"><a href="index.jsp"><img id="logo-img" src="img/Nimo-modified.png"></a> </li>
                    <li id="home"><a href="index.jsp">Home</a> </li>
                    <li id="about"><a id="about2" href="about.html">About Us</a> </li>
                    <li id="about"><a id="about2" href="contact.html">Contact</a> </li>
                    <li id="contact"><a id="contact2" href="https://maps.app.goo.gl/PPb4mFMeb22z4xpv5" target="-blank">
                            Location</a></li>
                </ul>
            </div>
            <div class="navright">
           
                
               
                <div class="logsign">
                    <ul>
                        <li><input id="logoutbtn" type="button"   onclick="window.location.href='login.html'" value="Login"></input> </li>
                        <li><input id="logoutbtn" type="button"   onclick="window.location.href='signup.html'" value="SignUp"></input> </li>
                     
                    </ul>
     
                       

                </div>
            </div>
        </nav>
    </header>
    <hr>
    <main>
        <div class="slideshow-container">
            <div class="mySlides fade">
                <img id="image-ban" src="img/11.png" style="width:100%">
            </div>
            <div class="mySlides fade">
                <img id="image-ban" src="img/21.png" style="width:100%">
            </div>
            <div class="mySlides fade">
                <img  id="image-ban" src="img/Screenshot (288).png" style="width:100%">
            </div>

        </div>
        <br>

        <div style="text-align:center">
            <span class="dot"></span>
            <span class="dot"></span>
            <span class="dot"></span>
        </div>

        <script>
            let slideIndex = 0;
            showSlides();

            function showSlides() {
                let i;
                let slides = document.getElementsByClassName("mySlides");
                let dots = document.getElementsByClassName("dot");
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                slideIndex++;
                if (slideIndex > slides.length) { slideIndex = 1 }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " active";
                setTimeout(showSlides, 3000); // Change image every 2 seconds
            }
        </script>

        <div class="main-container">
            <i><u>
                    <h2 id="heading">Latest Picks</h2>
                </u></i>
            <p id="heading2">Decoration</p>
            <div class="smallarticle">

                <div class="article1">
                    <a href="11index.html" id="article-html">
                        <img id="article1-img11" name="article1-img11" src="img/16.png" alt="">

                        <span id="img-caption">Stone Craving Mural - 25,999 RS </span>

                    </a>
                </div>
                <div class="article1">
                    <a href="12index.html" id="article-html">
                        <img id="article1-img12" src="img/23.png" alt="">

                        <span id="img-caption">Water Fountain - 50,101 RS </span>

                    </a>
                </div>
                <div class="article1">
                    <a href="13index.html" id="article-html">
                        <img id="article1-img13" src="img/11.png" alt="">

                        <span id="img-caption">Om Wall Decoration - 11500 RS </span>

                    </a>
                </div>

                <div class="article1">
                    <a href="14index.html" id="article-html">
                        <img id="article1-img14" src="img/12.png" alt="">

                        <span id="img-caption">Canvas Painting - 15000 RS </span>

                    </a>
                </div>




            </div><br>
           
            <p id="heading2">Stone Work</p>
            <div class="smallarticle">

                <div class="article1">
                    <a href="21index.html" id="article-html">
                        <img id="article1-img21" src="img/21.png" alt="">

                        <span id="img-caption">Wall Stone Work - 17000 RS </span>

                    </a>
                </div>
                <div class="article1">
                    <a href="22index.html" id="article-html">
                        <img id="article1-img22" src="img/spspspspspspsps.jpg" alt="">

                        <span id="img-caption">Stone Work - 7999 RS </span>

                    </a>
                </div>
                <div class="article1">
                    <a href="23index.html" id="article-html">
                        <img id="article1-img23" src="img/15.png" alt="">

                        <span id="img-caption">Balaji Art - 35,000 RS </span>

                    </a>
                </div>

                <div class="article1">
                    <a href="24index.html" id="article-html">
                        <img id="article1-img24" src="img/13.png" alt="">

                        <span id="img-caption">Flower Art - 40,000RS </span>

                    </a>
                </div>
            </div><br>
                   <br>
            <span id="pleaselogintext">*Please Login To Unlock The Full Website !</span><br><br>

    </main>
    <hr>
    <footer>Copyright &copy;Nimo Arts 2022</footer>
</body>



  </html>