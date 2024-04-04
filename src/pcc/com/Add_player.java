package pcc.com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;




@WebServlet("/Add_player")
@MultipartConfig
public class Add_player extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public Add_player() {
        super();
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		try {

		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String role = request.getParameter("role");
		String batting = request.getParameter("batting");
		String bowling = request.getParameter("bowling");
		String team = request.getParameter("team");
		String position = request.getParameter("position");
		byte[] img = IOUtils.toByteArray((request.getPart("image")).getInputStream());

		Player p = new Player(id,name,age,role, batting, bowling, team, position, img);
		int status = PCC_DAO.add_player(p);
		
			if (status > 0) {
				System.out.println(" Successfully added");
				response.sendRedirect(request.getContextPath()+"/admin/player/index.jsp");
			} else {
				System.out.println(" not added");
			}
		} catch (Exception e2) {
			System.out.println(e2);
		}
	}

}
