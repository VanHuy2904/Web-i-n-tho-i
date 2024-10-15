<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>Vd CAPTCHA </h3>
	<img src="simpleCaptcha.jpg" />
	<form action="testServlet" method="post">
	<input type="text" name="answer" /><br>
	<input type="submit" value="Submit"></form>
	</center>

</body>
</html>