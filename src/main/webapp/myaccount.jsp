<%--
  Created by IntelliJ IDEA.
  User: Timi Durojaiye
  Date: 09/03/2022
  Time: 19:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*"%>
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
<br>
<div>
    <h1> Account Details </h1>
    <table border="2px">
        <tr>
            <td>First Name</td>
            <td>Email</td>
            <td>Account no</td>
            <td>Balance</td>
        </tr>

        <%

            String username = (String) session.getAttribute("User");

            System.out.println("username: " + username);
            String dbname = "bankdatabase";
            String usernames = "root";
            String password = "pass";
            String url = "jdbc:mysql://localhost:3306/"+dbname;
            try {

                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con= DriverManager.getConnection(url,usernames,password);
                Statement stmt=con.createStatement();

                // gets the users bank information
                String sqlstatement = "select first_name, email, accountno, balance from users where first_name='" + username + "'";
                ResultSet rs = stmt.executeQuery(sqlstatement);
                System.out.println("passed rs");

                // loops through while there's still results
                while (rs.next())
                {
                    // adds data gotten to the table
        %>
        <tr><td><%=rs.getString("first_name")%></td>
            <td><%=rs.getString("email")%></td>
            <td><%=rs.getString("accountno")%></td>
            <td><%=rs.getString("balance")%></td></tr>

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
<br>
<br>

<div>

    <h1> Transfers </h1>
    <table border="2px">
        <tr>
            <td>From</td>
            <td>To Account</td>
            <td>Amount</td>
        </tr>

        <%

            try {

                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con= DriverManager.getConnection(url,usernames,password);
                Statement stmt=con.createStatement();
                String sqlstatements = "select fromusername, accountno, amount from transfer where fromusername='" + username + "'";
                ResultSet rs = stmt.executeQuery(sqlstatements);
                System.out.println("passed rs");
                while (rs.next())
                {
                    System.out.println("2nd");
                    System.out.println(rs.getString("fromusername"));
        %>
        <tr><td><%=rs.getString("fromusername")%></td>
            <td><%=rs.getString("accountno")%></td>
            <td><%=rs.getString("amount")%></td>
        </tr>

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

<br>


</body>