import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.*;

@WebServlet("/UpdateUserBalanceServlet")
public class UpdateUserBalanceServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public UpdateUserBalanceServlet(){ super();}

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        HttpSession session = request.getSession(true);
        String username = (String) session.getAttribute("User");
        String accountnumber = request.getParameter("Accountnumber");
        String amount = request.getParameter("amount");


        String dbname = "bankdatabase";
        String usernames = "root";
        String password = "pass";
        String url = "jdbc:mysql://localhost:3306/"+dbname;
        System.out.println("Inside post function");

        ResultSet rs1 = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con= DriverManager.getConnection(url,usernames,password);
            Statement stmt=con.createStatement();

            String getbalstatement = "select balance from users where accountno=+'" + accountnumber + "'";
            rs1 = stmt.executeQuery(getbalstatement);
            String userbalance = null;

            while (rs1.next())
            {
                userbalance = rs1.getString("balance");
            }

            float newbalance = Float.parseFloat(userbalance) + Float.parseFloat(amount);

            // updates users login information from update query
            String sqlstatement = "update users set balance=+ '" + newbalance + "' where accountno=+'" + accountnumber +  "'";
            stmt.executeUpdate(sqlstatement);
            System.out.println("uploaded contact info");
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
