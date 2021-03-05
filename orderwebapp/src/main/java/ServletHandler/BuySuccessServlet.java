package ServletHandler;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAOClassHandler.DataBaseConnectionClass;
import DAOClassHandler.ProductClass;

/**
 * Servlet implementation class BuySuccessServlet
 */
public class BuySuccessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String email = request.getParameter("email");
		String phonenumber = request.getParameter("phonenumber");
		String address = request.getParameter("address");
		DataBaseConnectionClass db = new DataBaseConnectionClass();
		HttpSession session = request.getSession();
		try {
			db.addorder((String)session.getAttribute("Auth"), email, phonenumber, address, (ProductClass)session.getAttribute("buyproduct"), (Double)session.getAttribute("total"));
			response.sendRedirect("thankyou.jsp");
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
