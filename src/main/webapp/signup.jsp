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
    <link rel="stylesheet" href="css/form2.css"/>

</head>
<script defer src="js/navbar.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<body>
<br></br>
<!-- Navagtion section -->
<div class="stick">
    <!-- putting it in a container and allowing it to flex display so display is correct -->
    <div style="display:flex;">

        <!-- giving logo an id for other hover effects -->
        <div id="lth" class="logo" style="width: fit-content;
        margin: auto;
        display: flex;">
            <img alt="Logo" src="./Images-site/Logo_1.png" width="150px" onmouseover="bigImg(this)"
                 onmouseout="normalImg(this)">
        </div>
    </div>

</div>

<!-- Sign up form with relevant fields of data collection to set up an account-->
<div class="signup_section">
    <br>
    <h1> Sign Up to DCU Bank Today</h1>
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
                <form id="form" method="post" action="RegisterServlet" onsubmit="validation()">
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
    function validation() {
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
            } else {
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
    }
    function copyfunc() {
        alert("You just copied sensistive becareful not to paste it in an unsecure place");
    }
</script>


<div class="footer">
    <br>
    <h1>Sign Up For Updates</h1>
    <br>
    <form action="NewsletterServlet" method="post" id="formft">
        <span for="email" style="font-size: medium;">Enter your email:</span>
        <input  type="email" id="emailft" name="emailft" class="email_input">
        <input type="submit" class="footer_button">
    </form>
    <div class="error_success"></div>

</div>

</body>