import java.io.*;
import java.sql.*;
import java.util.Objects;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet{

    public static final long serialVersionUID = 1L;

    public RegisterServlet() { super(); }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String names = request.getParameter("name");
        String emails = request.getParameter("email");
        String date_of_birth = request.getParameter("date_of_birth");
        String passwords= request.getParameter("password");
        System.out.println("Date of birth: " + date_of_birth);
        String username = request.getParameter("name");


        HttpSession session = request.getSession(true);
        session.setAttribute("User", names);
        Cookie name = new Cookie("name", request.getParameter("name"));

        // Set expiry date after 24 Hrs for both the cookies.
        name.setMaxAge(60 * 60 * 24);

        response.addCookie(name);

        String dbname = "bankdatabase";
        String usernames = "root";
        String password = "pass";
        String url = "jdbc:mysql://localhost:3306/"+dbname;
        System.out.println("in if statement");
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection(url,usernames,password);
            Statement stmt=con.createStatement();
            int min = 1;
            int max = 10000;
            int accno = (int)(Math.random()*(max-min+1)+min);
            String sqlstatement = "insert into users (first_name, email, date_of_birth, user_password, accountno, balance, isAdmin) values ('" + names + "', '" + emails + "', '" + date_of_birth + "', '" + passwords + "', '" + accno + "', '" + 1000 +"', '" + 0 + "')";
            stmt.executeUpdate(sqlstatement);
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }


        response.sendRedirect("home.jsp?name=" + username);
        System.out.println("Logged in");

    }
}
