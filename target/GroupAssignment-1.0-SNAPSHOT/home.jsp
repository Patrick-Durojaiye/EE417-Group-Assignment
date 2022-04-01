<%--
  Created by IntelliJ IDEA.
  User: Timi Durojaiye
  Date: 09/03/2022
  Time: 20:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8; width=device-width" />
    <title>Maxtek Personal Finance Management</title>
    <link href="css/common.css" rel="stylesheet" type="text/css" />
    <!-- various style sheets added -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/navbar.css">
    <!-- font added here -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script defer src="js/navbar.js"></script>

<body>

<br>
<!-- forming the hamburger menu -->
<div class="stick">
    <!-- putting it in a container and allowing it to flex display so display is correct -->
    <div style="display:flex;">
        <!-- giving the hamburgers an id to access for click events -->
        <div class="hamburger" id="hamburger">
            <div class="bar1"></div>
            <div class="bar2"></div>
            <div class="bar3"></div>
        </div>
        <!-- giving logo an id for other hover effects -->
        <div id="lth" class="logo" style="width: fit-content;
        margin: auto;
        display: flex;">
            <img src="./Images-site/Logo_1.png" alt="logo" width="150px" onmouseover="bigImg(this)"
                 onmouseout="normalImg(this)">
        </div>
    </div>

    <!-- importing the logo to be placed at the top right inline with the navbar -->
    <div class="navbar--middle" id="navbar--middle">

        <nav style="padding: 0;
        display: flex;
        flex-wrap: nowrap;
        justify-content: center;
        align-items: center;">
            <ul style="display:inline-flex; list-style-type:none; align-items:center;">

                <!-- navbar is listed unordered in a tags and linking appropriately -->
                <li><a class="current" href="index.jsp">Home</a></li>
                <li><a href="about.jsp">About Us</a></li>
                <li class="checker"><a>Apps</a>
                    <!-- dropdown is created -->
                    <ul class="dropdown">

                        <li class="dropdown-item"><a href="services.jsp">Services</a></li>
                        <li class="dropdown-item"><a href="myaccount.jsp"> My Account</a></li>

                    </ul>
                </li>
                <li><a href="newsblog.jsp">News and Blogs</a></li>
                <li><a href="contact.jsp">Contact Us</a></li>
                <li><a href="LogoutServlet" class="register-btn">Logout</a></li>
            </ul>
        </nav>
    </div>
</div>

<div class="main_section">
    <div class="text_section">
        <h1> Maxtek </h1> <br></br>
        <h1> Bank </h1>
        <br>
        <h2>Loans at your door step!</h2>
        <p>Save, Invest and Bank digitally. <br>
            All your everyday financial solutions available for you at your finger
            tips
        </p>
    </div>

    <div class="image_section">

        <img src="Images-site/savepic.png" alt="main_image" class="img_main">

    </div>
</div>

<div class="signup_button">
    <br>
    <br>
    <a href="signup.jsp"><button>
        Get an Account Today!
    </button> </a>
</div>

<br>

<!-- Section with Maxtek services with explations-->
<div class="services_section">
    <div>
        <img src="Images-site/saving_pic.png" style="padding-top: 7%;">
        <h1> Save </h1>
        <p> Your personal finance saving application. Maxtek allows you to save your money using various
            techniquews<br>
            such as recurring payments,
            percentage transfers of every transfer and much more. Start saving today and earn <b>0.5% APR </b>
        </p>
    </div>

    <div>
        <img src="Images-site/investing_pic.png">
        <h1> Invest </h1>
        <p>Grow your wealth and avail of our investment options at the Maxtek bank. Such options are index's, <br>
            individual stocks, pension funds, digital assets and much more.
            Returns are at an average of
            <b> 7.3% pa</b>

        </p>
    </div>

    <div>
        <img src="Images-site/banking_pic.png" style="padding-top: 7%;">
        <h1> Bank </h1>
        <p>Maxtek bank offers various financial solutions. <b>Spend, Transfer, Exchange</b> <br> and much more can
            be done using the
            Maxtek bank online platform. Our online banking services also include a <br> weekly blog and daily new
            articles of the financial markets</p>
    </div>
</div>
<br>
</body>
</html>