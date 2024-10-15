<%@page import="bean.giohangbean"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="bean.loaibean"%>
<%@page import="bean.dienthoaibean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link href="./css/style.css" rel="stylesheet" type="text/css">
</head>
<style>


#nav li:hover .subnav{
    display: block;
}

.subnav li:hover a {
    background-color: red;
    color: #fff;
}



.subnav li  a{
    color: #333;
    display: block;
    line-height: 22.5px;
    padding: 8px 16px;
    text-decoration: none;
   
    
}
#nav {
    display: inline-block;
    line-height: 40px;
    margin-left: 50px;
    list-style-type: none;
    width: 220px;
   
}

#nav .subnav {
    display: none;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    background-color: #fff;
    position: absolute;
    z-index: 2;

}

.subnav li {
    display: block;
   	width: 220px;   
}

#header{
    
    background-color: #000;
    height: 46px;
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
}

</style>
<body>

  <%ArrayList<giohangbean> h = (ArrayList<giohangbean>)session.getAttribute("dsgio"); %>


  <%--   <nav class="navbar navbar-expand-lg navbar-light bg-primary">
        <a class="navbar-brand" href="dthoaiController" style="margin-right: 200px; color: #fff;"><i class="fa-solid fa-house"></i> Trang chủ</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse d-flex justify-content-between" id="navbarSupportedContent" >
            <form class="form-inline" action = "dthoaiController" method ="post">
                <div class="input-group" style="width: 500px;">
                    <input class  ="form-control w-70" name = "txttim" type="text" placeholder="Search" aria-label="Search">
                    <div class="input-group-append">
                      <span role = "button" class="input-group-text amber lighten-3" id="basic-text1"><i class="bi bi-search text-grey"
                          aria-hidden="true"></i></span>
                    </div>
                  </div>        
                </form>
          <ul class="navbar-nav" >
           <li class="nav-item">
              <a class="nav-link text-white" href="lichsuController"><small>
				<i class="bi bi-card-list"></i>
               Thông tin đơn hàng</small></a>
            </li>
            <li  class="nav-item">
              <a class="nav-link text-white " href="#">
              <small>
                <i class="bi bi-telephone-inbound-fill"></i>

                 Hotline
                <span>0898219444</span></small> 
              </a>
            </li>
            <% if(h!=null) { %>
            <li class="nav-item">
              <a class="nav-link text-white" href="htgioController"><small><i class="bi bi-cart3"></i> Giỏ Hàng <span class="badge bg-warning"><%=h.size()%></span></small></a>
                <%} else { %>
               <a class="nav-link text-white" href="htgioController"><small><i class="bi bi-cart3"></i> Giỏ Hàng </small></a>
                
                <%} %>
           
            </li>
          







  
            <%if(session.getAttribute("un")!=null){ %>
             <li class="nav-item">

<a href="" class = "nav-link  text-white">
Xin chao: <%=session.getAttribute("tendn") %>
</a> </li>
<li class="nav-item text-white">
<a href = "dangxuatController" type="button" class="btn btn-primary">
Dang Xuat
</a>         </li> 
<%} else {%>
<li class="nav-item text-white">
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
Login
</button>      </li>
<li class="nav-item text-white">
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal1">
	Register
</button>  </li>
<%} %>

 
  
          </ul> 
        
         
        </div>
        
       
      </nav> --%>
         <nav class="navbar navbar-expand-lg navbar-light bg-primary">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
    <a class="navbar-brand text-white" href="dthoaiController">Trang chủ</a>
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        <li class="nav-item">
              <a class="nav-link text-white" href="lichsuController"><small>
				<i class="bi bi-card-list"></i>
               Thông tin đơn hàng</small></a>
            </li>
      <li class="nav-item">
          <a class="nav-link text-white " href="#">
              <small>
                <i class="bi bi-telephone-inbound-fill"></i>

                 Hotline
                <span>0898xxxxx</span></small> 
              </a>
      </li>
      <% if(h!=null) { %>
            <li class="nav-item">
              <a class="nav-link text-white" href="htgioController"><small><i class="bi bi-cart3"></i> Giỏ Hàng <span class="badge bg-warning"><%=h.size()%></span></small></a>
                <%} else { %>
               <a class="nav-link text-white" href="htgioController"><small><i class="bi bi-cart3"></i> Giỏ Hàng </small></a>
                
                <%} %>
           
            </li>
            
    </ul>
    <form class="form-inline my-2 my-lg-0" action = "dthoaiController" method = "post">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name = "txttim">
      <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
    </form>
     <ul class="navbar-nav  mt-2 mt-lg-0 ml-auto">
            <%if(session.getAttribute("un")!=null){ %>
             <li class="nav-item"> 

<a href="" class = "nav-link  text-white ">
Xin chao: <%=session.getAttribute("tendn") %>
</a> </li>
 <li class="nav-item text-white"> 
<a href = "dangxuatController" type="button" class="btn btn-primary ">
Dang Xuat
</a>          </li>  
<%} else {%>
 <li class="nav-item text-white"> 
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
Login
</button>      </li> 
 <li class="nav-item text-white"> 
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal1">
	Register
</button>  </li>
<%} %>
</ul>
  </div>
</nav>
      <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Login</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form method = "POST" action = "dangnhapController">
    <div class="form-group" style = "width: 100%;">
Un: <input type='text' name='t2' class="form-control" placeholder="Nhap username"><br>
Pass: <input type='password' name='txtpass2' class="form-control"><br>
 <img src = "simpleCaptcha.jpg">
	<input type="text" name="answer" /><br>
      <div class="modal-footer">
        <input type="submit" name="b1" class="btn btn-primary" value="login"> <br>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
      </div>
      </form>
      </div>
    </div>
  </div>
</div>
      
      
       <div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Register</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form method = "POST" action = "khachhangController">
    <div class="form-group" style = "width: 100%;">
Un: <input type='text' name='t1' class="form-control" placeholder="Nhap username"><br>
Pass: <input type='password' name='txtpass' class="form-control"><br>
Ho Ten: <input type='text' name='ht' class="form-control" placeholder="Nhap hoten"><br>
SDT: <input type='text' name='sdt' class="form-control" placeholder="Nhap SDT"><br>
Dia Chi: <input type='text' name='dc' class="form-control" placeholder="Nhap dia chi"><br>
Email: <input type='email' name='email' class="form-control" placeholder="Nhap email"><br>
<img src = "simpleCaptcha.jpg">
	<input type="text" name="answer" /><br>


      <div class="modal-footer">
             <input type="submit" name="b1" class="btn btn-primary" value="Register"> 
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
      </div>
      </form>
      </div>
    </div>
  </div>
</div>
      <div style = "background-color: #fff; height: 40px">
      	<div> 
      	
      	<ul id="nav">
                <li> 
                <div style = "background-color: red;">
                    <a href="" style="color: #fff; padding: 8px 16px; text-decoration: none"> <i class="bi bi-list"></i> DANH MỤC SẢN PHẨM <i class="ti_down ti-angle-down">

                    </i>
                    </a>
                    </div>
                    
                    <ul class="subnav">
                     <% ArrayList<loaibean> dsloai = (ArrayList<loaibean>)request.getAttribute("dsloai");
            	for(loaibean ds: dsloai) {%>
                        <li><a href="dthoaiController?mdth=<%=ds.getMaloai()%>">	<%=	ds.getTenloai() %>          </a></li>
             
                        <%} %>
                    </ul>
                </li>
            </ul></div>
      </div>
    
      
        <% ArrayList<dienthoaibean> ds = (ArrayList<dienthoaibean>)request.getAttribute("tt");
        Locale locale = new Locale("vi", "VN");
     		NumberFormat giavn = NumberFormat.getCurrencyInstance(locale);
			int n = ds.size();
			for(int i=0; i<n; i++){ %>
			<div style = "background-color: #fff; margin-top: 20px; margin-left: 150px; display: inline-flex; border-radius: 5px;  overflow: hidden; width: 60% ">
			
			<div style = "padding: 15px 0 15px 15px;" >
			    <img style = "height: 414px; width: 414px; " class = "" src="anh/<%=ds.get(i).getAnh() %>" alt="">
			</div>
			<div style = "padding: 15px 20px 15px 0px; ">
				<h2><%=ds.get(i).getTendth() %></h2>
			<span class="badge badge-success">Còn hàng</span>
				<p style = "font-size: 14px; padding: 15px 15px 0 0; margin: 0 ">Thương hiệu: <%=ds.get(i).getMaloai() %></p>
				<p class = "gia-giam m-0 pt-2">Giá: <%=giavn.format(ds.get(i).getGia() )%></p>
				<p style = "font-size: 14px; padding: 15px 15px 0 0; margin: 0">Màu sắc: </p>
				<p style = "font-size: 14px; padding: 15px 15px 0 0; mrrgin: 0">kích thước: </p>
				<label>128GB</label>
				<br><a href="gioController?mdth=<%=ds.get(i).getMadth()%>&tdth=<%=ds.get(i).getTendth()%>&g=<%=ds.get(i).getGia() %>&a=<%=ds.get(i).getAnh() %>" class = "text-white text-decoration-none" ><button type="button" class="btn btn-success w-100">THÊM VÀO GIỎ <br>
				<small>Giao hàng tận nơi hoặc nhận tại cửa hàng</small>
				</button></a>
	
			</div>
		
	        </div>
	       
			<% }
        %>
   <div style = "background-color: #fff; display: inline-block; margin-left: 15px; border: 1px solid #ccc; ">
   	<div style = "padding: 15px">
	        	<div style="background-color: green; padding:15px; border-top-left-radius: 5px;border-top-right-radius: 5px; ">
	        		<h6 style = "margin: 0; color: #fff">Cam kết bán hàng</h6>
				</div>
				
			<div style = "border: 1px solid #ccc;    overflow: hidden">
				
				<ul style = "list-style: none; padding: 10px;">
					<li	style = " padding-top:5px"> <img style = "width: 25px; height: 25px"alt="" src="https://file.hstatic.net/200000713019/file/policy_header_image_2_cb4464b7e9af47fb83942bf7e20548ec.png">
				<span>Hàng chính hãng. Nguồn gốc rõ ràng</span></li>
					<li	style = " padding-top:5px"> <img style = "width: 25px; height: 25px" alt="" src="https://file.hstatic.net/200000713019/file/policy_header_image_3_4d4c94de9c514e37ae4414e4de773c06.png">
					<span>Tặng máy nếu phát hiện máy sửa chữa</span></li>
					<li	style = " padding-top:5px"> <img style = "width: 25px; height: 25px" alt="" src="https://file.hstatic.net/200000713019/file/shipped_10ad7e72d69a4ab592eed20122801f83.png">
					<span>Giao hàng ngay (nội thành Huế)</span></li>
					<li	style = " padding-top:5px"> <img style = "width: 25px; height: 25px" alt="" src="https://file.hstatic.net/200000713019/file/shipped_10ad7e72d69a4ab592eed20122801f83.png">
					<span>Tặng máy nếu phát hiện máy sửa chữa</span></li>
				</ul>
			
				
		</div>
			</div>
			</div>
       
</body>
</html>