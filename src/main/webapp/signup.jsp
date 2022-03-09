<%--
  Created by IntelliJ IDEA.
  User: Timi Durojaiye
  Date: 09/03/2022
  Time: 19:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8; width=device-width" />
    <title>Maxtek Personal Finance Managment</title>
    <link href="css/signupstyle.css" rel="stylesheet" type="text/css" />

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
                <li><a class="current" href="home.jsp">Home</a></li>
                <li><a href="about.jsp">About Us</a></li>
                <li class="checker"><a>Apps</a>
                    <!-- dropdown is created -->
                    <ul class="dropdown">

                        <li class="dropdown-item"><a href="services.jsp">Services</a></li>
                        <li class="dropdown-item"><a href="portfolio.jsp">Portfolio</a></li>
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

<!-- Sign up form with relevant fields of data collection to set up an account-->
<div class="signup_section">
    <br>
    <h1> Sign Up to Maxtek Bank Today</h1>
    <br>
    <form class="form_section" id="form">
        <label for="Name" style="font-size: medium;">Name:</label>
        <input type="text" id="name" name="name" class="inputs" oncopy="copyfunc()">
        <div class="error"></div>
        <br>
        <br>

        <label for="email" style="font-size: medium;">Email:</label>
        <input type="email" id="email" name="email" class="inputs" oncopy="copyfunc()">
        <div class="error"></div>
        <br>
        <br>

        <label for="date_of_birth" style="font-size: medium;">Date of Birth:</label>
        <input type="date" id="date_of_birth" name="date_of_birth" class="inputs">
        <div class="error"></div>
        <br>
        <br>

        <label for="password" style="font-size: medium;">Password:</label>
        <input type="password" id="password" name="password" class="inputs">
        <div class="error"></div>
        <br>
        <br>
        <a href="signup.html"><button class="button_input" type="submit"> Sign Up </button></a>
    </form>

</div>

<script>
    let id = (id) => document.getElementById(id);

    let classes = (classes) => document.getElementsByClassName(classes);

    let username = id("name"),
        email = id("email"),
        dateofbirth = id("date_of_birth"),
        password = id("password"),
        form = id("form"),

        errorMsg = classes("error");

    var username2Arr = [];
    var email4Arr = [];
    var dateofbirthArr = [];
    var passwordArr = [];

    form.addEventListener("submit", (e) => {
        e.preventDefault();

        engine(username, 0, "Username can't be blank");
        engine(email, 1, "Email can't be blank");
        engine(dateofbirth, 2, "Date of birth can't be blank");
        engine(password, 3, "Password can't be blank")
    });

    let engine = (id, serial, message) => {

        if (id.value.trim() === "") {


            errorMsg[serial].innerHTML = message;
            id.style.border = "2px solid red";

        }

        else {

            errorMsg[serial].innerHTML = "";
            id.style.border = "2px solid green";

            if (serial == 3) {
                username2Arr.push(username.value.trim());
                email4Arr.push(email.value.trim());
                dateofbirthArr.push(dateofbirth.value.trim());
                passwordArr.push(password.value.trim());

                // stores form inputs into local storage
                localStorage.setItem("usernamesignup", JSON.stringify(username2Arr));
                localStorage.setItem("emailsignup", JSON.stringify(email4Arr));
                localStorage.setItem("dateofbirth", JSON.stringify(dateofbirthArr));
                localStorage.setItem("password", JSON.stringify(passwordArr));
                alert("Signed Up");

            }

        }
    }

    function copyfunc() {
        alert("You just copied sensistive becareful not to paste it in an unsecure place");
    }
</script>

<!-- Type of accounts with benefits listed -->
<div class="account_title">
    <h1> Account Types </h1>
</div>
<div class="ranking_section">
    <div class="ranking_sec1">
        <h3 style="text-align: center;">Basic</h3>
        <ul style="padding-left: 40%;">
            <li>
                <p>Savings</p>
            </li>
            <li>
                <p>Loans</p>
            </li>
            <li>
                <p>Junior Account</p>
            </li>
        </ul>
    </div>

    <br>

    <div class="ranking_sec2">
        <h3 style="text-align: center;">Plus</h3>
        <ul style="padding-left: 40%;">
            <li>
                <p>Travel Insurance</p>
            </li>
            <li>
                <p>Single Airport Lounge Access</p>
            </li>
            <li>
                <p>Bill Splittig</p>
            </li>
        </ul>
    </div>

    <br>

    <div class="ranking_sec3">
        <h3 style="text-align: center;">Premium</h3>
        <ul style="padding-left: 40%;">
            <li>
                <p>Metal Debit Card</p>
            </li>
            <li>
                <p>Cash Back on All Transactions</p>
            </li>
            <li>
                <p>0% fees on FX rates</p>
            </li>
        </ul>
    </div>
</div>

<div class="footer">
    <br>
    <h1>Sign Up For Updates</h1>
    <br>
    <form action="/action_page.php" id="formft">
        <label for="email" style="font-size: medium;">Enter your email:</label>
        <input type="email" id="emailft" name="email" class="email_input">
        <input type="submit" class="footer_button">
    </form>
    <div class="error_success"></div>
    <br>
</div>

<script>

    let emailft = id("emailft"),
        formft = id("formft"),

        error_successMsg = classes("error_success");

    var emailftArr = [];

    formft.addEventListener("submit", (e) => {

        e.preventDefault();

        engineft(emailft, 0, "Email can't be blank");
    });

    let engineft = (id, serial, message) => {
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
