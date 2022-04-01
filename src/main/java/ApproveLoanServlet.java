import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpSession;

@WebServlet("/ApproveLoanServlet")
public class ApproveLoanServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {


        response.setContentType("text/html");
        HttpSession session = request.getSession();

        String loanid = request.getParameter("loanid");
        String loanresult = request.getParameter("amount");
        System.out.println("Approve loan: " + loanresult);




            System.out.println("hello");

            String dbname = "bankdatabase";
            String usernames = "root";
            String password = "pass";
            String url = "jdbc:mysql://localhost:3306/"+dbname;
            System.out.println("Inside post function");
            ResultSet rs1 = null;
            int rs = 0;
            ResultSet rs2 = null;

            String loanamount = null;
            String loanaccount = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection(url, usernames, password);


                Statement stmt = con.createStatement();

                if (Objects.equals(loanresult, "1")) {

                    String getamountstatement = "select accountno, amount from loans where id=+'" + loanid + "'";
                    rs1 = stmt.executeQuery(getamountstatement);

                    while (rs1.next())
                    {
                        loanaccount= rs1.getString("accountno");
                        loanamount = rs1.getString("amount");
                    }

                    String getbalstatement = "select balance from users where accountno=+'" + loanaccount + "'";
                    rs2 = stmt.executeQuery(getbalstatement);
                    String usercurrentbalance = null;
                    while (rs2.next())
                    {
                        usercurrentbalance = rs2.getString("balance");
                    }

                    float newbalup = Float.parseFloat(usercurrentbalance) + Float.parseFloat(loanamount);
                    String sqlstatement = "update users set balance=+ '" + newbalup + "' where accountno=+'" + loanaccount + "'";
                    stmt.executeUpdate(sqlstatement);

                    String removestatement = "delete from loans where id=+'" + loanid + "'";
                    stmt.executeUpdate(removestatement);
                }
                else{
                    String removestatement = "delete from loans where id=+'" + loanid + "'";
                    stmt.executeUpdate(removestatement);
                }

                con.close();
                response.sendRedirect("home.jsp");

            } catch (SQLException | ClassNotFoundException e) {
                e.printStackTrace();
            }
        }

}
