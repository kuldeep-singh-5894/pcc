package pcc.com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Admin_login")
public class Admin_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final String userID = "Admin";
	private final String password = "Pass";
       
    
    public Admin_login() {
        super();
      
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user = request.getParameter("admin");
		String pwd = request.getParameter("pswd");
		if (userID.equals(user) && password.equals(pwd)) {
			HttpSession session = request.getSession();
			session.setAttribute("id", user);
			session.setMaxInactiveInterval(300);
			response.sendRedirect("admin/player/index.jsp");

		} else {
			
			String errorMessage = "Invalid ID or Password, please login again!";
			request.setAttribute("error", errorMessage);
			request.getRequestDispatcher("admin/index.jsp").forward(request, response);
		}
	}

}
