package ServletHandler;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAOClassHandler.DataBaseConnectionClass;
import DAOClassHandler.OrderCredentials;
import DAOClassHandler.ProductClass;

/**
 * Servlet implementation class OrderHistoryServlet
 */
public class OrderHistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		DataBaseConnectionClass db = new DataBaseConnectionClass();
		try {
			ResultSet rs = db.getorders((String)session.getAttribute("Auth"));
			
			ArrayList<OrderCredentials> loc = new ArrayList<OrderCredentials>();
			ArrayList<ProductClass> lpc = new ArrayList<ProductClass>();
			while(rs.next())
			{
				OrderCredentials oc = new OrderCredentials();
				oc.setEmail(rs.getString("email"));
				oc.setPhonenumber(rs.getString("phonenumber"));
				oc.setAddress(rs.getString("address"));
				oc.setTotal(rs.getDouble("total"));
				loc.add(oc);
				ProductClass pc = new ProductClass();
				pc.setBananawafer(rs.getInt("bananawafer"));
				pc.setBhakharvadi(rs.getInt("bhakharvadi"));
				pc.setGathiya(rs.getInt("gathiya"));
				pc.setChanadal(rs.getInt("chanadal"));
				pc.setKhakhra(rs.getInt("khakhra"));
				pc.setMasalapuri(rs.getInt("masalapuri"));
				pc.setMethipuri(rs.getInt("methipuri"));
				pc.setMungdal(rs.getInt("mungdal"));
				pc.setNachos(rs.getInt("nachos"));
				pc.setPickle(rs.getInt("pickle"));
				pc.setPoha(rs.getInt("poha"));
				pc.setPotatowafer(rs.getInt("potatowafer"));
				lpc.add(pc);
			}
			if(loc.isEmpty())
			{
				session.setAttribute("ordernull", true);
				response.sendRedirect("myorder.jsp");
			}
			else
			{
				session.setAttribute("ordernull", false);
				session.setAttribute("loc", loc);
				session.setAttribute("lpc", lpc);
				response.sendRedirect("myorder.jsp");
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
