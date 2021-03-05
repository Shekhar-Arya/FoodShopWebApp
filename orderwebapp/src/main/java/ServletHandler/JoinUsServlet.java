package ServletHandler;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAOClassHandler.DataBaseConnectionClass;

/**
 * Servlet implementation class JoinUsServlet
 */
public class JoinUsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String email = request.getParameter("email");
		String phonenumber = request.getParameter("phonenumber");
		String adharnumber = request.getParameter("adharnumber");
		String address = request.getParameter("address");
		HttpSession session = request.getSession();
		DataBaseConnectionClass db = new DataBaseConnectionClass();
		try {
			db.addjoiner(email, phonenumber, adharnumber, address);
			if (session.getAttribute("Auth")!=null) {
				response.sendRedirect("Store.jsp");
			}
			else
			{
				response.sendRedirect("index.jsp");;
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
