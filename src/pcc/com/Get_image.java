package pcc.com;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Base64;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Get_image")
public class Get_image extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Get_image() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		byte[] img = PCC_DAO.getPlayerimg(id);
		String playerImage = Base64.getEncoder().encodeToString(img);
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		out.println("<img  src='data:image/jpg;base64,"+playerImage+"'>");
	}

}
