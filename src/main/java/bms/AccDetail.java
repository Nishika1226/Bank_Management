package bms;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AccDetail
 */
@WebServlet("/AccDetail")
public class AccDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AccDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Account a = new Account();
		a.setAcno(request.getParameter("x"));
		DbService db = new DbService();
		Account a1 = db.getAccount(a);
		request.setAttribute("account", a1);
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/MyAccount.jsp");
		rd.include(request, response);
	}
//public static void main(String args[]) {System.out.println("mm");}
}
