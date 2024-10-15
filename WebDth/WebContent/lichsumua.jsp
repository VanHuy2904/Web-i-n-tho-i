<%@page import="bean.giohangbean"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="bean.xacnhanbean"%>
<%@page import="bo.giohangbo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.lichsubean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>

<style>
	body{
		background-color: #ccc;
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
            <li class="nav-item">
              <a class="nav-link text-white" href="htgioController"><small><i class="bi bi-cart3"></i> Giỏ Hàng</small></a>
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

<% ArrayList<lichsubean> ds =(ArrayList<lichsubean>)request.getAttribute("dslichsu"); 
int n = ds.size();
long makh = (long)session.getAttribute("makh");
Locale locale = new Locale("vi", "VN");
		NumberFormat giavn = NumberFormat.getCurrencyInstance(locale);
for(int i = 0; i<n; i++ ){

	lichsubean s =ds.get(i);	%>
	<% if(s.getMakh()==makh){ %>
	<div style = " margin: 15px; height: 200px; background-color: #fff; border-radius: 5px">
	<div style = " padding: 20px; margin-top: 10px;  display: flex; justify-content: space-between;">
	
	<div>
	<img style = "width: 100px; height: 100px"src = "anh/<%=s.getAnh() %>">
	<%=s.gettendth() %>
	x<%=s.getSoLuongMua() %>
	
		</div>			
		<div> <h6 style = "">Giá: <%=giavn.format(s.getGia()) %></h6>
		</div>
	</div>	
		<div style = "display: flex; justify-content: space-between; padding: 0 20px 0 20px ">
		<div>
				<h6>	Ngày đặt: <%=s.getNgayMua() %> </h6>
		</div>		
				<h6 style = "color: red"> Thành Tiền: <%=giavn.format(s.getThanhtien()) %> </h6>
		</div>
		<div style = "float: right; padding-right: 20px; font-weight: bold">
		Trạng thái: 
				<%if(s.istinhtrang()){ %>
				Thành Công
				
				<%}  else {%>
				Đang chờ
				<%} %>
	
	</div>
	</div>
			
				<%} %>
				<% }%> 


</body>
</html>