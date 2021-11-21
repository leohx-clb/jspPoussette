package fr.humanbooster.fx.poussettes.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.humanbooster.fx.poussettes.service.CouleurService;
import fr.humanbooster.fx.poussettes.service.PoussetteService;
import fr.humanbooster.fx.poussettes.service.impl.CouleurServiceImpl;
import fr.humanbooster.fx.poussettes.service.impl.OptionServiceImpl;
import fr.humanbooster.fx.poussettes.service.impl.PoussetteServiceImpl;

/**
 * Servlet implementation class index
 */
@WebServlet("/index")
public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PoussetteService poussetteService = new PoussetteServiceImpl();
	private CouleurService couleurService = new CouleurServiceImpl();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndexServlet() {
    	new CouleurServiceImpl();
    	new OptionServiceImpl();
        new PoussetteServiceImpl();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("poussettes", poussetteService.recupererPoussettes());
		request.setAttribute("couleurs", couleurService.recupererCouleurs());
		request.getRequestDispatcher("WEB-INF/index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*       test filtre       */
		/*
		String filterNom = request.getParameter("nom");
		String filterCouleur = request.getParameter("couleur");
		String filterroues= request.getParameter("nbRoues");
		
		String param ="";
		int count = 0;
		
		if (filterNom != null && filterNom != "") {
			param += "NOM?="+filterNom;
			count++;
		}
		if (filterCouleur != null && filterCouleur != "COULEUR") {
			if (count>0) {
				param += "&";
			}
			param += "COULEUR?="+filterCouleur;
			count++;
		}
		if (filterroues != null && filterroues != "") {
			if (count>0) {
				param += "&";
			}
			param += "NBROUES?="+filterroues;
			count++;
		}
		
		response.sendRedirect("index"+param);
		*/
	}

}
