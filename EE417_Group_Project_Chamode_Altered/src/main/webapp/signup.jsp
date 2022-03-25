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
    <title>Maxtek Personal Finance Management</title>
    <link href="css/signupstyle.css" rel="stylesheet" type="text/css" />

    <!-- various style sheets added -->
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/navbar.css"/>
    <link rel="stylesheet" href="css/common.css"/>
    <!-- font added here -->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

<!-- Providing the styling for the form -->

<style>

  .reg-form{
    height:100vh;
    background-size: cover;
    display:flex;
    align-items: center;
    justify-content: center;
}

/* this container is used to store the title class, overall container to change any positioning etc */
.container2{
  max-width: 700px;
  width: 100%;
  background-color: #fff;
  padding: 25px 30px;
  border-radius: 5px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.15);
  border-radius: 20px;
}

/* the user details class is using display flex and its a wrap in terms of the flex and the content on axis is spaced between. 
This means that the content is going to be 2 in a row, if this is not included then it would be like a column. */
.content form .user-details{
  display: flex;
  flex-direction:column;
  align-items:center;
  justify-content: center;
  margin: 20px 0 12px 0;
}

/* the input box width is set using the calc function  */
form .user-details .input-box{
  margin-bottom: 15px;
  width: calc(100% / 2 - 20px);
}

/* the margin from the textfield is corrected here to format it nicely. 
Using display block which means the elements are adjusted in a block position */
form .input-box span.details{
  display: block;
  font-weight: 200;
  margin-bottom: 5px;
}

/* The input itself is modified here from the input box class so whether its the font size etc */
.user-details .input-box input{
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 10px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
}

form .button{
   height: 45px;
   margin: 3px 0
 }

 /* The button is adjusted here in terms of the border radius etc */
 /* cursor pointer is also active which means you can point */
 form .button input{
   height: 100%;
   width: 100%;
   border-radius: 5px;
   color: #fff;
   font-size: 18px;
   font-weight: 500;
   letter-spacing: 1px;
   cursor: pointer;
   background-color: hsl(234, 70%, 51%);
   border: 1px solid transparent;
  }

  /* the hover transition here is the exact same as the home page in which the borders become the color black */
 form .button input:hover{
  background-color: transparent;
  color: #000000fe;
  border-color:#000000fe ;
 }
 
 .footer h1{
    color: hsl(234, 70%, 51%);
}

</style>

</head>
<script defer src="js/navbar.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<body>
<br></br>
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
                <li><a href="Login.jsp" class="register-btn">Go Back To Login Page</a></li>
            </ul>
        </nav>
    </div>
</div>

<!-- Sign up form with relevant fields of data collection to set up an account-->
<div class="signup_section">
    <br>
    <h1> Sign Up to Maxtek Bank Today</h1>
    <br>
    <br>
 <section style=" background-image: linear-gradient(120deg, hsl(234, 70%, 51%),hsl(0, 0%, 57%)" class="reg-form">
      <!-- div container for the entire form -->
    <div class="container2">
      <!-- the title container to adjust any style if needs to be -->
        <div class="titles">
          <!-- inline CSS used here -->
            <h4 style="font-size: 25px; padding: 10px; color: hsl(234, 70%, 51%);">Register</h4>
        </div> 
        <!-- the overall content is put in a container too -->
        <div class="content">
          <!-- the action is set to do nothing at the moment as there is no POST/GET at the moment -->
          <form id="form" method="post">
            <!-- the details are input in this container, so can edit any style inside it -->
            <div class="user-details">
              <div class="input-box">
                <span style= "color: hsl(234, 70%, 51%);" class="details">Full Name</span>
                <!-- the input is text for majority and the placeholder simply writes pre-determined text and it is a required field -->
                <input id="name" name="name" type="text" placeholder="Enter your name" oncopy="copyfunc()" >
                <div class="error"></div>
              </div>
              <!-- rest of the form is very similar, mainly from the above -->
              <div class="input-box">
                <span style= "color: hsl(234, 70%, 51%); class="details">Email</span>
                <input id="email" name="email" type="email" placeholder="Enter your email" oncopy="copyfunc()" >
                <div class="error"></div>
              </div>
              <div class="input-box">
                <span style= "color: hsl(234, 70%, 51%); class="details">Date of Birth</span>
                <input id="date_of_birth" name="date_of_birth" type="date" placeholder="Enter your Date of Birth" oncopy="copyfunc()">
                <div class="error"></div>
              </div>
              <div class="input-box">
                <span style= "color: hsl(234, 70%, 51%); class="details">Password</span>
                <input id="password" name="password" type="password" placeholder="Enter your password" oncopy="copyfunc()">
                <div class="error"></div>
              </div>
            </div>
            <div class="button">
              <input type="submit">
            </div>
          </form>
        </div>
      </div>
    </section>

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
    <h1 style="padding: 5%;"> Account Types </h1>
</div>
<div class="ranking_section">
    <div class="ranking_sec1">
        <h3 style="text-align: left;">Basic</h3>
        <ul>
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
        <h3 style="text-align: left;">Plus</h3>
        <ul>
            <li>
                <p>Travel Insurance</p>
            </li>
            <li>
                <p>Single Airport Lounge Access</p>
            </li>
            <li>
                <p>Bill Splitting</p>
            </li>
        </ul>
    </div>

    <br>

    <div class="ranking_sec3">
        <h3 style="text-align: left;">Premium</h3>
        <ul>
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
<br>
<div class="footer">
    <br>
    <h1>Sign Up For Updates</h1>
    <br>
    <form action="/action_page.php" id="formft">
        <span for="email" style="font-size: medium;">Enter your email:</span>
        <input  type="email" id="emailft" name="email" class="email_input">
        <input type="submit" class="footer_button">
    </form>
    <div class="error_success"></div>
    <br>
</div>

<br>


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
