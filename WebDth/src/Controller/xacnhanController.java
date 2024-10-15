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

import bean.giohangbean;
import bean.khachhangbean;
import bo.ctbo;
import bo.giohangbo;
import bo.hoadonbo;



/**
 * Servlet implementation class xacnhanController
 */
@WebServlet("/xacnhanController")
public class xacnhanController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xacnhanController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//b1 kiem tra xem kh da dang nhap chua
	try {
		HttpSession session = request.getSession();
		khachhangbean kh =(khachhangbean)session.getAttribute("un");
		if(kh==null) { //khach hang chua dang nhap
			request.setAttribute("status", "Vui long dang nhap");

			RequestDispatcher rd  = request.getRequestDispatcher("dthoaiController");
			rd.forward(request, response);
		}else{
			
			giohangbo gh=(giohangbo)session.getAttribute("gh");

			if(gh!=null) { // co hang trong gio

				//Tao 1 hoa don
				hoadonbo hdbo = new hoadonbo();

				hdbo.Them(kh.getMakh());

				long mahd = hdbo.getMaxHD();

				// Duyet gio de luu vao chi tiet hoa don
				ctbo ct = new ctbo();

				for(giohangbean g: gh.ds) 
					ct.Them(g.getMadth(), g.getSoluongmua(), mahd);

				
				// Xoa gio hang
				session.removeAttribute("dsgio");
				session.removeAttribute("gh");
				RequestDispatcher rd  = request.getRequestDispatcher("htgioController");
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
