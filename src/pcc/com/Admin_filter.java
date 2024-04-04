package pcc.com;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@WebFilter("/*")
public class Admin_filter implements Filter {
	@Override
	public void destroy() {
	}
	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) arg0;
		HttpSession session = request.getSession();
		if (request.getRequestURI().startsWith("/PunjabCricketClub/admin/player/")
			|| (request.getRequestURI().startsWith("/PunjabCriketClub/Add_player"))
			|| (request.getRequestURI().startsWith("/PunjabCriketClub/Delete_player"))
			|| (request.getRequestURI().startsWith("/PunjabCriketClub/Edit_player"))) 
		{
			if (session.getAttribute("id") == null) {

				String errorMessage = "Please Login Your Credentials First!";
				request.setAttribute("error", errorMessage);
				request.getRequestDispatcher("../index.jsp").forward(request, arg1);
			}
		}
		
		arg2.doFilter(request, arg1);
	}
	@Override
	public void init(FilterConfig fConfig) throws ServletException {
	}

}
