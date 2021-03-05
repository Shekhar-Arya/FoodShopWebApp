package ServletHandler;

import java.io.IOException;
import java.text.DecimalFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAOClassHandler.ProductClass;

/**
 * Servlet implementation class BuyServlet
 */
public class BuyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ProductClass pc = new ProductClass();
		int nachos = Integer.parseInt(request.getParameter("nachos"));
		int khakhra = Integer.parseInt(request.getParameter("khakhra"));
		int poha = Integer.parseInt(request.getParameter("poha"));
		int gathiya = Integer.parseInt(request.getParameter("gathiya"));;
		int bhakharvadi = Integer.parseInt(request.getParameter("bhakharvadi"));;
		int chanadal = Integer.parseInt(request.getParameter("chanadal"));;
		int bananawafer = Integer.parseInt(request.getParameter("bananawafer"));;
		int potatowafer = Integer.parseInt(request.getParameter("potatowafer"));;
		int methipuri = Integer.parseInt(request.getParameter("methipuri"));;
		int mungdal = Integer.parseInt(request.getParameter("mungdal"));;
		int pickle = Integer.parseInt(request.getParameter("pickle"));;
		int masalapuri = Integer.parseInt(request.getParameter("masalapuri"));;
		
		pc.setBananawafer(bananawafer);
		pc.setBhakharvadi(bhakharvadi);
		pc.setChanadal(chanadal);
		pc.setGathiya(gathiya);
		pc.setKhakhra(khakhra);
		pc.setMasalapuri(masalapuri);;
		pc.setMethipuri(methipuri);
		pc.setMungdal(mungdal);
		pc.setNachos(nachos);
		pc.setPickle(pickle);
		pc.setPoha(poha);
		pc.setPotatowafer(potatowafer);
		
		HttpSession session = request.getSession();
		double total1 = ((nachos*40)/250.0) + ((khakhra*40)/250.0) + ((bananawafer*40)/250.0) + ((bhakharvadi*40)/250.0) + ((chanadal*40)/250.0)
				+ ((gathiya*40)/250.0) + ((pickle*110)/250.0) + ((masalapuri*40)/250.0) + ((methipuri*40)/250.0) + ((mungdal*40)/250.0) + ((poha*40)/250.0)
				+ ((potatowafer*40)/250.0);
		DecimalFormat df = new DecimalFormat("#.##"); 
		Double total = Double.parseDouble(df.format(total1));
		if(total==0)
		{
			response.sendRedirect("Store.jsp");
		}
		else
		{
			session.setAttribute("total", total);
			session.setAttribute("buyproduct", pc);
			response.sendRedirect("getinfo.jsp");			
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
