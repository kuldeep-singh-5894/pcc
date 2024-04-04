package pcc.com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.io.IOUtils;


@WebServlet("/Membership_mail")
@MultipartConfig
public class Membership_mail extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Membership_mail() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect(request.getContextPath()+"/pages/membership.jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String num = request.getParameter("number");
		String dob = request.getParameter("dob");
		String address = request.getParameter("address");
		String msg = request.getParameter("msg");
		byte[] image = IOUtils.toByteArray((request.getPart("image")).getInputStream());
		
		String to = "kuldeepsinghraunta@gmail.com";
		String sub = "PCC, Membership Request from "+name;
		String message = "Name: "+name+"\n Email: "+email+"\nPhone Number: "+num+"\n Date of Birth: "+dob+"\n Address: "+address+"\n Query:  "+msg;
		
		PCC_DAO.send(to, sub, message, image);
		String note = "Your Message has been Sent.";
		request.setAttribute("msg", note);
		request.getRequestDispatcher("/pages/membership.jsp").include(request, response);
	}

}
