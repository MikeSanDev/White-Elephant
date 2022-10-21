<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">

<style>
body {
  align-items: center;
  display: flex;
  justify-content: center;
  height: 100vh;
  font-family: 'Georgia', sans-serif;
  background-position: bottom 50px right 100px; 
  background-repeat: no-repeat;
  background: url('./images/ele_group.jpg');
  background-size: cover;
  min-height: 100%;
  min-width:100%;
  overflow:hidden;
  position: relative;
}
.form-group-main{
  background-color: #FAF7F0;
  border-radius: 20px;
  box-sizing: border-box;
  height: auto;
  padding: 30px 30px 0px 30px;
  width: 500px;
  margin: 40px 0px 30px 0px;
  border-radius: 20px;  
  box-shadow: 5px 5px 15px 2px #000000;
  -webkit-transition:  box-shadow .3s ease-out;
  box-shadow: .8px 1px 3px grey;}
.form-group-main:hover{     
  box-shadow: 2px 8px 24px black;
  -webkit-transition:  box-shadow .6s ease-in;
  }
  .form-group-main h1{
  text-align:center;}
.btns {
  margin: 0px 20px 20px 20px;
  display: flex;
  align-items: center;
  justify-content: center;
  line-height: 1;
  text-decoration: none;
  color: #ffffff;
  font-size: 18px;
  border-radius: 20px;
  height: 40px;
  font-weight: bold;
  border: 2px solid #fffefe;
  transition: 0.3s;
  box-shadow: 0px 6px 0px -2px rgba(197, 209, 255, 1);
  background-color: #BCCEF8;
}

.btns:hover {
  box-shadow: 0 0 #ffffff;
  transform: translateY(1px);
}
.btn_space{
  display:flex;
  justify-content:center;
  margin-top:20px;
  }
  .btn_space a{
  padding:15px;} 
    .btn_space button{
  padding:15px;} 
</style>
</head>
<body>
<section>
<div class="form-group-main">
<form:form action="/login" method="post" modelAttribute="newLogin" >

			<h1>Login</h1>				
			<div class="form-group" style="margin-top:20px;">
				<form:label path="email">Email:</form:label>
				<form:input path="email" class="form-control"/>
				<form:errors path="email" style="color:red"></form:errors>
			</div>
			<div class="form-group" style="margin-top:20px;">
				<form:label path="password">Password:</form:label>
				<form:input path="password" type="password" class="form-control"/>
				<form:errors path="password" style="color:red"></form:errors>
			</div>
		
			<div class="btn_space">
				<button type="submit" class="btns" >Login</button>
				<a class="btns" href="/">Cancel</a>
			</div>
			</form:form>
</div>
</section>
</body>
</html>