import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

public class f implements Filter {

	public void destroy() {
			}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		PrintWriter out=response.getWriter();
		String p=request.getParameter("pass");

		String n=request.getParameter("uname");
		if(p.equals("admin")&&(n.equals("admin"))){
			chain.doFilter(request,response);
		}
		else
		{
			 
			out.print("<h1>Username or password invalid</h1>");
			RequestDispatcher rd=request.getRequestDispatcher("mlogin.jsp");
			rd.include(request, response);
			}
	}

	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}

