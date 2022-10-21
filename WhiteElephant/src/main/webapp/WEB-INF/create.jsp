<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create</title>
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
  padding: 20px 20px 0px 20px;
  width: 500px;
  margin: 20px 0px;
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
.rules h2{
text-align:center;}
</style>
</head>

<body>
<section>
<div class="form-group-main">

<div class="rules">
<h2>Rules for the exchange:</h2>
<p> 1. Name your gift idea and add a link to where to buy it. </p>
<p> 2. $100 gift limit! (gift cards are welcome) </p>
<p> 3. Select the status of the gift, whether you've already bought it or just sharing your idea!</p>
</div >

 <form:form action="/gift/new" method="post" modelAttribute="newGift"  >

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
	
	<div class="form-group btn_space" style="margin-top:20px;">
		<form:hidden path="participant" value="${userId }"/>
		<button type="submit" class="btns">Add</button>
		<a class="btns" href="/dashboard">Cancel</a>
	</div>
</form:form>  

</div>

</section>
</html>