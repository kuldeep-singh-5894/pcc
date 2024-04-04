package pcc.com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Delete_player")
public class Delete_player extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Delete_player() {
        super();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	int id = Integer.parseInt(request.getParameter("id"));
		int status = PCC_DAO.deletePlayer(id);
		
		if(status>0) {
			System.out.println("player deleted");
		}
		
		response.sendRedirect(request.getContextPath()+"/admin/player/index.jsp");
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
