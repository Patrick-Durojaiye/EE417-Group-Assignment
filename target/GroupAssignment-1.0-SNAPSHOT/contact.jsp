<%--
  Created by IntelliJ IDEA.
  User: Timi Durojaiye
  Date: 09/03/2022
  Time: 19:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8; width=device-width" />
    <title>Maxtek Personal Finance Managment</title>
    <link href="css/contactstyle.css" rel="stylesheet" type="text/css" />
    <!-- various style sheets added -->
    <Link rel="stylesheet" href="css/style.css">
    <Link rel="stylesheet" href="css/navbar.css">
    <!-- font added here -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script defer src="js/navbar.js"></script>

<body>
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

<div class="contactsection_phone">
    <br>
    <br>
    <!-- Icon image to display a phone -->
    <img src="Images-site/phone_icon.png">
    <div class="phonetext">
        <h1> Contact By Phone </h1>
        <p>
            Contact the Maxtek team via phone-line by calling +353829428943 <br>
            This automated number can help you block your card and offers recorded information. <br>
            This number does not make outgoing calls.
        </p>
    </div>

</div>

<div class="contactsection_email">
    <br>
    <br>
    <div class="image_section">
        <img src="Images-site/mail_icon.png" style="height: 300px;">
    </div>

    <div class="form_section">
        <h1> Contact by Email </h1>
        <form action="/action_page.php" class="form_items" id="form">
            <label for="Name" style="font-size: medium;">Name:</label>
            <input type="text" id="name" name="name" class="inputs">
            <div class="error"></div>
            <br>
            <br>

            <label for="email" style="font-size: medium;">Email:</label>
            <input type="email" id="email" name="email" class="inputs">
            <div class="error"></div>
            <br>
            <br>

            <label for="textfield" style="font-size: medium;">Message:</label>
            <input type="text" id="textfield" name="textfield" class="inputs">
            <div class="error"></div>
            <br>
            <br>
            <a href="contact.html"><button class="button_input" type="submit"> Send </button></a>
        </form>
    </div>
</div>


<script>
    let id = (id) => document.getElementById(id);

    let classes = (classes) => document.getElementsByClassName(classes);

    let username = id("name"),
        email = id("email"),
        textfield = id("textfield"),
        form = id("form"),

        errorMsg = classes("error");

    var usernameArr = [];
    var email2Arr = [];
    var textfieldArr = [];

    let contactbutn = id("contactbutn");

    form.addEventListener("submit", (e) => {
        e.preventDefault();

        engine(username, 0, "Username can't be blank");
        engine(email, 1, "Email can't be blank");
        engine(textfield, 2, "Textfield can't be blank");
    });

    let engine = (id, serial, message) => {

        if (id.value.trim() === "") {


            errorMsg[serial].innerHTML = message;
            id.style.border = "2px solid red";

        }

        else {

            errorMsg[serial].innerHTML = "";
            id.style.border = "2px solid green";

            if (serial == 2) {
                usernameArr.push(username.value.trim());
                email2Arr.push(email.value.trim());
                textfieldArr.push(textfield.value.trim());

                localStorage.setItem('username', JSON.stringify(usernameArr));
                localStorage.setItem('email2', JSON.stringify(email2Arr));
                localStorage.setItem('textfield', JSON.stringify(textfield));
            }

        }
    }
</script>

<br>
<div class="footer">
    <br>
    <h1>Sign Up For Updates</h1>
    <br>
    <form action="/action_page.php" id="form1">
        <label for="email" style="font-size: medium;">Enter your email:</label>
        <input type="email" id="email1" name="email" class="email_input">
        <input type="submit" class="footer_button">
    </form>
    <div class="error_success"></div>
    <br>
</div>

<script>
    // let id = (id) => document.getElementById(id);

    // let classes = (classes) => document.getElementsByClassName(classes);

    let emailft = id("email1"),
        form1 = id("form1"),

        error_successMsg = classes("error_success");

    var emailftArr = [];

    form1.addEventListener("submit", (e) => {

        e.preventDefault();

        engine1(emailft, 0, "Email can't be blank");
    });

    let engine1 = (id, serial, message) => {
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
