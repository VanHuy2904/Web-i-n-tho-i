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

import bo.giohangbo;

/**
 * Servlet implementation class xoacheckController
 */
@WebServlet("/xoacheckController")
public class xoacheckController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xoacheckController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String[] d = request.getParameterValues("tdt");

		if(d!=null){
		giohangbo g= new giohangbo();
		HttpSession session = request.getSession();
		g=(giohangbo)session.getAttribute("gh");

		for(int i = 0 ; i<d.length; i++){	
			int sh=g.ds.size();
			for(int j=0; j<sh; j++){
				if(g.ds.get(j).getMadth().equals(d[i])){
			g.ds.remove(j);
			break;
		}
			}
			
	}

		RequestDispatcher rd  = request.getRequestDispatcher("htgioController");
		rd.forward(request, response);	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
