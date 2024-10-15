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

import com.sun.org.apache.bcel.internal.generic.LSUB;

import bean.lichsubean;
import bean.loaibean;
import bo.loaibo;
import bo.lsbo;

/**
 * Servlet implementation class lichsuController
 */
@WebServlet("/lichsuController")
public class lichsuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public lichsuController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			response.setCharacterEncoding("utf-8");
			request.setCharacterEncoding("utf-8");
			HttpSession session = request.getSession();
			if(session.getAttribute("un")==null) {
				request.setAttribute("status", "Vui long dang nhap");
				RequestDispatcher rd  = request.getRequestDispatcher("dthoaiController");
				rd.forward(request, response);
			}
			else {
				
			 ArrayList<lichsubean> ds;
				 lsbo lsbo = new lsbo();
				 
				 ds=lsbo.getlichsu();
				 
				 request.setAttribute("dslichsu", ds); 
				 RequestDispatcher rd =
				 request.getRequestDispatcher("lichsumua.jsp"); rd.forward(request, response);
				 }
				 
			
		} catch (Exception e) {
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
