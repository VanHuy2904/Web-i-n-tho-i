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
 * Servlet implementation class gioController
 */
@WebServlet("/gioController")
public class gioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public gioController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			HttpSession session = request.getSession();
			
			String mdt= request.getParameter("mdth");
			String tdt= request.getParameter("tdth");

			String gia= request.getParameter("g");
			String anh = request.getParameter("a");
			if(session.getAttribute("un")==null) {
				request.setAttribute("status", "Vui long dang nhap");
				RequestDispatcher rd  = request.getRequestDispatcher("dthoaiController");
				rd.forward(request, response);
			}
			else {
		
			if(mdt!=null && tdt!=null && gia !=null){

				long g = Long.parseLong(gia);

				giohangbo gh = null;
				
				if(session.getAttribute("gh")==null){

					gh = new giohangbo();
					session.setAttribute("gh", gh);
				}

					gh = (giohangbo)session.getAttribute("gh");
					gh.themhang(mdt, tdt, g, 1, anh);
					session.setAttribute("gh", gh);

			}
			}

		
			response.sendRedirect("htgioController");

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
