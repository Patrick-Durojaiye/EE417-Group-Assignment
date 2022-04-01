import java.io.*;
import java.sql.*;
import java.util.Objects;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/NewsletterServlet")
public class NewsletterServlet extends HttpServlet{

    private static final long serialVersionUID = 1L;

    public NewsletterServlet() {
        super();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        System.out.println("in post news");
        String emails = request.getParameter("emailft");

        String dbname = "bankdatabase";
        String usernames = "root";
        String password = "pass";
        String url = "jdbc:mysql://localhost:3306/"+dbname;

        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con= DriverManager.getConnection(url,usernames,password);
            Statement stmt=con.createStatement();
            String sqlstatement = "insert into newsletter (email) values ('" + emails + "')";
            stmt.executeUpdate(sqlstatement);
            System.out.println("uploaded contact info");
            con.close();
            response.sendRedirect("signup.jsp");
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }


    }
}
