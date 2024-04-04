package pcc.com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;


@WebServlet("/Edit_player")
@MultipartConfig
public class Edit_player extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Edit_player() {
        super();
         }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		try {
			Player p = null;
			int id = Integer.parseInt(request.getParameter("id"));
			String name = request.getParameter("name");
			int age = Integer.parseInt(request.getParameter("age"));
			String role = request.getParameter("role");
			String batting = request.getParameter("batting");
			String bowling = request.getParameter("bowling");
			String team = request.getParameter("team");
			String position = request.getParameter("position");
			System.out.println(IOUtils.toByteArray((request.getPart("image")).getInputStream()));
			if((request.getPart("image").getSize())>0) {
				byte[] img = IOUtils.toByteArray((request.getPart("image")).getInputStream());
				p = new Player(id,name,age,role, batting, bowling, team, position, img);
			}
			else {
				p = new Player();
				p.setId(id);
				p.setName(name);
				p.setAge(age);
				p.setRole(role);
				p.setBatting(batting);
				p.setBowling(bowling);
				p.setTname(team);
				p.setPosition(position);
			}
			int status = PCC_DAO.edit_player(p);
			
				if (status > 0) {
					System.out.println(" Successfully Edited");
					response.sendRedirect(request.getContextPath()+"/admin/player/index.jsp");
				} else {
					System.out.println(" not Edited");
				}
			} catch (Exception e2) {
				System.out.println(e2);
			}
		}

}


