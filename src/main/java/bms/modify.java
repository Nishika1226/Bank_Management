package bms;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class modify
 */
@WebServlet("/modify")
public class modify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public modify() {
        super();
        // TODO Auto-generated constructor stub
    }

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
	
		DbService db = new DbService();
		  int x=db.ModifyAccount(a);
			 
			if(x>=1)
			{
			request.setAttribute("sms","<font color=white><b>Account details has been modified.</b></font>");
			}
			else {
			request.setAttribute("sms","<font color=red><b>Account details Could Not Be Modified.</b></font>");
			}
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/Modify.jsp");
		rd.include(request, response);
	
	}
//public static void main(String ar[]) {System.out.println("hello");}
}
