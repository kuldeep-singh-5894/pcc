package pcc.com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Send_mail")
public class Send_mail extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Send_mail() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("index.jsp");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String num = request.getParameter("num");
		String msg = request.getParameter("msg");
		
		String to = "kuldeepsinghraunta@gmail.com";
		String sub = "PCC, Please Contact "+name;
		String message = "Name: "+name+"\n Email: "+email+"\nPhone Number: "+num+"\n Message:  "+msg;
		
		PCC_DAO.send(to, sub, message);
		String note = "Your Message has been Sent.";
		request.setAttribute("msg", note);
		request.getRequestDispatcher("/pages/contact.jsp").include(request, response);
	}

}
