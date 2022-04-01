
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

    <script defer src="js/navbar.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>




    <!-- Use of internal css -->
    <style>
        h1 {text-transform:uppercase;}
        h2 {text-transform:uppercase;}
        /* the log form class is accessed, this is the main overall class for the form */
        /* in here, the background can be set as the cover as it will cover the entire page with the background image provided */
        /* the items inside this container will be centered also on both axis */
        /* display flex is being used */
        .log-form{
            height:75vh;
            background-size: cover;
            display:flex;
            align-items: center;
            justify-content: center;
        }
        /* this is the class for the boxes of the form, the width/height is set
        the border radius is set to maintain the same style as previous implementations
        the display flex is used and made it column based direction
        this means that it will be one box on top of another rather than a row based direction */
        .form-box{
            min-width:400px;
            min-height: 450px;
            background-color: white;
            box-shadow: 0px 0px 10px #cccccc;
            border-radius:20px;
            padding:40px;
            display:flex;
            flex-direction: column;

        }
        /* h4 tag is accessed in the title class to modify the text properties such as the font
        and the margin/border */
        .titles > h4{
            font-size: 30px;
            width: 100%;
            text-align:center;
            margin: 15px 0px 20px;
            border-bottom: 1px solid ;
            padding-bottom: 10px;
            display: inline-block;
        }
        /* each form field is displayed in flex direction colum and width is set to 100% */
        .form-field{
            display:flex;
            flex-direction: column;
            width:100%;

        }
        /* each box is positioned relative and with a margin of 20px*/
        .input-box{
            position:relative;
            margin-bottom: 20px;
            width:100%;
        }
        /* The input of the actual form is modified here with a border/font etc */
        .form-field .input-box input{
            height: 45px;
            width: 100%;
            outline: none;
            font-size: 16px;
            border-radius: 5px;
            padding-left: 10px;
            border: 1px solid #ccc;
            border-bottom-width: 2px;
        }
        /* the placeholder text is indented here by 10px */
        .input-box > ::placeholder{
            text-indent: 10px;
        }
        /* the form control class is the class for each text field, the various height/width could be adjusted here */
        .form-control{
            height:40px;
            width:100%;
            padding-right:0px 0px 0px 45px;
            color: #444444;
            border: 1px solid #cccccc;
            border-radius: 5px;
        }
        /* the button login (basic container for button) is completed using flex display, it is aligned in the center */
        .button-login{
            display:flex;
            margin:auto;

        }
        /* this is the actual button tag inside the button login class container, in which the transitions/color is set up. */
        .button-login > button{
            color: #ffffff;
            font-size: 15px;
            padding: 8px 35px;
            background-color: hsl(234, 70%, 51%) ;
            transition: all 0.5 ease;
            border: 1px solid transparent;
            cursor:pointer;
            border-radius: 5px;
            margin: 10px;
            font-weight: 700;
        }
        /* the a tag inside the button login class is also modified to construct the forgot password section */
        .button-login > a{
            font-size: 16px;
            color: #0089fe;
            cursor:pointer;
        }
        /* styling the signup button */
        .button-signup
        {
            padding: 12px 28px;
            border: 1px solid transparent;
            outline-width: 0;
            border-radius: 5px;
            color: white;
            cursor: pointer;
            font-weight: 700;
            background-color: hsl(234, 70%, 51%);
            width:auto;
            display:flex;
            margin:auto;
        }
        /* hover effect applied, when hovered, the color/border color will be updated so it gives a nice transition */
        button:hover{
            background-color: transparent;
            color: #000000fe;
            border-color:#000000fe;
        }
    </style>
</head>

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
        <nav style="padding: 0;
        display: flex;
        flex-wrap: nowrap;
        justify-content: center;
        align-items: center;">
            <ul style="display:inline-flex; list-style-type:none; align-items:center;">

                <!-- navbar is listed unordered in a tags and linking appropriately -->
                <li><a href="about.jsp">About Us</a></li>
                <li><a href="newsblog.jsp">News and Blogs</a></li>
            </ul>
        </nav>
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