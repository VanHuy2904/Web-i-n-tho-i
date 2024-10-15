<%@page import="bean.dienthoaibean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Quản lý điện thoại</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<body>
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
Un: <input type='text' name='t1' class="form-control" placeholder="Nhap username" class = "form-control w-25"><br>
Pass: <input type='password' name='txtpass' class="form-control"><br>
Ho Ten: <input type='text' name='ht' class="form-control" placeholder="Nhap hoten" class = "form-control w-25"><br>
SDT: <input type='text' name='sdt' class="form-control" placeholder="Nhap SDT" class = "form-control w-25"><br>
Dia Chi: <input type='text' name='dc' class="form-control" placeholder="Nhap dia chi" class = "form-control w-25"><br>
Email: <input type='email' name='email' class="form-control" placeholder="Nhap email" class = "form-control w-25"><br>
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
<%String mdt = (String)request.getAttribute("mdt"); 
if(mdt!=null){
	ArrayList<dienthoaibean> dsdt = (ArrayList<dienthoaibean>)request.getAttribute("dsdt");
	int n= dsdt.size();
	for(int i =0; i<n; i++){
		if(dsdt.get(i).getMadth().equals(mdt)){%>
	<form action = "admindthoaiController" method = "post" enctype= "multipart/form-data">
 Ma Dien thoai: <input name = "txtmadth" type = "text" value = "<%=dsdt.get(i).getMadth()%>" class = "form-control w-25"> <br>
 Ten Dien Thoai: <input name = "txttendth" type = "text" value = "<%=dsdt.get(i).getTendth()%>"> <br>
 So Luong: <input name = "txtsoluong" type = "text" value = "<%=dsdt.get(i).getSoluong()%>"> <br>
 
 Gia: <input name = "txtgia" type = "text" value = "<%=dsdt.get(i).getGia()%>"> <br>
 Ma Loai: <input name = "txtmaloai" type = "text" value = "<%=dsdt.get(i).getMaloai()%>"> <br>
 
 Anh: <input name = "txtanh" type = "file" value = "<%=dsdt.get(i).getAnh()%>" placeholder="Enter image"> <br>
 So luong da ban <input name = "txtsldb" type = "text" value = "<%=dsdt.get(i).getSoluongdaban()%>">
 <input name = "butadd" type = "submit" value = "add">
 <input name = "butupdate" type = "submit" value = "Update">
 </form>
		
	<%}%>
	<%}%>
	<%} else {%>
 <form action = "admindthoaiController" method = "post" enctype= "multipart/form-data" >
 Ma Dien thoai: <input name = "txtmadth" type = "text" class = "form-control w-25"> <br>
 Ten Dien Thoai: <input name = "txttendth" type = "text" class = "form-control w-25"> <br>
 So Luong: <input name = "txtsoluong" type = "text" class = "form-control w-25"> <br>
 Gia: <input name = "txtgia" type = "text" class = "form-control w-25"> <br>
 Ma Loai: <input name = "txtmaloai" type = "text" class = "form-control w-25"> <br>
 Anh: <input name = "txtanh" type = "file" class = "form-control w-25"> <br>
 So luong da ban <input name = "txtsldb" type = "text" class = "form-control w-25"><br>
 
 <input name = "butadd" type = "submit" value = "add">
 <input name = "butupdate" type = "submit" value = "Update">
 </form>
 <%} %>
 <table class = "table table-hover">
 <tr>
 Danh sach điện thoại
 <th>Mã Điện thoại</th>
 <th>Tên Điện thoại</th>
 <th>Số lượng </th>
 <th>Giá
 </th>
 <th>Mã loại</th>
 <th>Anh</th>
 <th>Số lượng đã bán</th>
 <th>Chức năng 1</th>
 <th>Chức năng 2</th>
 </tr>
 <%
 	ArrayList<dienthoaibean> ds = (ArrayList<dienthoaibean>)request.getAttribute("dsdt");
	for(dienthoaibean dt:ds)
	{
 
 %>
 <tr>
 	<td><%=dt.getMadth()%></td>
 	<td><%=dt.getTendth()%></td>
 	<td><%=dt.getSoluong()%></td>
 	 	<td><%=dt.getGia()%></td>
 	<td><%=dt.getMaloai()%></td>
 	<td><%=dt.getAnh() %></td>
 	<td><%=dt.getSoluongdaban() %></td>
 	<td><a href = "admindthoaiController?mdt=<%=dt.getMadth()%>&tab=chon" class = "btn btn-danger">Select</a>
 	<td><a href = "admindthoaiController?mdt=<%=dt.getMadth()%>&tab=xoa" class = "btn btn-success">Delete</a>
 	</tr>
 	
 	<%} %>
</body>
</html>