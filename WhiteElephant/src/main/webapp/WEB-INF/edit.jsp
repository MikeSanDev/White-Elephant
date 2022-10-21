<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<style>
body {
  align-items: center;
  background-color: #98A8F8;
  display: flex;
  justify-content: center;
  height: auto;
  font-family: 'Georgia', sans-serif;
}
.form-group-main{
  background-color: #FAF7F0;
  border-radius: 20px;
  box-sizing: border-box;
  height: auto;
  padding: 20px 20px 20px 20px;
  width: 500px;
  margin: 30px 0px;
  border-radius: 20px;  
  box-shadow: 5px 5px 15px 2px #000000;
  -webkit-transition:  box-shadow .3s ease-out;
   box-shadow: .8px 1px 3px grey;}
  .form-group-main:hover{     
   box-shadow: 2px 8px 24px black;
   -webkit-transition:  box-shadow .6s ease-in;}
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
  width: 130px;
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
justify-content:center;}
.edit_btn {
display: flex;
justify-content: flex-end;
margin-top:10px;}
.edit_title{
text-align:center;
margin-top:20px;}
</style>
</head>
<body>
<section>
<div class="edit_title">
<h1>Edit Your Gift!</h1>

</div>
<div class="form-group-main">
 <form:form action="/gift/edit/${gift.id}" method="post" modelAttribute="gift" >
	<input type="hidden" name="_method" value="put">
	<div class="form-group" style="margin-top:10px;">
		<form:label path="giftName">Gift Idea: </form:label><br/>
		<form:errors path="giftName" style="color:red;" />
		<form:input path="giftName" class="form-control"/>
	</div>

	<div class="form-group" style="margin-top:10px;">
		<form:label path="link">Link to your gift: </form:label><br/>
		<form:errors path="link" style="color:red;" />
		<form:input path="link" class="form-control"/>
	</div>
	
	<div class="form-group" style="margin-top:20px;">
		<form:label path="note">Leave a note: </form:label><br />
		<form:errors path="note" style="color:red;" />
		<form:textarea path="note" type="text" class="form-control"></form:textarea>
	</div>
	<div class="form-group" style="margin-top:20px;">
		Status: 
		<form:select path="status" class="form-select">
			<form:option value="" label=""/>  
			<form:option value="Available for purchase" label="Available for purchase"/>  
	        <form:option value="Already Purchased" label="Already Purchased"/> 
		</form:select>
		<form:errors path="status" style="color:red;" />
	</div>
	
	<div class="form-group edit_btn" style="margin-top:20px;">
		<form:hidden path="participant" />
		<button type="submit" class="btns">Edit</button>
	</div>
</form:form>  

</div>
<div class="btn_space">
<form action="/gift/delete/${gift.id}" method="post">
<input type="hidden" name="_method" value="delete"/>
<button type="submit" class="btns">Delete</button>
</form>
<a class="btns" href="/dashboard">Cancel</a>
</div>
</section>
</body>
</html>