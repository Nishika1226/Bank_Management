package bms;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class onlinehistory
 */
@WebServlet("/onlinehistory")
public class onlinehistory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public onlinehistory() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Account a = new Account();
		a.setAcno(request.getParameter("o1"));
		
		DbService db=new DbService();
		ArrayList al= db.getOnhistory(a);
		request.setAttribute("history", al);
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/showhistory.jsp");
		rd.include(request, response);
	}
	//public static void main(String args[]) {System.out.println("mm");}
}
