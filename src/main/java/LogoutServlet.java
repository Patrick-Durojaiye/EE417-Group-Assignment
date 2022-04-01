import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet{

    private static final long serialVersionUID = 1L;

    public LogoutServlet() {
        super();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        HttpSession session = request.getSession(true);
        session.removeAttribute("User");
        System.out.println("logged out");
        response.sendRedirect("index.jsp");

    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {


    }
}
