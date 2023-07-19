package bms;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class onlinetrans
 */
@WebServlet("/onlinetrans")
public class onlinetrans extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public onlinetrans() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Userinfo u=new Userinfo();
		Account a = new Account();
		u.setName(request.getParameter("mt4"));
		u.setPassword(request.getParameter("mt5"));
		a.setAcno(request.getParameter("mt1"));
		a.setAcno2(request.getParameter("mt2"));
		a.setAmt(Integer.parseInt(request.getParameter("mt3")));
		
		 DbService db = new DbService();
		 int x=0;
		
			x = db.online(a,u);
			if(x>=1)
			request.setAttribute("sms","<font color=blue>Transaction Successful</font>");
			else
			request.setAttribute("sms","<font color=red>Amount Could Not Be transfer</font>");
		
	
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/Moneytrans.jsp");
		rd.include(request, response);
	}

	
	public static void main(String args[]) {System.out.println("mm");}

}
