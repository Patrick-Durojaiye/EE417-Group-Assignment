import java.io.*;
import java.sql.*;
import java.util.Objects;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/LoanServlet")
public class LoanServlet extends HttpServlet{
    private static final long serialVersionUID = 1L;
    public LoanServlet(){ super();}

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String accno = request.getParameter("Account_No1");
        String firstname = request.getParameter("name1");
        String amount = request.getParameter("amount");


        String dbname = "bankdatabase";
        String usernames = "root";
        String password = "pass";
        String url = "jdbc:mysql://localhost:3306/"+dbname;

        System.out.println("Inside post function");
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con= DriverManager.getConnection(url,usernames,password);
            Statement stmt=con.createStatement();
            String sqlstatement = "insert into loans (accountno, first_name, amount) values ('" + accno + "', '" + firstname + "', '"+ amount+ "')";
            stmt.executeUpdate(sqlstatement);
            System.out.println("uploaded contact info");
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }


        response.sendRedirect("home.jsp?name=" + firstname);
        System.out.println("Logged in");

    }

}
