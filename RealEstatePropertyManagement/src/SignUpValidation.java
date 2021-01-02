

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 * Servlet Filter implementation class SignUpValidation
 */
public class SignUpValidation implements Filter {

    /**
     * Default constructor. 
     */
    public SignUpValidation() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		
		try {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String fname=request.getParameter("first_name");
		String lname=request.getParameter("last_name");
		String email=request.getParameter("email");
		String pass=request.getParameter("password");
		String cpass=request.getParameter("re-cpassword");
		
		if(fname.equals(""))
		{
			out.println("fname can't be empty ");
			request.getRequestDispatcher("index.jsp").include(request, response);
		}
		
		}
		catch (Exception e)
		{
			e.printStackTrace();
			
		}
		
		
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
