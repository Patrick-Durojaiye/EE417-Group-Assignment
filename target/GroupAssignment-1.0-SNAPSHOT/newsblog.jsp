<%--
  Created by IntelliJ IDEA.
  User: Timi Durojaiye
  Date: 09/03/2022
  Time: 18:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8; width=device-width" />
    <title>Maxtek Personal Finance Managment</title>
    <link href="css/newsandblogstyle.css" rel="stylesheet" type="text/css" />

    <!-- various style sheets added -->
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/navbar.css"/>
    <!-- font added here -->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
</head>
<script defer src="js/navbar.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<body>
<br>
<!-- Navagtion section -->
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
            <img alt="Logo" src="./Images-site/Logo_1.png" width="150px" onmouseover="bigImg(this)"
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

<!-- java script embeeded widget from 24-7 Press Release this java scrip code displays news on the site with 5 news articles displayed -->
<div class="new_widget">
    <br>
    <br>
    <h1 style="text-align: center; font-size: 50px;"> Sign Up to Maxtek Bank Today</h1>
    <br>

    <script type="text/javascript"
            src="https://news.24-7pressrelease.com/247pr-news-widget.js?widgettitle=News Provided by 24-7PressRelease.com&amp;categories=106,107,333,334,335,336,489,337,108,300,338,109,110,139,339,171,111,112,340,341,113,342,343,114,344,115,345,319,116,347,348,&amp;showRelease=1&amp;width=auto&amp;headlinebold=1&amp;headlinesonly=0&amp;headlinecolor=2d57a1&amp;briefcolor=666666&amp;textcolor=333333&amp;typeface=arial&amp;fontsize=11&amp;width=auto&amp;headlinesepstyle=dotted&amp;showimages=1&amp;numstories=5&amp;bgcolor=ffffff&amp;urldest=247pr">
    </script>

</div>

<h1 style="text-align: center; font-size: 50px;">Blogs</h1>
<br>
<br>
<!-- Blogs displayed with heading text and intro text-->
<div class="blog_section">
    <div class="individual_blogs1">
        <h4 style="font-size: medium;">18 Ways To Save Money On A Tight Budget</h4>
        <p style="font-size: medium;">Living on a tight budget may make it seem like saving money isn't possible.
            But saving when money is tight may not be as hard as you think. Even small adjustments to your lifestyle
            can help. So, if you're looking for ways to save money on a tight budget, rest assured that it's much
            easier than you think it is! You just have to put a little effort into it... <a href="#"
                                                                                            title="Read More">more</a></p>
    </div>

    <div class="individual_blogs2">
        <h4 style="font-size: medium;">How Often Do You Pay Property Tax? Your Questions Answered</h4>
        <p style="font-size: medium;">Property taxes suck, but they’re something we all have to pay if we want to
            own our domain. If you’re new to the homeowner game, you might have a ton of questions, like “how often
            do you pay property tax?” and “are property taxes paid in advance?”... <a href="#"
                                                                                      title="Read More">more</a></p>
    </div>

    <div class="individual_blogs3">
        <h4 style="font-size: medium;">What Is Credit Life Insurance?</h4>
        <p style="font-size: medium;">Have you ever borrowed money to buy a house or a car? You were probably
            offered credit life insurance. Credit life insurance is an insurance policy that pays off a loan in the
            event that the borrower passes away. Lenders usually offer it for home mortgages, car loans, and student
            loans...
            <a href="#" title="Read More">more</a>
        </p>
    </div>


</div>

<br>

</body>