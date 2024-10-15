package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.giohangbean;
import bo.giohangbo;

/**
 * Servlet implementation class htgioController
 */
@WebServlet("/htgioController")
public class htgioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public htgioController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			// TODO Auto-generated method stub
			HttpSession session = request.getSession();
			giohangbo ghbo = (giohangbo)session.getAttribute("gh");
			if(ghbo!=null) {
			long TongTien = ghbo.TongTien();
			request.setAttribute("TongTien", TongTien);
//			out.print(request.getAttribute("TongTien"));
			ArrayList<giohangbean> dsgio;
			dsgio = ghbo.dsgio();
			session.setAttribute("dsgio", dsgio);
			}
			RequestDispatcher rd  = request.getRequestDispatcher("htgio.jsp");
			rd.forward(request, response);	
		} catch (Exception e) {
			// TODO: handle exception
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
