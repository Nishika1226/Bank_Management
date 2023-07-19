package bms;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class transaction
 */
@WebServlet("/transaction")
public class transaction extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Account a = new Account();
		a.setAcno(request.getParameter("c1"));
		a.setAmt(Integer.parseInt(request.getParameter("c3")));
		
		String op = request.getParameter("b");
		DbService db = new DbService();
		int x=0;
		if(op.equals("wd"))
		{
			x = db.withdraw(a);
			if(x>=1)
			request.setAttribute("sms","<font color=white>Money Withdrawl Successfully</font>");
			else
			request.setAttribute("sms","<font color=red>Money Could Not Be Withdrawl</font>");
		}
		if(op.equals("dp"))
		{
		     x = db.deposit(a);
			if(x>=1) {
			request.setAttribute("sms","<font color=white>Money deposited Successfully</font>");
			}
			else {
			request.setAttribute("sms","<font color=red>Money Could Not Be deposit</font>");
			}
			}
	
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/crud.jsp");
		rd.include(request, response);
	}
	
	

}
