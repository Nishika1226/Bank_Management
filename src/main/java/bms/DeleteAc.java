package bms;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class getAc
 */
@WebServlet("/DeleteAc")
public class DeleteAc extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Account a = new Account();
		a.setAcno(request.getParameter("del"));
		DbService db = new DbService();
		  int x=db.delete(a);
			 
			if(x>=1)
			{
			request.setAttribute("sms","<font color=white><b>Account has been deleted permanently..</b></font>");
			}
			else {
			request.setAttribute("sms","<font color=red><b>Account Could Not Be Deleted..</b></font>");
			}
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/deleteacc.jsp");
		rd.include(request, response);
	}
//public static void main(String args[]) {System.out.println("mm");}
}
