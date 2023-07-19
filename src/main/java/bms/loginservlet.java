package bms;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Userinfo u = new Userinfo();
		u.setName(request.getParameter("t1"));
		u.setPassword(request.getParameter("t2"));
		PrintWriter out = response.getWriter();
		DbService db =  new DbService();
		boolean isvalid = db.check(u); 
		RequestDispatcher rd;
		if(isvalid==true)
		{
//			HttpSession session = request.getSession(false);
//			if(session!=null)
//			{
//				session.invalidate();
//			}
//			session = request.getSession(true);
		rd = getServletContext().getRequestDispatcher("/home.jsp");
		}
		else
		{
			request.setAttribute("sms","<font color=red><b>Invalid User</b></font>");
			rd = getServletContext().getRequestDispatcher("/login.jsp");
			
		}
		rd.include(request, response);
	}

}