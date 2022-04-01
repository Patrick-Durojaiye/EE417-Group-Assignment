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
                <li><a class="current" href="admin.jsp">Home</a></li>
                <li><a href="adminapproveloans.jsp">Approve Loans</a></li>
                <li><a href="adminupdateuser.jsp">Update User Info</a></li>
                <li><a href="LogoutServlet" class="register-btn">Logout</a></li>
            </ul>
        </nav>
    </div>
</div>

<!-- Sign up form with relevant fields of data collection to set up an account-->
<div class="signup_section">
    <br>
    <h1> Welcome Admin you can change user details here!!</h1>
    <br>
    <br>
    <section style=" background-image: linear-gradient(120deg, hsl(234, 70%, 51%),hsl(0, 0%, 57%)" class="reg-form">
        <!-- div container for the entire form -->
        <div class="container2">
            <!-- the title container to adjust any style if needs to be -->
            <div class="titles">
                <!-- inline CSS used here -->
                <h4 style="font-size: 25px; padding: 10px; color: hsl(234, 70%, 51%);">*UPDATE DETAILS*</h4>
            </div>
            <!-- the overall content is put in a container too -->
            <div class="content">
                <!-- the action is set to do nothing at the moment as there is no POST/GET at the moment -->
                <form id="form" method="post" onsubmit="validation()" action="UpdateUserServlet">
                    <!-- the details are input in this container, so can edit any style inside it -->
                    <div class="user-details">
                        <div class="input-box">
                            <span style= "color: hsl(234, 70%, 51%);" class="details">Enter Name</span>
                            <!-- the input is text for majority and the placeholder simply writes pre-determined text and it is a required field -->
                            <input id="name" name="name" type="text" oncopy="copyfunc()" >
                            <div class="error"></div>
                        </div>

                        <div class="input-box">
                            <span style= "color: hsl(234, 70%, 51%); class="details">Enter Account Number</span>
                            <input id="accountnumber" name="accountnumber" type="number" oncopy="copyfunc()">
                            <div class="error"></div>
                        </div>
                        <div class="input-box">
                            <span style= "color: hsl(234, 70%, 51%); class="details">Enter new password</span>
                            <input id="newpass" name="newpass" type="password" oncopy="copyfunc()">
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
        let name = id("name"),
            accountnumber = id("accountnumber"),
            newpass = id("newpass"),
            form = id("form"),
            errorMsg = classes("error");

        form.addEventListener("submit", (e) => {
            e.preventDefault();
            engine(name, 0, "Name can't be blank");
            engine(accountnumber, 1, "Account Number can't be blank");
            engine(newpass, 2, "Password can't be blank");

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
    function copyfunc() {
        alert("You just copied sensistive becareful not to paste it in an unsecure place");
    }
</script>
</body>