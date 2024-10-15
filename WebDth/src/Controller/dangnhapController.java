package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.khachhangbean;
import bo.dangnhapbo;
import bo.khachhangbo;
import dao.mahoa;

/**
 * Servlet implementation class dangnhapController
 */
@WebServlet("/dangnhapController")
public class dangnhapController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangnhapController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String username = request.getParameter("t2");
			String password = request.getParameter("txtpass2");
			dangnhapbo dnbo = new dangnhapbo();
			mahoa mh = new mahoa();
			if (username == null || password == null) {
				RequestDispatcher rd  = request.getRequestDispatcher("dthoaiController");
				rd.forward(request, response);
			
			}
			else {
				khachhangbean kh = dnbo.ktdn(username, mh.ecrypt(password));
				if (kh!=null) {
					HttpSession session = request.getSession();
						session.setAttribute("un", kh);
						session.setAttribute("tendn", kh.getHoten());
						session.setAttribute("makh", kh.getMakh());
						
						RequestDispatcher rd  = request.getRequestDispatcher("dthoaiController");
						rd.forward(request, response);
					} else {
						RequestDispatcher rd  = request.getRequestDispatcher("dthoaiController?tb=1");
						rd.forward(request, response);
					}
					
					
					
				}
				
			
			
		} catch (Exception e) {
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
