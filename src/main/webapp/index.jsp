<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>

<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8; width=device-width"/>
    <title>Maxtek Personal Finance Managment</title>
    <link rel="stylesheet" href="css/loginstyle.css">
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<body>
<!-- Navagtion bar -->
<div id="top" class="nav_bar">

    <div class="nav_logo">
        <a href="index.jsp">
            <img alt="Logo" src="./Images-site/Logo_1.png"></a>
    </div>
</div>
<!-- Login section with heading text and form with email and name and password -->
<div class="login_section">
    <br>
    <h1> Login into your Maxtek account today</h1>
    <br>
    <!-- form -->
    <form method="post" onsubmit="validation()" class="form_section" id="form">
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

        <label for="password" style="font-size: medium;">Password:</label>
        <input type="password" id="password" name="password" class="inputs">
        <div class="error"></div>
        <br>
        <br>
        <button class="button_input" type="submit"> Login</button>
    </form>

    <script>
        function validation() {
            let id = (id) => document.getElementById(id);

            let classes = (classes) => document.getElementsByClassName(classes);

            let username = id("name"),
                email = id("email"),
                password = id("password"),
                form = id("form"),

                errorMsg = classes("error");

            // performs tasks if submit button is hit
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

                }
            }
        }

        // sends alert
        function copyfunc() {
            alert("You just copied sensistive becareful not to paste it in an unsecure place");
        }
    </script>
    <div>
        <a href="signup.jsp">
            <button class="button_input"> Sign Up</button>
        </a>
    </div>
</div>

</body>
</html>