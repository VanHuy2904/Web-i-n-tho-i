package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.khachhangbo;
import dao.mahoa;
import nl.captcha.Captcha;

/**
 * Servlet implementation class khachhangController
 */
@WebServlet("/khachhangController")
public class khachhangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public khachhangController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			HttpSession session=request.getSession();

			mahoa mh = new mahoa();
			String username = request.getParameter("t1");
			String password = request.getParameter("txtpass");
			String hoten = request.getParameter("ht");
			String email = request.getParameter("email");
			String sdt = request.getParameter("sdt");
			String dc = request.getParameter("dc");
			if (username == "" || password == "") {
				
				RequestDispatcher rd  = request.getRequestDispatcher("dthoaiController");
				rd.forward(request, response);
			}
//			if(username == "" || password="") {
//				request.setAttribute("Status", "Username is Null");
//				RequestDispatcher rd  = request.getRequestDispatcher("dthoaiController");
//				rd.forward(request, response);
//			}
			else {
				khachhangbo kh  = new khachhangbo();
				Captcha captcha = (Captcha) session.getAttribute(Captcha.NAME);
				request.setCharacterEncoding("UTF-8");
				String answer = request.getParameter("answer");
				if(answer==null) {

					RequestDispatcher rd  = request.getRequestDispatcher("dthoaiController");
					rd.forward(request, response);	}	
					else
				if (captcha.isCorrect(answer)) {
					kh.themkh(hoten, email, dc, sdt, username, mh.ecrypt(password));

				} else {

					RequestDispatcher rd  = request.getRequestDispatcher("dthoaiController");
					rd.forward(request, response);				}

				
				
				
					RequestDispatcher rd  = request.getRequestDispatcher("dthoaiController");
					rd.forward(request, response);					
				}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();

		}	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
