package fr.humanbooster.fx.poussettes.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.humanbooster.fx.poussettes.service.DemandeDePrixService;
import fr.humanbooster.fx.poussettes.service.impl.CouleurServiceImpl;
import fr.humanbooster.fx.poussettes.service.impl.DemandeDePrixServiceImpl;
import fr.humanbooster.fx.poussettes.service.impl.OptionServiceImpl;
import fr.humanbooster.fx.poussettes.service.impl.PoussetteServiceImpl;

/**
 * Servlet implementation class ResumServlet
 */
@WebServlet("/resum")
public class ResumServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private DemandeDePrixService demandeDePrixService = new DemandeDePrixServiceImpl();

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResumServlet() {
    	new DemandeDePrixServiceImpl();
    	new CouleurServiceImpl();
    	new OptionServiceImpl();
        new PoussetteServiceImpl();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("demande", demandeDePrixService.getlast().toString());
		request.getRequestDispatcher("WEB-INF/resum.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
