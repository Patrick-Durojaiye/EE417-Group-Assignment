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
    <link href="css/servicesstyle.css" rel="stylesheet" type="text/css" />
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
<div class="transfer_section">

    <br>
    <h1> Transfer Funds</h1>
    <br>
    <!-- Form to process transferring funds-->
    <form action="/action_page.php" class="form_section" id="form">
        <label for="Account_No" style="font-size: medium;">Account No:</label>
        <input type="number" id="Account_No" name="Account_No" class="inputs">
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
        <label for="price" style="font-size:medium;">Choose how much do you want to <b>Transfer</b>
        </label>
        <input type="range" name="price" id="price" min="10" max="1000" step="10" value="10"
               style="width: 420px; height: 10px;">
        <output class="price-output" for="price" id="amountout"></output>
        <script>const price = document.querySelector('#price');
        const output = document.querySelector('.price-output');
        output.textContent = price.value;
        price.addEventListener('input', function () {
            output.textContent = price.value;
        });
        </script>
        <div class="error"></div>
        <br>
        <br>
        <a href="services.html"><button class="button_input" type="submit"> Send </button></a>
    </form>

    <script>
        let id = (id) => document.getElementById(id);
        let classes = (classes) => document.getElementsByClassName(classes);
        let Account_No = id("Account_No"),
            email = id("email"),
            memo = id("memo"),
            form = id("form"),
            amountout = id("amountout"),
            errorMsg = classes("error");
        var accountnoArr = [];
        var emailArr = [];
        var memoArr = [];
        var amountArr = [];
        let showbutn = id("showbutn");
        form.addEventListener("submit", (e) => {
            e.preventDefault();
            engine(Account_No, 0, "Account Number can't be blank");
            engine(email, 1, "Email can't be blank");
            engine(memo, 2, "Memo can't be blank");
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
                    accountnoArr.push(Account_No.value.trim());
                    emailArr.push(email.value.trim());
                    memoArr.push(memo.value.trim());
                    amountArr.push(amountout.value.trim());
                    localStorage.setItem('accountno', JSON.stringify(accountnoArr));
                    localStorage.setItem('email', JSON.stringify(emailArr));
                    localStorage.setItem('memo', JSON.stringify(memoArr));
                    localStorage.setItem('amount', JSON.stringify(amountArr));
                    console.log(JSON.parse(localStorage.getItem("accountno")));
                    console.log(JSON.parse(localStorage.getItem("email")));
                    console.log(JSON.parse(localStorage.getItem("memo")));
                    console.log(JSON.parse(localStorage.getItem("amount")));
                }
            }
        }
    </script>
</div>
<br>
<br>

<div class="loan_section">

    <br>
    <h1> Loan Application</h1>
    <br>
    <!-- Form application to apply for a loan -->
    <form action="/action_page.php" class="form_section" id="form1">
        <label for="Account_No1" style="font-size: medium;">Account No:</label>
        <input type="number" id="Account_No1" name="Account_No1" class="inputs">
        <div class="error1"></div>
        <br>
        <br>

        <label for="name1" style="font-size: medium;">Name:</label>
        <input type="text" id="name1" name="name1" class="inputs">
        <div class="error1"></div>
        <br>
        <br>

        <label for="email1" style="font-size: medium;">Email:</label>
        <input type="email" id="email1" name="email1" class="inputs">
        <div class="error1"></div>
        <br>
        <br>

        <label for="amount" style="font-size:medium;">How much do you want to <b>Burrow</b>
        </label>
        <input type="range" name="amount" id="amount" min="20" max="1000" step="10" value="20"
               style="width: 420px; height: 10px;">
        <output class="amount-output" for="amount" id="amountout1"> </output>
        <script>const amount = document.querySelector('#amount');
        const output1 = document.querySelector('.amount-output');
        output1.textContent = amount.value;
        amount.addEventListener('input', function () {
            output1.textContent = amount.value;
        });
        </script>
        <div class="error1"></div>
        <br>
        <br>
        <a href="services.html"><button class="button_input" type="submit"> Apply </button></a>
    </form>

    <script>
        let id1 = (id) => document.getElementById(id);
        let classes1 = (classes) => document.getElementsByClassName(classes);
        let Account_No1 = id1("Account_No1"),
            name1 = id1("name1"),
            email1 = id1("email1"),
            amountout1 = id("amountout1"),
            form1 = id1("form1"),
            errorMsg1 = classes1("error1");
        var Account_No1Arr = [];
        var name1Arr = [];
        var email1Arr = [];
        var amount1Arr = [];
        let loanbutn = id("loanbutn");
        form1.addEventListener("submit", (e) => {
            e.preventDefault();
            engine1(Account_No1, 0, "Account Number can't be blank");
            engine1(name1, 1, "Name can't be blank");
            engine1(email1, 2, "Email can't be blank");
        });
        let engine1 = (id, serial, message) => {
            console.log(id + serial + message);
            if (id.value.trim() === "") {
                errorMsg1[serial].innerHTML = message;
                id.style.border = "2px solid red";
            }
            else {
                errorMsg1[serial].innerHTML = "";
                id.style.border = "2px solid green";
                if (serial == 2) {
                    Account_No1Arr.push(Account_No1.value.trim());
                    name1Arr.push(name1.value.trim());
                    email1Arr.push(email1.value.trim());
                    amount1Arr.push(amountout1.value.trim());
                    localStorage.setItem('accountno1', JSON.stringify(Account_No1Arr));
                    localStorage.setItem('name1', JSON.stringify(name1Arr));
                    localStorage.setItem('email1', JSON.stringify(email1Arr));
                    localStorage.setItem('amount1', JSON.stringify(amount1Arr));
                }
            }
        }
    </script>

</div>

<br>


</body>