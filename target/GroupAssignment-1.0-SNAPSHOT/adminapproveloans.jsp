<%--
  Created by IntelliJ IDEA.
  User: Timi Durojaiye
  Date: 09/03/2022
  Time: 19:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
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
    <h1> Welcom Admin you can approve loans here!!</h1>
    <br>
    <br>
    <section style=" background-image: linear-gradient(120deg, hsl(234, 70%, 51%),hsl(0, 0%, 57%)" class="reg-form">
        <!-- div container for the entire form -->
        <div class="container2">
            <!-- the title container to adjust any style if needs to be -->
            <div class="titles">
                <!-- inline CSS used here -->
                <h4 style="font-size: 25px; padding: 10px; color: hsl(234, 70%, 51%);">*APPROVE LOANS*</h4>
            </div>
            <!-- the overall content is put in a container too -->
            <div class="content">
                <!-- the action is set to do nothing at the moment as there is no POST/GET at the moment -->
                <form id="form" method="post" action="ApproveLoanServlet" onsubmit="validation()">
                    <!-- the details are input in this container, so can edit any style inside it -->
                    <div class="user-details">
                        <div class="input-box">
                            <span style= "color: hsl(234, 70%, 51%);" class="details">Enter Loan Id</span>
                            <!-- the input is text for majority and the placeholder simply writes pre-determined text and it is a required field -->
                            <input id="loanid" name="loanid" type="number" oncopy="copyfunc()" >
                            <div class="error"></div>
                        </div>
                        <!-- rest of the form is very similar, mainly from the above -->
                        <div class="input-box">
                            <span style= "color: hsl(234, 70%, 51%);" class="details">Approve Loan?</span>
                            <br>
                            <input type="radio" id="approve" name="amount" value="1"/>
                            <label for="approve" style="font-size: medium;"> Yes</label> <br>
                            <input type="radio" id="reject" name="amount" value="0"/>
                            <label for="reject" style="font-size: medium;"> No</label><br>
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
        let loanid = id("loanid"),

            errorMsg = classes("error");


        form.addEventListener("submit", (e) => {
            e.preventDefault();
            engine(loanid, 0, "Loan Id cannot be left blank");
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

<div>
    <h1> Loans </h1>
    <table border="2px">
        <tr>
            <td>Loan Id</td>
            <td>Account No</td>
            <td>First Name</td>
            <td>Amount</td>
        </tr>

        <%
            String dbname = "bankdatabase";
            String usernames = "root";
            String password = "pass";
            String url = "jdbc:mysql://localhost:3306/"+dbname;
            try {

                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con= DriverManager.getConnection(url,usernames,password);
                Statement stmt=con.createStatement();
                String sqlstatement = "select id, accountno, first_name, amount from loans";
                ResultSet rs = stmt.executeQuery(sqlstatement);
                while (rs.next())
                {

        %>
        <tr><td><%=rs.getString("id")%></td>
            <td><%=rs.getString("accountno")%></td>
            <td><%=rs.getString("first_name")%></td>
            <td><%=rs.getString("amount")%></td></tr>

        <%
            }
        %>
    </table>
    <%
            rs.close();
            stmt.close();
            con.close();
        }
        catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

    %>

</div>
</body>