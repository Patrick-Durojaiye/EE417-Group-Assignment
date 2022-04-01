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
    <link rel="stylesheet" href="css/tablestyle.css"/>
    <!-- font added here -->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

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


<div>
    <h1 style="text-align: center"> Bank Users </h1>
    <br>
    <table border="2px" class="tablecenter">
        <tr>
            <td>First Name</td>
            <td>Email</td>
            <td>Date of Birth</td>
            <td>Account no</td>
            <td>Balance</td>
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
                String sqlstatement = "select first_name, email, date_of_birth, accountno, balance from users";
                ResultSet rs = stmt.executeQuery(sqlstatement);
                while (rs.next())
                {

        %>
        <tr><td><%=rs.getString("first_name")%></td>
            <td><%=rs.getString("email")%></td>
            <td><%=rs.getString("date_of_birth")%></td>
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


<div>
    <br>
    <br>
    <h1 style="text-align: center"> Contact Form Submissions</h1>
    <br>
    <table border="2px" class="tablecenter">
        <tr>
            <td>First Name</td>
            <td>Email</td>
            <td>Message</td>
        </tr>

        <%

            try {

                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con= DriverManager.getConnection(url,usernames,password);
                Statement stmt=con.createStatement();
                String sqlstatement = "select first_name, email, message from contacttable";
                ResultSet rs = stmt.executeQuery(sqlstatement);
                System.out.println("passed rs");
                while (rs.next())
                {
                    System.out.println("inside while loop, rs exist");
                    System.out.println(rs.getString("first_name"));
        %>
        <tr><td><%=rs.getString("first_name")%></td>
            <td><%=rs.getString("email")%></td>
            <td><%=rs.getString("message")%></td>
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


</body>