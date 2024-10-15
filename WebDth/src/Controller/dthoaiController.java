package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.dienthoaibean;
import bean.loaibean;
import bo.dienthoaibo;
import bo.loaibo;

/**
 * Servlet implementation class dthoaiController
 */
@WebServlet("/dthoaiController")
public class dthoaiController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dthoaiController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	try {
		String mdt = request.getParameter("mdth");
		String tim = request.getParameter("txttim");
		dienthoaibo dtbo = new dienthoaibo();
		String trang = request.getParameter("trang");
		ArrayList<dienthoaibean> dsln;
		dsln = dtbo.getdthln();
		
		List<dienthoaibean> ds = dtbo.getdth();
		int count = ds.size();

		if(trang!=null) {
			if(ds.size() > (Integer.parseInt(trang))*10 )
		ds = dtbo.getdth().subList((Integer.parseInt(trang)-1)*10, (Integer.parseInt(trang))*10);
			else 		ds = dtbo.getdth().subList((Integer.parseInt(trang)-1)*10, ds.size());

		}
		else {
			ds = ds.subList(0, 10);


		}
//		if(trang!=null) {
//			
//		ds = dtbo.getdthpt(Long.parseLong(trang));
//			
//
//		}
//		else {
//			ds = dtbo.getdth().subList(0, 10);
//
//		}
		
		
		loaibo loaibo = new loaibo();
		ArrayList<loaibean> dsloai;
		if(mdt !=null) {
			ds = dtbo.TimMa(mdt);
			 count = ds.size();

		}
		else 
			if(tim!=null) {
				ds=dtbo.Tim(tim);
				 count = ds.size();

			}
		int endpage = count/10;
		if(count % 10 !=0) endpage++;
		dsloai = loaibo.getloai();
		request.setAttribute("count", count);

		request.setAttribute("dsln", dsln);
		request.setAttribute("dsdth", ds);
		request.setAttribute("dsloai", dsloai);
		request.setAttribute("endpage", endpage);
		RequestDispatcher rd  = request.getRequestDispatcher("trangchu.jsp");
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
