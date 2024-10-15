<%@page import="bean.giohangbean"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.tomcat.dbcp.pool2.SwallowedExceptionListener"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="com.sun.xml.internal.bind.Locatable"%>
<%@page import="bean.loaibean"%>
<%@page import="bean.dienthoaibean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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



.subnav li a{
    color: #000;
    display: block;
    line-height: 22.5px;
   	padding: 8px 16px;
   	text-decoration: none
    
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
<%if(request.getAttribute("status")!=null) { %>
<%-- <div class="alert alert-warning alert-dismissible fade show w-25 " role="alert" style = "position: absolute; z-index: 1; right: 50%; left: 50%; transform: translate(-50%,0)">
  <%=request.getAttribute("status") %>
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div> --%>

<div class="alert alert-warning alert-dismissible fade show w-25" tabindex="-1" role="alert" aria-labelledby="mySmallModalLabel" aria-hidden="true" style = "position: absolute; z-index: 1; right: 50%; left: 50%; transform: translate(-50%,0)">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
  <div class="modal-dialog modal-sm">
   <%=request.getAttribute("status") %>
  </div>
</div>
<%} %>
  <%ArrayList<giohangbean> h = (ArrayList<giohangbean>)session.getAttribute("dsgio"); %>
<%-- 
    <nav class="navbar navbar-expand-lg navbar-light bg-primary" >
        <a class="navbar-brand" href="dthoaiController" style="margin-right: 200px; color: #fff;"><i class="fa-solid fa-house"></i> Trang chủ</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse d-flex justify-content-between" id="navbarSupportedContent" >
            <form class="form-inline" action = "dthoaiController" method ="post">
                <div class="input-group">
                    <input class  ="form-control" name = "txttim" type="text" placeholder="Search" aria-label="Search">
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
        
       
      </nav>  --%>
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
     
      <div style = "background-color: #fff; height: 40px; display: flex; ">
      	<div> 
      	
      	<ul id="nav">
                <li> 
                <div style = "background-color: red;">
                    <a href="" style = "color: #fff; padding: 8px 16px; text-decoration: none"> <i class="bi bi-list"></i> DANH MỤC SẢN PHẨM <i class="ti_down ti-angle-down">

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
            <div style = "padding: 8px 16px; width: 100%; ">
            <marquee direction="right"><p style = "color: red">Chuyên cung cấp các loại điện thoại Iphone, Samsung, Oppo, Nokia	... toàn quốc</p></marquee>
            </div>
      </div>
      <div style="display: flex; align-items; width: 100%">
       
    
        <div id="carouselExampleIndicators" class="carousel slide w-100 ml-5 mr-5 mt-2" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="https://file.hstatic.net/200000713019/file/banner-slider-1_f3403e9808b6498da3665d93c7cf734f_1024x1024.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="https://file.hstatic.net/200000713019/file/slider-2_6a18a4f60f714fce97173e73e2f9c6a8_1024x1024.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="https://file.hstatic.net/200000713019/file/banner-slider-1_f3403e9808b6498da3665d93c7cf734f_1024x1024.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
         
      </div>
      			 <div class= "banner">
      			  <div style = "padding: 15px 15px 0 15px;">
          <h3>Top sản phẩm bán chạy</h3>
        </div>
      		        <div class = "ds">
      
       <% ArrayList<dienthoaibean> dsln = (ArrayList<dienthoaibean>)request.getAttribute("dsln");
       
		int m = dsln.size();
		for(int i=0; i<6; i++){ %>
		            <div class = "item">
		                <div class = "b">
		                    <a href="thongtinController?tdt=<%=dsln.get(i).getTendth()%>"> <img class = "anh2"  src="anh/<%= dsln.get(i).getAnh() %>" alt=""></a>
		                   
		                </div>
		        
		                <div class="ct">    <a href="#" style = "font-weight: 13px"><%=dsln.get(i).getTendth() %></a></div>
		            </div>
		           
		        
		<%}
		%>
				        </div>
		
			        </div>
	
  
        
       

        
      
      <div class = "product-container">


        <div class = "product-ct">
        <div class = "ct-dt d-flex justify-content-between">
          <h3>Danh sách điện thoại</h3>
 
        </div>
        <div class="product-list">
        <% List<dienthoaibean> ds = (List<dienthoaibean>)request.getAttribute("dsdth");
        Locale locale = new Locale("vi", "VN");
		NumberFormat giavn = NumberFormat.getCurrencyInstance(locale);
        if(ds.size()>0){	
        int n = ds.size();
        
        	for(int i=0; i<n; i++){
        %>
         <div class="product">
         
            <a href="thongtinController?tdt=<%=ds.get(i).getTendth()%>"> <img class = "anh-product" src="anh/<%=ds.get(i).getAnh() %>" alt=""></a>
            <div class="ct-pro">
             <a class = "ct" href="thongtinController?tdt=<%=ds.get(i).getTendth() %>"><%=ds.get(i).getTendth() %></a>
            </div>
            <div class="gia">
               <p class = "gia-giam">Giá: <%=giavn.format(ds.get(i).getGia() )%></p>
               
            </div>
          </div>
        <%} %>
        <%} else { %>
        	
        <div class = "ct-dt">
          <h5>Không tìm thấy kết quả</h5>
        </div>
         <%} %>
        </div>
        </div>
        <div style = "text-align: center">
          <% int endpage = (int)request.getAttribute("endpage");
          
   for(int i=1; i<=endpage; i++){ %>
	<a href ="dthoaiController?trang=<%=i%>" class = "btn btn-light"><%=i %></a>
<%} %> 
</div>
      </div>


  <%--  <% int endpage = (int)request.getAttribute("endpage");
   for(int i=1; i<=endpage; i++){ %>
	<a href ="dthoaiController?trang=<%=i%>"><%=i %></a>

<%} %> --%>
      <!-- Footer -->
      <footer class="bg-dark text-center text-white mt-4">
        <!-- Grid container -->
        <div class="container p-4">
          <!-- Section: Social media -->
          <section class="mb-4">
            <!-- Facebook -->
            <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
              ><i class="fab fa-facebook-f"></i
            ></a>
      
            <!-- Twitter -->
            <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
              ><i class="fab fa-twitter"></i
            ></a>
      
            <!-- Google -->
            <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
              ><i class="fab fa-google"></i
            ></a>
      
            <!-- Instagram -->
            <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
              ><i class="fab fa-instagram"></i
            ></a>
      
            <!-- Linkedin -->
            <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
              ><i class="fab fa-linkedin-in"></i
            ></a>
      
            <!-- Github -->
            <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
              ><i class="fab fa-github"></i
            ></a>
          </section>
          <!-- Section: Social media -->
      
          <!-- Section: Form -->
          <section class="">
            <form action="">
              <!--Grid row-->
              <div class="row d-flex justify-content-center">
                <!--Grid column-->
                <div class="col-auto">
                  <p class="pt-2">
                    <strong>Đăng ký nhận tin</strong>
                  </p>
                </div>
                <!--Grid column-->
      
                <!--Grid column-->
                <div class="col-md-5 col-12">
                  <!-- Email input -->
                  <div class="form-outline form-white mb-4">
                    <input type="email" id="form5Example21" class="form-control" />
                    <label class="form-label" for="form5Example21">Email address</label>
                  </div>
                </div>
                <!--Grid column-->
      
                <!--Grid column-->
                <div class="col-auto">
                  <!-- Submit button -->
                  <button type="submit" class="btn btn-outline-light mb-4">
                    Subscribe
                  </button>
                </div>
                <!--Grid column-->
              </div>
              <!--Grid row-->
            </form>
          </section>
          <!-- Section: Form -->
      
          <!-- Section: Text -->
          <section class="mb-4">
            <p>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt distinctio earum
              repellat quaerat voluptatibus placeat nam, commodi optio pariatur est quia magnam
              eum harum corrupti dicta, aliquam sequi voluptate quas.
            </p>
          </section>
          <!-- Section: Text -->
      
          <!-- Section: Links -->
          <section class="">
            <!--Grid row-->
            <div class="row">
              <!--Grid column-->
              <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                <h5 class="text-uppercase">Chính sách</h5>
      
                <ul class="list-unstyled mb-0" type = "circle">
                  <li>
                    <a href="#!" class="text-white">Chính sách bảo hành</a>
                  </li>
                  <li>
                    <a href="#!" class="text-white">Tra cứu bảo hành</a>
                  </li>
                  <li>
                    <a href="#!" class="text-white">Trả góp online</a>
                  </li>
                  <li>
                    <a href="#!" class="text-white">Hướng dẫn thiết lập</a>
                  </li>
                </ul>
              </div>
              <!--Grid column-->
      
              <!--Grid column-->
              <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                <h5 class="text-uppercase">Links</h5>
      
                <ul class="list-unstyled mb-0">
                  <li>
                    <a href="#!" class="text-white">Tìm kiếm</a>
                  </li>
                  <li>
                    <a href="#!" class="text-white">Giới thiệu</a>
                  </li>
                  <li>
                    <a href="#!" class="text-white">Chính sách đổi trả</a>
                  </li>
                  <li>
                    <a href="#!" class="text-white">Chính sách bảo mật</a>
                  </li>
                </ul>
              </div>
              <!--Grid column-->
      
              <!--Grid column-->
              <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                <h5 class="text-uppercase">Địa chỉ</h5>
      
                <ul class="list-unstyled mb-0">
                  <li>
                    <a href="#!" class="text-white">Cơ sở 1: xxxx</a>
                  </li>
                  <li>
                    <a href="#!" class="text-white">Cơ sở 2: xxxx</a>
                  </li>
                 
                </ul>
              </div>
              <!--Grid column-->
      
              <!--Grid column-->
              <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                <h5 class="text-uppercase">Hỗ trợ</h5>
      
                <ul class="list-unstyled mb-0">
                  <li>
                    <a href="#!" class="text-white">Hotline: xxxxx</a>
                  </li>
                  <li>
                    <a href="#!" class="text-white">Email: xxxxx</a>
                  </li>
                  <li>
                    <a href="#!" class="text-white">fb: xxxxx</a>
                  </li>
                 
                </ul>
              </div>
              <!--Grid column-->
            </div>
            <!--Grid row-->
          </section>
          <!-- Section: Links -->
        </div>
        <!-- Grid container -->
      
        <!-- Copyright -->
        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
          © 2020 Copyright:
          <a class="text-white" href="https://mdbootstrap.com/">MDBootstrap.com</a>
        </div>
        <!-- Copyright -->
      </footer>
      <!-- Footer -->
      
   
      
</body>
</html>
