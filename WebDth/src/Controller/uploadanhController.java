package Controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import javafx.scene.shape.Path;

/**
 * Servlet implementation class uploadanhController
 */
@MultipartConfig
@WebServlet("/uploadanhController")
public class uploadanhController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public uploadanhController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd = request.getRequestDispatcher("admindthoai.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			javax.servlet.http.Part part = request.getPart("txtanh");
			
			String realPath =  request.getServletContext().getRealPath("/anh");
			String filename = Paths.get(part.getSubmittedFileName()).getFileName().toString();
			
			if(!Files.exists(Paths.get(realPath))) {
				Files.createDirectories(Paths.get(realPath));
				part.write(realPath+"/"+filename);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
