package fr.humanbooster.fx.poussettes.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.humanbooster.fx.poussettes.business.Poussette;
import fr.humanbooster.fx.poussettes.service.DemandeDePrixService;
import fr.humanbooster.fx.poussettes.service.OptionService;
import fr.humanbooster.fx.poussettes.service.PoussetteService;
import fr.humanbooster.fx.poussettes.service.impl.CouleurServiceImpl;
import fr.humanbooster.fx.poussettes.service.impl.DemandeDePrixServiceImpl;
import fr.humanbooster.fx.poussettes.service.impl.OptionServiceImpl;
import fr.humanbooster.fx.poussettes.service.impl.PoussetteServiceImpl;

/**
 * Servlet implementation class DemandeDePrixServlet
 */
@WebServlet("/demandeDePrix")
public class DemandeDePrixServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private DemandeDePrixService demandeDePrixService = new DemandeDePrixServiceImpl();
	private OptionService optionService = new OptionServiceImpl();
	private PoussetteService poussetteService = new PoussetteServiceImpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DemandeDePrixServlet() {
    	new DemandeDePrixServiceImpl();
    	new CouleurServiceImpl();
    	new OptionServiceImpl();
        new PoussetteServiceImpl();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (request.getParameter("ID") != null) {
			
			Poussette poussette = poussetteService.recupererPoussette(Long.parseLong(request.getParameter("ID")));
			request.setAttribute("pousetteSelected", poussette);
			System.out.println(poussette);
		}
		request.setAttribute("poussettes", poussetteService.recupererPoussettes());
		request.setAttribute("options", optionService.recupererOptions());
		request.getRequestDispatcher("WEB-INF/demandeDePrix.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
