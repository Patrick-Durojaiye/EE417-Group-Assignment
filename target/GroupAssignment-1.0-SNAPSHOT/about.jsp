<%--
  Created by IntelliJ IDEA.
  User: Timi Durojaiye
  Date: 09/03/2022
  Time: 18:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8; width=device-width" />
    <title>Maxtek Personal Finance Managment</title>
    <link href="css/aboutstyle.css" rel="stylesheet" type="text/css" />

    <!-- various style sheets added -->
    <Link rel="stylesheet" href="css/style.css">
    <Link rel="stylesheet" href="css/navbar.css">
    <!-- font added here -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<script defer src="js/navbar.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<body>
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

        <nav style="    padding: 0;
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
                        <li class="dropdown-item"><a href="application.jsp"> Applications</a></li>

                    </ul>
                </li>
                <li><a href="newsblog.jsp">News and Blogs</a></li>
                <li><a href="contact.jsp">Contact Us</a></li>
                <li><a href="home.jsp" class="register-btn">Logout</a></li>
            </ul>
        </nav>
    </div>
</div>

<!-- Main About Us Image-->
<div class="aboutuus_banner">
    <h1>About US</h1>
    <br>
    <img src="./Images-site/aboutusbanner.jpg">
</div>

<!-- About Us text paragraph -->
<div class="aboutus_text">

    <p>Maxtek Bank is an online fintech platform that was established in 2013 in Ireland by August Harlow. Maxtek
        aims
        to be the number 1 finaical tool for everyones day to day use.
        <br> Be it saving, investing or day to day banking
        use
        such as payments and bank transfers.
        <br>
        Since Maxtek inception it has achieved over 50,000 daily users and has done over $2 billion in volume worth
        of
        daily transfers.
        <br>
        In 2021 we had a revenue of $300m and are constantly using our funds to help increase the
        user
        experience each user gets from our platform
    </p>
</div>

<div class="the_team">
    <h1> The Team </h1>
    <div class="team_section">
        <!-- Images of Team and Founder-->
        <div>
            <img src="./Images-site/founder_1.jpg">
            <p>
                <b>August Harlow </b> CEO of Maxtek Bank
            </p>
        </div>
        <br>
        <div>
            <img src="./Images-site/founder_2.jpg">
            <p>
                <b>John Michael </b> COO of Maxtek Bank
            </p>
        </div>
    </div>

</div>

<div class="footer">
    <br>
    <h1>Sign Up For Updates</h1>
    <br>
    <!-- Footer section
        Has email input and a button to submit-->
    <form action="/action_page.php" id="form">
        <label for="email" style="font-size: medium;">Enter your email:</label>
        <input type="email" id="email" name="email" class="email_input">
        <input type="submit" class="footer_button">
    </form>
    <div class="error_success"></div>
    <br>
</div>

<script>
    let ids = (id) => document.getElementById(id);
    let classes = (classes) => document.getElementsByClassName(classes);

    let emailft = ids("email"),
        form = ids("form"),

        error_successMsg = classes("error_success");

    var emailftArr = [];

    form.addEventListener("submit", (e) => {

        e.preventDefault();

        engine(emailft, 0, "Email can't be blank");
    });

    let engine = (id, serial, message) => {
        if (id.value.trim() === "") {
            error_successMsg[serial].innerHTML = message;
            id.style.border = "2px solid red";
        }

        else {
            error_successMsg[serial].innerHTML = "Email has been recorded";
            id.style.border = "2px solid green";

            if (serial == 0) {
                emailftArr.push(emailft.value.trim());

                localStorage.setItem("emailft", JSON.stringify(emailftArr));
            }
        }
    }

</script>


</body>
