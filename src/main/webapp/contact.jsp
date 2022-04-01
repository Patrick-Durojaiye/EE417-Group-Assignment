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
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/navbar.css"/>
    <!-- font added here -->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

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
                 onmouseout="normalImg(this)"/>
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

    <section class="log-form" style=" background-image: linear-gradient(120deg, hsl(234, 70%, 51%),hsl(0, 0%, 57%)">
        <form action="ContactServlet" class="form_items" id="form" onsubmit="validation()">
            <div class="form-box">

                <div class="titles">
                    <!-- inline css used here -->
                    <h4 style="color:hsl(234, 70%, 51%)">Contact</h4>
                </div>

                <div class="form-field">
                    <div class= "input-box">
            <input type="text" id="name" name="name" placeholder="Enter Name" class="inputs">
            <div class="error"></div>
                    </div>
            <br>
            <br>

                    <div class= "input-box">
            <input type="email" id="email" placeholder="Enter Email" name="email" class="inputs">
            <div class="error"></div>
                    </div>
            <br>
            <br>

                    <div class= "input-box">
            <input type="text" id="textfield" placeholder="Enter Message" name="textfield" class="inputs">
            <div class="error"></div>
                    </div>
            <br>
            <br>
                    <div class="button-login">
            <button class="button_input" type="submit"> Send </button>
                    </div>
                </div>
            </div>
        </form>
    </section>



<script>
    function validation() {
        let id = (id) => document.getElementById(id);
        let classes = (classes) => document.getElementsByClassName(classes);
        let username = id("name"),
            email = id("email"),
            textfield = id("textfield"),
            form = id("form"),
            errorMsg = classes("error");

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
            } else {
                errorMsg[serial].innerHTML = "";
                id.style.border = "2px solid green";

            }
        }
    }
</script>

<br>
</body>