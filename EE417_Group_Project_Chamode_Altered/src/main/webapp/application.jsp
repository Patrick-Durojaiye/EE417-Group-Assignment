<%--
  Created by IntelliJ IDEA.
  User: Timi Durojaiye
  Date: 09/03/2022
  Time: 19:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8; width=device-width" />
    <title>Maxtek Personal Finance Management</title>
    <link href="css/applicationstyle.css" rel="stylesheet" type="text/css" />
    <!-- various style sheets added -->
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/navbar.css"/>
    <!-- font added here -->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
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
                        <li class="dropdown-item"><a href="application.jsp"> Applications</a></li>

                    </ul>
                </li>
                <li><a href="newsblog.jsp">News and Blogs</a></li>
                <li><a href="contact.jsp">Contact Us</a></li>
                <li><a href="Login.jsp" class="register-btn">Logout</a></li>
            </ul>
        </nav>
    </div>
</div>
<br>
<div class="mobile_section">

    <br>
    <h1> Top Up Mobile</h1>
    <br>

    <!-- Form to top up Mobile credit -->
    <form action="/action_page.php" class="form_section" id="form">
        <label for="Phone_No" style="font-size: medium;">Phone No:</label>
        <input type="number" id="Phone_No" name="Phone_No" class="inputs">
        <div class="error"></div>
        <br>
        <br>

        <label for="email" style="font-size: medium;">Email:</label>
        <input type="email" id="email" name="email" class="inputs">
        <div class="error"></div>
        <br>
        <br>

        <label for="memo" style="font-size: medium;">Memo:</label>
        <input type="text" id="memo" name="memo" class="inputs">
        <div class="error"></div>
        <br>
        <br>
        <!-- Bold tag to make part of the label bold -->
        <label for="pricesm" style="font-size:medium;">Choose how much do you want to <b>Transfer</b>
        </label>
        <br>


        <!-- Radio inputs for selection-->
        <input type="radio" id="pricesm" name="amount" value="5">
        <label for="html" style="font-size: medium;"> €5</label><br>
        <input type="radio" id="pricesm1" name="amount" value="10">
        <label for="css" style="font-size: medium;"> €10</label><br>
        <input type="radio" id="pricesm2" name="amount" value="20">
        <label for="javascript" style="font-size: medium;">€20</label>
        <br>
        <br>
        <div class="error"></div>
        <a href="application.html"><button class="button_input" type="submit"> Send </button></a>
    </form>

</div>
<script>
    let id = (id) => document.getElementById(id);

    let classes = (classes) => document.getElementsByClassName(classes);
    let names = (names) => document.getElementsByName(names);
    let phoneno = id("Phone_No"),
        email3 = id("email"),
        memo2 = id("memo"),
        form = id("form"),

        errorMsg = classes("error");

    var phoneArr = [];
    var email3Arr = [];
    var memo2Arr = [];

    let displaybutn = id("displaybutn");

    form.addEventListener("submit", (e) => {
        e.preventDefault();

        engine(phoneno, 0, "Username can't be blank");
        engine(email3, 1, "Email can't be blank");
        engine(memo2, 2, "Textfield can't be blank");
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
                phoneArr.push(phoneno.value.trim());
                email3Arr.push(email3.value.trim());
                memo2Arr.push(memo2.value.trim());

                localStorage.setItem('phone', JSON.stringify(phoneArr));
                localStorage.setItem('email3', JSON.stringify(email3Arr));
                localStorage.setItem('memo2', JSON.stringify(memo2Arr));
            }

        }
    }


</script>

<div class="lounge_section">

    <br>
    <h1> Lounge Passes</h1>
    <br>
    <form action="/action_page.php" class="form_section" id="form1">
        <input type="radio" id="html" name="fav_language" value="HTML">
        <label for="html" style="font-size: medium;">Dublin Airport Lounge: $100</label><br>
        <input type="radio" id="css" name="fav_language" value="CSS">
        <label for="css" style="font-size: medium;">Gatwick Airport Lounge: $150</label><br>
        <input type="radio" id="javascript" name="fav_language" value="JavaScript">
        <label for="javascript" style="font-size: medium;">Glasgow Airport Lounge: $200</label>
        <br>
        <br>
        <a href="application.html"><button class="button_input"> Buy </button></a>
    </form>
</div>

<br>


</body>
