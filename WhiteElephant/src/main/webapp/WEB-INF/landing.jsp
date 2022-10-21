<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>White Elephant</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/landing.css" />
<style>
.container {
height: 100vh;
background-position: bottom 50px right 100px; 
background-repeat: no-repeat;
background: url('./images/purple.jpg');
background-size: cover;
min-height: 100%;
min-width:100%;
overflow:hidden;
position: relative;
}
</style>
</head>
<body>

	<div class="container">
		<div class="ban">
			<h1>White Elephant</h1>
			<p>Create an anonymous name and share your gift idea!</p>
			<a href="/registering"><button class="btn-left">Register</button></a>
			<a href="/loggingIn"><button class="btn-right">Login</button></a>
		</div>
	</div>


	<div class="banner">
		<div class="clouds">
			<img src="${pageContext.request.contextPath}/images/cloud1.png" style="--i:1;">
			<img src="${pageContext.request.contextPath}/images/cloud2.png" style="--i:2;">
			<img src="${pageContext.request.contextPath}/images/cloud3.png" style="--i:3;">
			<img src="${pageContext.request.contextPath}/images/cloud1.png" style="--i:4;">
			<img src="${pageContext.request.contextPath}/images/cloud5.png" style="--i:5;">
		</div>	</div>

</body>
</html>