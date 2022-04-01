
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8; width=device-width" />
    <title>Maxtek Personal Finance Management</title>


    <!-- various style sheets added -->
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/navbar.css"/>

    <!-- font added here -->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/formstyle.css"/>
    <script defer src="js/navbar.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>

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
<br></br>

<!-- main section for the form, overall container for the whole form, can center the form from here -->
<section class="log-form" style=" background-image: linear-gradient(120deg, hsl(234, 70%, 51%),hsl(0, 0%, 57%)">
    <form id="form" action="LoginServlet" method="post" onsubmit="validation()">
        <!-- this is the form class -->
        <div class="form-box">
            <!-- this is the title class to change the font/etc of the main title which is Login -->
            <div class="titles">
                <!-- inline css used here -->
                <h4 style="color:hsl(234, 70%, 51%)">Login</h4>
            </div>
            <!-- this is the form field class in which inputs can be modified to any position as that is the child class -->
            <div class="form-field">
                <!-- class of the input box such as textfield -->
                <div class= "input-box">
                    <input type="text" id="name" name="name" placeholder="Enter Name" class="form-control" oncopy="copyfunc()">
                    <div class="error"></div>
                </div>
                <div class="input-box">
                    <!-- input tag is used with a class form control in which text indentation etc can be modified with css -->
                    <input type="email" id="email" name="email" placeholder="Enter Email" class="form-control" oncopy="copyfunc()">
                    <div class="error"></div>
                </div>
                <div class="input-box">
                    <input type="password" id="password" name="password" placeholder="Enter Password" class="form-control" oncopy="copyfunc()">

                    <div class="error"></div>
                </div>

                <!-- button class to change position/color etc -->
                <div class="button-login">
                    <button type="submit">Login</button>
                </div>
            </div>
        </div>

    </form>
</section>

<br>
<br>

<div>
    <a style="text-decoration: none;" href="signup.jsp">
        <button class="button-signup"> Or Register</button>
    </a>
</div>
<br>
<br>

<!-- validation logic for the login page  -->

<script>

    function validation() {
        let id = (id) => document.getElementById(id);
        let classes = (classes) => document.getElementsByClassName(classes);
        let username = id("name"),
            email = id("email"),
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
            engine(password, 2, "Password can't be blank")
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



</body>

</html>