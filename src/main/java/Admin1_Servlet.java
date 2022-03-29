
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Admin1_Servlet
 */
//@WebServlet("/Admin1_Servlet")
public class Admin1_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin1_Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String u_oldname = request.getParameter("oldname");
	    String u_newname = request.getParameter("newname");
	    String u_oldpassword = request.getParameter("oldpass");
	    String u_newpassword = request.getParameter("newpass");
	    String u_bankbalance = request.getParameter("newbankbal");
	   
	    
	    Admin1_Change admin1_change = new Admin1_Change(u_oldname,u_newname,u_oldpassword,u_newpassword,u_bankbalance);
	    
	    Admin1_Change_DOA usrDAO = new Admin1_Change_DOA();
	    if(usrDAO.insert(admin1_change)) {
	    	PrintWriter pw;
	    	pw = response.getWriter();
	    	response.setContentType("text/html");
	    	String page = "<!DOCTYPE html\r\n"
	    			+ "PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n"
	    			+ "<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n"
	    			+ "\r\n"
	    			+ "<head>\r\n"
	    			+ "    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8; width=device-width\" />\r\n"
	    			+ "    <title>Maxtek Personal Finance Management</title>\r\n"
	    			+ "    <link href=\"css/signupstyle.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n"
	    			+ "\r\n"
	    			+ "    <!-- various style sheets added -->\r\n"
	    			+ "    <link rel=\"stylesheet\" href=\"css/style.css\"/>\r\n"
	    			+ "    <link rel=\"stylesheet\" href=\"css/navbar.css\"/>\r\n"
	    			+ "    <link rel=\"stylesheet\" href=\"css/common.css\"/>\r\n"
	    			+ "    <!-- font added here -->\r\n"
	    			+ "    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\"/>\r\n"
	    			+ "    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin/>\r\n"
	    			+ "    <link href=\"https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&display=swap\" rel=\"stylesheet\"/>\r\n"
	    			+ "    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\"/>\r\n"
	    			+ "\r\n"
	    			+ "<!-- Providing the styling for the form -->\r\n"
	    			+ "\r\n"
	    			+ "<style>\r\n"
	    			+ "\r\n"
	    			+ "  .reg-form{\r\n"
	    			+ "    height:100vh;\r\n"
	    			+ "    background-size: cover;\r\n"
	    			+ "    display:flex;\r\n"
	    			+ "    align-items: center;\r\n"
	    			+ "    justify-content: center;\r\n"
	    			+ "}\r\n"
	    			+ "\r\n"
	    			+ "/* this container is used to store the title class, overall container to change any positioning etc */\r\n"
	    			+ ".container2{\r\n"
	    			+ "  max-width: 700px;\r\n"
	    			+ "  width: 100%;\r\n"
	    			+ "  background-color: #fff;\r\n"
	    			+ "  padding: 25px 30px;\r\n"
	    			+ "  border-radius: 5px;\r\n"
	    			+ "  box-shadow: 0 5px 10px rgba(0,0,0,0.15);\r\n"
	    			+ "  border-radius: 20px;\r\n"
	    			+ "}\r\n"
	    			+ "\r\n"
	    			+ "/* the user details class is using display flex and its a wrap in terms of the flex and the content on axis is spaced between. \r\n"
	    			+ "This means that the content is going to be 2 in a row, if this is not included then it would be like a column. */\r\n"
	    			+ ".content form .user-details{\r\n"
	    			+ "  display: flex;\r\n"
	    			+ "  flex-direction:column;\r\n"
	    			+ "  align-items:center;\r\n"
	    			+ "  justify-content: center;\r\n"
	    			+ "  margin: 20px 0 12px 0;\r\n"
	    			+ "}\r\n"
	    			+ "\r\n"
	    			+ "/* the input box width is set using the calc function  */\r\n"
	    			+ "form .user-details .input-box{\r\n"
	    			+ "  margin-bottom: 15px;\r\n"
	    			+ "  width: calc(100% / 2 - 20px);\r\n"
	    			+ "}\r\n"
	    			+ "\r\n"
	    			+ "/* the margin from the textfield is corrected here to format it nicely. \r\n"
	    			+ "Using display block which means the elements are adjusted in a block position */\r\n"
	    			+ "form .input-box span.details{\r\n"
	    			+ "  display: block;\r\n"
	    			+ "  font-weight: 200;\r\n"
	    			+ "  margin-bottom: 5px;\r\n"
	    			+ "}\r\n"
	    			+ "\r\n"
	    			+ "/* The input itself is modified here from the input box class so whether its the font size etc */\r\n"
	    			+ ".user-details .input-box input{\r\n"
	    			+ "  height: 45px;\r\n"
	    			+ "  width: 100%;\r\n"
	    			+ "  outline: none;\r\n"
	    			+ "  font-size: 16px;\r\n"
	    			+ "  border-radius: 5px;\r\n"
	    			+ "  padding-left: 10px;\r\n"
	    			+ "  border: 1px solid #ccc;\r\n"
	    			+ "  border-bottom-width: 2px;\r\n"
	    			+ "}\r\n"
	    			+ "\r\n"
	    			+ "form .button{\r\n"
	    			+ "   height: 45px;\r\n"
	    			+ "   margin: 3px 0\r\n"
	    			+ " }\r\n"
	    			+ "\r\n"
	    			+ " /* The button is adjusted here in terms of the border radius etc */\r\n"
	    			+ " /* cursor pointer is also active which means you can point */\r\n"
	    			+ " form .button input{\r\n"
	    			+ "   height: 100%;\r\n"
	    			+ "   width: 100%;\r\n"
	    			+ "   border-radius: 5px;\r\n"
	    			+ "   color: #fff;\r\n"
	    			+ "   font-size: 18px;\r\n"
	    			+ "   font-weight: 500;\r\n"
	    			+ "   letter-spacing: 1px;\r\n"
	    			+ "   cursor: pointer;\r\n"
	    			+ "   background-color: hsl(234, 70%, 51%);\r\n"
	    			+ "   border: 1px solid transparent;\r\n"
	    			+ "  }\r\n"
	    			+ "\r\n"
	    			+ "  /* the hover transition here is the exact same as the home page in which the borders become the color black */\r\n"
	    			+ " form .button input:hover{\r\n"
	    			+ "  background-color: transparent;\r\n"
	    			+ "  color: #000000fe;\r\n"
	    			+ "  border-color:#000000fe ;\r\n"
	    			+ " }\r\n"
	    			+ " \r\n"
	    			+ " .footer h1{\r\n"
	    			+ "    color: hsl(234, 70%, 51%);\r\n"
	    			+ "}\r\n"
	    			+ "\r\n"
	    			+ "</style>\r\n"
	    			+ "\r\n"
	    			+ "</head>\r\n"
	    			+ "<script defer src=\"js/navbar.js\"></script>\r\n"
	    			+ "<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\r\n"
	    			+ "\r\n"
	    			+ "<body>\r\n"
	    			+ "<br></br>\r\n"
	    			+ "<!-- Navagtion section -->\r\n"
	    			+ "<div class=\"stick\">\r\n"
	    			+ "    <!-- putting it in a container and allowing it to flex display so display is correct -->\r\n"
	    			+ "    <div style=\"display:flex;\">\r\n"
	    			+ "        <!-- giving the hamburgers an id to access for click events -->\r\n"
	    			+ "        <div class=\"hamburger\" id=\"hamburger\">\r\n"
	    			+ "            <div class=\"bar1\"></div>\r\n"
	    			+ "            <div class=\"bar2\"></div>\r\n"
	    			+ "            <div class=\"bar3\"></div>\r\n"
	    			+ "        </div>\r\n"
	    			+ "        <!-- giving logo an id for other hover effects -->\r\n"
	    			+ "        <div id=\"lth\" class=\"logo\" style=\"width: fit-content;\r\n"
	    			+ "        margin: auto;\r\n"
	    			+ "        display: flex;\">\r\n"
	    			+ "            <img alt=\"Logo\" src=\"./Images-site/Logo_1.png\" width=\"150px\" onmouseover=\"bigImg(this)\"\r\n"
	    			+ "                 onmouseout=\"normalImg(this)\">\r\n"
	    			+ "        </div>\r\n"
	    			+ "    </div>\r\n"
	    			+ "\r\n"
	    			+ "    <!-- importing the logo to be placed at the top right inline with the navbar -->\r\n"
	    			+ "    <div class=\"navbar--middle\" id=\"navbar--middle\">\r\n"
	    			+ "\r\n"
	    			+ "        <nav style=\"    padding: 0;\r\n"
	    			+ "        display: flex;\r\n"
	    			+ "        flex-wrap: nowrap;\r\n"
	    			+ "        justify-content: center;\r\n"
	    			+ "        align-items: center;\">\r\n"
	    			+ "            <ul style=\"display:inline-flex; list-style-type:none; align-items:center;\">\r\n"
	    			+ "\r\n"
	    			+ "                <!-- navbar is listed unordered in a tags and linking appropriately -->\r\n"
	    			+ "                <li><a class=\"current\" href=\"home.jsp\">Home</a></li>\r\n"
	    			+ "                <li><a href=\"about.jsp\">About Us</a></li>\r\n"
	    			+ "                <li class=\"checker\"><a>Apps</a>\r\n"
	    			+ "                    <!-- dropdown is created -->\r\n"
	    			+ "                    <ul class=\"dropdown\">\r\n"
	    			+ "\r\n"
	    			+ "                        <li class=\"dropdown-item\"><a href=\"services.jsp\">Services</a></li>\r\n"
	    			+ "                        <li class=\"dropdown-item\"><a href=\"portfolio.jsp\">Portfolio</a></li>\r\n"
	    			+ "                        <li class=\"dropdown-item\"><a href=\"application.jsp\"> Applications</a></li>\r\n"
	    			+ "\r\n"
	    			+ "                    </ul>\r\n"
	    			+ "                </li>\r\n"
	    			+ "                <li><a href=\"newsblog.jsp\">News and Blogs</a></li>\r\n"
	    			+ "                <li><a href=\"contact.jsp\">Contact Us</a></li>\r\n"
	    			+ "                <li><a href=\"Login.jsp\" class=\"register-btn\">Logout</a></li>\r\n"
	    			+ "            </ul>\r\n"
	    			+ "        </nav>\r\n"
	    			+ "    </div>\r\n"
	    			+ "</div>\r\n"
	    			+ "\r\n"
	    			+ "<!-- Sign up form with relevant fields of data collection to set up an account-->\r\n"
	    			+ "<div class=\"signup_section\">\r\n"
	    			+ "    <br>\r\n"
	    			+ "    <h1> Information Updated Successfully !!</h1>\r\n"
	    			+ "    <br>\r\n"
	    			+ "    <br>\r\n"
	    			+ " <section style=\" background-image: linear-gradient(120deg, hsl(234, 70%, 51%),hsl(0, 0%, 57%)\" class=\"reg-form\">\r\n"
	    			+ "      \r\n"
	    			+ "    </section>\r\n"
	    			+ "\r\n"
	    			+ "</div>\r\n"
	    			+ "\r\n"
	    			+ "\r\n"
	    			+ "</body>\r\n"
	    			+ ";";
	    	pw.println(page);
	    	
	    }else {
	    	response.sendRedirect("admin1_change_pass_bankbalance.jsp");
	    }
	}

}
