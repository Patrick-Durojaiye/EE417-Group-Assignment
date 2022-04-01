import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpSession;

@WebServlet("/TransferRequestServlet")
public class TransferRequestServlet extends HttpServlet{
    private static final long serialVersionUID = 1L;

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {


        response.setContentType("text/html");
        HttpSession session = request.getSession();

        String username = request.getParameter("name");
        String submitname = request.getParameter("transfer");

        String accountno = request.getParameter("Account_No");
        String amount = request.getParameter("price");

        System.out.println("ac: " + accountno);
        if (Objects.equals(submitname, "transfer")) {
            System.out.println("hello");

            String dbname = "bankdatabase";
            String usernames = "root";
            String password = "pass";
            String url = "jdbc:mysql://localhost:3306/"+dbname;
            System.out.println("Inside post function");
            ResultSet rs1 = null;
            int rs = 0;
            ResultSet rs2 = null;

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection(url, usernames, password);
                Statement stmt = con.createStatement();
                String getbalstatement = "select balance from users where accountno=+'" + accountno + "'";
                rs1 = stmt.executeQuery(getbalstatement);
                String userbalance = null;

                while (rs1.next()) {
                    userbalance = rs1.getString("balance");
                }

                float newbalup = Float.parseFloat(amount) + Float.parseFloat(userbalance);
                String sqlstatement = "update users set balance=+ '" + newbalup + "' where accountno=+'" + accountno + "'";
                stmt.executeUpdate(sqlstatement);
                //System.out.println("rs: " + rs);
                System.out.println("uploaded contact info");


                String getotherbalstatement = "select balance from users where first_name=+'" + username + "'";
                rs2 = stmt.executeQuery(getotherbalstatement);
                String userbalance1 = null;

                while (rs2.next()) {
                    userbalance1 = rs2.getString("balance");
                }
                float newbaldown = Float.parseFloat(userbalance1) - Float.parseFloat(amount);
                String reducebalstatement = "update users set balance=+ '" + newbaldown + "' where first_name=+'" + username + "'";
                stmt.executeUpdate(reducebalstatement);


                String insertstatement = "insert into transfer (fromusername, accountno, amount) values ('" + username + "', '" + accountno + "', '" + amount + "')";
                stmt.executeUpdate(insertstatement);
                con.close();

            } catch (SQLException | ClassNotFoundException e) {
                e.printStackTrace();
            }
        }

    }
}
