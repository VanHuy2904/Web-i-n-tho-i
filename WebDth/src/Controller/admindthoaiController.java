package Controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


import bean.dienthoaibean;
import bo.dienthoaibo;

/**
 * Servlet implementation class admindthoaiController
 */
@WebServlet("/admindthoaiController")
public class admindthoaiController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admindthoaiController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		try {
//			dienthoaibo dtbo = new dienthoaibo();
//			request.setAttribute("dsdt", dtbo.getdth());
//			String tab = request.getParameter("tab");
//			String mdt = request.getParameter("txtmadth");
//			String tendt = request.getParameter("txttendth");
//			String soluong = request.getParameter("txtsoluong");
//			String gia = request.getParameter("txtgia");
//			String maloai = request.getParameter("txtmaloai");
//			String anh = request.getParameter("txtanh");
//			String soluongdaban = request.getParameter("txtsldb");
//			ArrayList<dienthoaibean> ds = dtbo.getdth();
//			if(request.getParameter("butadd")!=null) {
//				dtbo.themdt(tendt, Long.parseLong(soluong), Long.parseLong(gia), maloai, anh, Long.parseLong(soluongdaban));
//			}
//			else 
//				if(request.getParameter("butupdate")!=null) {
//					dtbo.CapNhap(Long.parseLong(mdt), tendt, Long.parseLong(soluong), maloai, Long.parseLong(gia), anh, Long.parseLong(soluongdaban));
//				}
//				else  { String madt = request.getParameter("mdt"); 
//					if(tab!=null && tab.equals("xoa"))
//						dtbo.Xoa(request.getParameter("mdt"));
//					else {
//						if(tab!=null && tab.equals("chon")) {
//							request.setAttribute("mdt", madt);
////							request.setAttribute("tenloai", lbo.themloai(maloai, tenloai));
//						}
//					}
//
//				}
//			request.setAttribute("dsdt", dtbo.getdth());
//			RequestDispatcher rd =request.getRequestDispatcher("admindthoai.jsp");
//			rd.forward(request, response);
//		} catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//		}	
		
		 DiskFileItemFactory factory = new DiskFileItemFactory();
		 DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
		 ServletFileUpload upload = new ServletFileUpload(fileItemFactory);
		 String dirUrl1 = request.getServletContext().getRealPath("") +  File.separator + "anh";
//		 response.getWriter().println(dirUrl1);
//		 getServletContext().getRequestDispatcher("/admindthoai.jsp").forward(request, response);


		 
		try {
			String nameimg = null;
			dienthoaibo dtbo = new dienthoaibo();
			String tendth = null, maloai =null, bta = null, btu = null, mdt=null;
			long gia = 0, soluong = 0, sldb = 0;
			List<FileItem> fileItems = upload.parseRequest(request);//Lấy về các đối tượng gửi lên
			//duyệt qua các đối tượng gửi lên từ client gồm file và các control
for (FileItem fileItem : fileItems) {
 			 if (!fileItem.isFormField()) {//Nếu ko phải các control=>upfile lên
				// xử lý file
			 nameimg = fileItem.getName();
				if (!nameimg.equals("")) {
			           //Lấy đường dẫn hiện tại, chủ ý xử lý trên dirUrl để có đường dẫn đúng
					String dirUrl = "D:\\BTJVNC\\WebDth\\WebContent\\anh";
					File dir = new File(dirUrl);
					if (!dir.exists()) {//nếu ko có thư mục thì tạo ra
						dir.mkdir();
					}
				           String fileImg = dirUrl + File.separator + nameimg;
				           File file = new File(fileImg);//tạo file
				            try {
				               fileItem.write(file);//lưu file
				              System.out.println("UPLOAD THÀNH CÔNG...!");
				              System.out.println("Đường dẫn lưu file là: "+dirUrl);
				        
				 } catch (Exception e) {
				    e.printStackTrace();
				}
			}
		 }
			else//Neu la control
			{
				
				ArrayList<dienthoaibean> ds = new ArrayList<dienthoaibean>();
				
				String tentk=fileItem.getFieldName();
				if(tentk.equals("txtmadth")) {
					mdt = fileItem.getString();
				}
				if(tentk.equals("txttendth")) {
					tendth = new String(fileItem.getString().getBytes("ISO-8859-1"),"utf-8");
				}
				if(tentk.equals("txtsoluong")) {
					soluong = Long.parseLong(fileItem.getString());
				}
				if(tentk.equals("txtgia")) {
					gia = Long.parseLong(fileItem.getString());
				}
				if(tentk.equals("txtmaloai")) {
					maloai = fileItem.getString();
				}
				if(tentk.equals("txtsldb")) {
					sldb = Long.parseLong(fileItem.getString());
				}
				if(tentk.equals("butadd")) {
					bta = fileItem.getString();
				}
				if(tentk.equals("butupdate")) {
					bta = fileItem.getString();
				}

			}
			}


 		if(bta.equals("add")) {
			dtbo.themdt(tendth, soluong, gia, maloai, nameimg, sldb);
		}

 		else
			if(bta.equals("Update")) {
				dtbo.CapNhap(mdt, tendth, soluong, maloai, gia, nameimg, sldb);
			}
			
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			String tab = request.getParameter("tab");
			  String madt = request.getParameter("mdt"); 
				dienthoaibo dtbo = new dienthoaibo();
			if(tab!=null && tab.equals("xoa"))
				dtbo.Xoa(request.getParameter("mdt"));
			else {
				if(tab!=null && tab.equals("chon")) {
					request.setAttribute("mdt", madt);
				}
			}

		
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		try {
			dienthoaibo dtbo = new dienthoaibo();
			request.setAttribute("dsdt", dtbo.getdth());
			request.getRequestDispatcher("admindthoai.jsp").forward(request, response);

		} catch (Exception e) {
			// TODO: handle exception
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
