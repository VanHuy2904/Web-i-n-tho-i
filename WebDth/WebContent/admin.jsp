<%@page import="bean.xacnhanbean"%>
<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>
<%@page import="dao.dienthoaidao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.loaibo"%>
 

<%@page import="bo.dienthoaibo"%>
<%@page import="bean.loaibean"%>

<%@page import="bean.dienthoaibean"%>

<%@ page language="java" contentType="text/html; utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Xác nhận đơn hàng</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>

<body>
<%-- <nav class="navbar navbar-expand-lg navbar-light bg-primary" >
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
              <a class="nav-link text-white" href="adminloaiController"><small>
				</i>
               Quản lý loại</small></a>
            </li>
            <li  class="nav-item">
              <a class="nav-link text-white " href="admindthoaiController">
              <small>
               	Quản lý điện thoại

                </small> 
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-white" href="adminxacnhanController"><small> Quản lý hàng</small></a>
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
              <a class="nav-link text-white" href="adminxacnhanController"><small>Quản lý đơn hàng</small></a>
               
              
           
            </li>
      <li class="nav-item">
        <li class="nav-item">
              <a class="nav-link text-white" href="admindthoaiController"><small>Quản lý điện thoại</small></a>
               
              
           
            </li>
      
            <li class="nav-item">
              <a class="nav-link text-white" href="adminloaiController"><small>Quản lý loại</small></a>
               
              
           
            </li>
            
    </ul>
    <form class="form-inline my-2 my-lg-0" action = "dthoaiController" method = "post">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name = "txttim">
      <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
    </form>
     <ul class="navbar-nav  mt-2 mt-lg-0 ml-auto">
            <%if(session.getAttribute("ad")!=null){ %>
             <li class="nav-item"> 

<a href="" class = "nav-link  text-white ">
Xin chao: <%=session.getAttribute("ad") %>
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

 <table style = "width: 100%;">
 
<tr>
	<td width= 200px valign="top"> Danh sach</td>
	<table class="table table-hover">
	<% ArrayList<xacnhanbean> dshoadon =(ArrayList<xacnhanbean>)request.getAttribute("dshoadon");
			for(xacnhanbean hoadon: dshoadon){
		%>
		<tr>
	
		<td><%=hoadon.getMakh()%></td>
		<td><%=hoadon.getTendth()%></td>
		<td><%=hoadon.getSoluongmua()%></td>
		<td><%=hoadon.getGia()%></td>
		<td><%=hoadon.getThanhtien()%></td>
		<td><%=hoadon.getNgaymua()%></td>
		<td> <a href = "adminxacnhanController?mact=<%=hoadon.getMacthd()%>&tendth=<%=hoadon.getTendth()%>">Xac nhan </a></td>
		
		
		
		
		</tr>
		
		
		<%} %>
	
	
	</table>
	
	</td>


</table> 

	
	


</body>
</html>