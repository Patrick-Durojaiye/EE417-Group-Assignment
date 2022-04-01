import java.io.*;
import java.sql.*;
import java.util.Objects;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet{

    private static final long serialVersionUID = 1L;

    public ContactServlet() {
        super();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String names = request.getParameter("name");
        String emails = request.getParameter("email");
        String messages = request.getParameter("textfield");

        String dbname = "bankdatabase";
        String usernames = "root";
        String password = "pass";
        String url = "jdbc:mysql://localhost:3306/"+dbname;

        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con= DriverManager.getConnection(url,usernames,password);
            Statement stmt=con.createStatement();
            String sqlstatement = "insert into contacttable (first_name, email, message) values ('" + names + "', '" + emails + "', '" + messages + "')";
            stmt.executeUpdate(sqlstatement);
            System.out.println("uploaded contact info");
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }


        response.sendRedirect("home.jsp?name=" + names);
        System.out.println("Logged in");

    }

}
