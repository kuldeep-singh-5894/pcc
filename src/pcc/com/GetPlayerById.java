package pcc.com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/GetPlayerById")
public class GetPlayerById extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public GetPlayerById() {
        super();
 
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Player player = PCC_DAO.getPlayerById(id);
		request.setAttribute("player", player);
		request.getRequestDispatcher("/pages/players.jsp").forward(request, response);
	}

}
