<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

    <link rel="stylesheet" href="css/invoice.css">
        <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/hower.css">
    <link rel="stylesheet" href="css/contact.css">
    <link rel="stylesheet" href="css/signup.css">
    <link rel="stylesheet" href="css/ExtendedCss.css">

<title>Invoice 11</title>

</head>
<body>
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
                   
                    <li><input id="logoutbtn" type="button" onclick="window.location.href='signup.html'"
                            value="SignUp"></input> </li>

                </ul>



            </div>
        </div>

    </nav>
<%String CName=(String)session.getAttribute("customerName");
String CMail=(String)session.getAttribute("customerMail");
String CMno=(String)session.getAttribute("customerMno");
String CAdd=(String)session.getAttribute("customeradd");
String CZip=(String)session.getAttribute("customerZipcode");

                 %>
 <div class="my-5 page" size="A4">
        <div class="p-5">
            <section class="top-content bb d-flex justify-content-between">
                <div class="logo">
                    <img src="img/logo.png" alt="" class="img-fluid">
                </div>
                <div class="top-left">
                    <div class="graphic-path">
                        <p>Invoice</p>
                    </div>
                    <div class="position-relative">
                        <p>Invoice No. <span>162</span></p>
                    </div>
                </div>
            </section>

            <section class="store-user mt-5">
                <div class="col-10">
                    <div class="row bb pb-3">
                        <div class="col-7">
                            
                            <h2>Nimo Arts,</h2>
                            <p class="address"> NIMO ARTS, <br> Shatabdi square rameswari road bhim nagar road no.2, <br>South, near awale flour mill, <br> Nagpur, Maharashtra 440027  </p>
                           
                        </div>
                        <div class="col-5">
                            <p>Client,</p>
                            <h2><%out.println(CName); %></h2>
                            <!-- Client address -->
                            <p class="address">  <%out.println(CMail); %><br><%out.println(CAdd); %><br> <%  out.println(CMno); %><br><%out.println(CZip); %></p>
                           
                        </div>
                       
                    </div>
                    <div class="row extra-info pt-3">
                        <div class="col-7">
                            <p>Payment Method: <span>Cash On Delivery</span></p>
                            <p>Order Number: <span>#11</span></p>
                        </div>
                        <div class="col-5">
                            <p>Deliver Date: <span>In Working 6-7 Days</span></p>
                        </div>
                    </div>
                </div>
            </section>

            <section class="product-area mt-4">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <td>Item Description</td>
                            <td>Price</td>
                            <td>Quantity</td>
                            <td>Total</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <div class="media">
                                    <img class="mr-3 img-fluid" src="img/16.png" alt="Product 01">
                                    <div class="media-body">
                                        <p class="mt-0 title">Stone Craving Mural</p>
                                        Size :- 2*5 foot , Category : Decoration
                                    </div>
                                </div>
                            </td>
                            <td>25,999 RS</td>
                            <td>1</td>
                            <td>25,999 RS</td>
                        </tr>
                       
                    </tbody>
                </table>
            </section>

            <section class="balance-info">
                <div class="row">
                    <div class="col-8">
                        <p class="m-0 font-weight-bold"> Note: </p>
                        <p>We always do a Quantity check on our Product before we deliver so you won't be getting a damage product</p>
                    </div>
                    <div class="col-4">
                        <table class="table border-0 table-hover">
                            <tr>
                                <td>Sub Total:</td>
                                <td>25,999 RS</td>
                            </tr>
                            <tr>
                                <td>Tax:</td>
                                <td>511 RS</td>
                            </tr>
                            <tr>
                                <td>Deliver:</td>
                                <td>789 RS</td>
                            </tr>
                            <tfoot>
                                <tr>
                                    <td>Total:</td>
                                    <td>27,299 RS</td>
                                </tr>
                            </tfoot>
                        </table>

                        <!-- Signature -->
                        <div class="col-12">
                            <img src="img/sign.png" class="img-fluid" alt="">
                            <p class="text-center m-0"> Director Signature </p>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Cart BG -->
            <img src="img/cart.jpg" class="img-fluid cart-bg" alt="">

            <footer>
                <hr>
                <p class="m-0 text-center">
                    Thanks For Purchasing !
                </p>
                <div class="social pt-3">
                    <span class="pr-2">
                        <i class="fas fa-mobile-alt"></i>
                        <span>+919595346569</span>
                    </span>
                    <span class="pr-2">
                        <i class="fas fa-envelope"></i>
                        <span>animooart11@gmail.com</span>
                    </span>
                   
                </div>
            </footer>
        </div>
    </div>


</body>
</html>