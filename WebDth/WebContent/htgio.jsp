<%@page import="bean.giohangbean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Giỏ Hàng</title>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link href="./css/style.css" rel="stylesheet" type="text/css">
</head>
<style>
#nav li a {
    text-decoration: none;
    color: #333;
    padding: 8px 16px;

}

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
<%-- 
    <nav class="navbar navbar-expand-lg navbar-light bg-primary" >
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

<div class="container mt-5 p-3 rounded cart bg-white">
        <div class="row no-gutters">
            <div class="col-md-8">
                <div class="product-details mr-2">
                    <div class="d-flex flex-row align-items-center"><i class="bi bi-arrow-90deg-left"></i><span><a class = "nav-link" href = "dthoaiController" >Continue Shopping</a></span></div>
                    <hr>
                    
                    <h6 class="mb-0">Shopping cart</h6>
                    <form action = "xoacheckController" method = "post">
                   <%if(session.getAttribute("dsgio")!=null) {

                   	ArrayList<giohangbean> g = (ArrayList<giohangbean>)session.getAttribute("dsgio");
                   	int n = g.size();
                   for(int i =0; i<n; i++){
                   %>
                    <div class="d-flex justify-content-between align-items-center mt-3 p-2 items rounded">
                    
                        <div class="d-flex flex-row">
                        <input type = "checkbox" name = "tdt" value ="<%=g.get(i).getMadth()%>">
                        
                        <img class="rounded" src="anh/<%=g.get(i).getAnh() %>" width="40">
                            <div class="ml-2"><span class="font-weight-bold d-block"><%=g.get(i).getTendth() %></span></div>
                        </div>
                        
                        <div class="d-flex flex-row align-items-center">
                                                <a class = "nav-link" style = "display: inline-block; font-size: 10px; border: 1px solid; width: 20px; height: 20px; padding: 3px; text-align: center; margin-right: 5px" href = "suaController?sl=<%=g.get(i).getSoluongmua()%>&ms=<%=g.get(i).getMadth()%>">+</a>
                        
                        <span class="d-block"><%=g.get(i).getSoluongmua() %></span>
                        <a class = "nav-link" style = "display: inline-block; font-size: 10px; border: 1px solid; width: 20px; height: 20px; padding: 3px; text-align: center; margin-left: 5px" href = "suaController?sol=<%=g.get(i).getSoluongmua()%>&mas=<%=g.get(i).getMadth()%>">-</a>
                        
                        <span class="d-block ml-5 font-weight-bold"><%=g.get(i).getThanhtien() %></span><a href="xoagioController?mdt=<%=g.get(i).getMadth()%>"><i class="bi bi-trash ml-3 text-black-50"></i></a></div>
                    </div>
             <%} %>
              <%} %>
              	<button class = "btn btn-success">Xóa sản phẩm đã chọn</button>
              	
              </form>
                </div>
                	
            </div>
             
              <div class = "ml-5 h-100">
              <%if(request.getAttribute("TongTien")!=null) {%>
            	<h6>Tổng Tiền: <%=request.getAttribute("TongTien")%></h6>
            	<%} else { %>
            	<h6>Tổng Tiền: 0</h6>
            	
            	<%} %>
            	<form action = "xacnhanController" method = "post">
            
            <br>	<button class = "btn btn-success">Xac nhan dat mua</button>
            </form>
            <form action = "xoaallController" method = "post">
             <br>	<button class = "btn btn-success">Xoa tat ca san pham</button>
            </form>
            </div>
            
            
             
            	
        </div>
       
            
     </div>
      
  </body>
  </html>