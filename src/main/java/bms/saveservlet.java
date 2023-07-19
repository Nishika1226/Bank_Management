package bms;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class saveservlet
 */
@WebServlet("/saveservlet")
public class saveservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Account a=new Account();
		a.setAcno(request.getParameter("a1"));
		a.setFname(request.getParameter("a2"));
		a.setLname(request.getParameter("a3"));
		a.setAdhar(request.getParameter("a4"));
		a.setDob(request.getParameter("a5"));
		a.setGender(request.getParameter("a6"));
		a.setEmail(request.getParameter("a7"));
		a.setMno(request.getParameter("a8"));
		a.setAddress(request.getParameter("a9"));
		a.setState(request.getParameter("a10"));
		a.setCity(request.getParameter("a11"));
		a.setPcode(request.getParameter("a12"));
		a.setAtype(request.getParameter("a13"));
		a.setBal(Integer.parseInt(request.getParameter("a14")));
		
		
		DbService db = new DbService();
		  int x=db.addAccount(a);
			 
			if(x>=1)
			{
			request.setAttribute("sms","<font color=white><b>Account Registered Successfuly</b></font>");
			}
			else {
			request.setAttribute("sms","<font color=red><b>Account Could Not Be Registered</b></font>");
			}
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/NewAcc.jsp");
		rd.include(request, response);
	
}
	
}
