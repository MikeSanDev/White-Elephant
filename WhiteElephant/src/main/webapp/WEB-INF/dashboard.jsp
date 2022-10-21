<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dashboard</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
<style>.layer1{
background-image: url('./images/layer-wave.svg');}
section .wave {
	position: absolute;
	bottom: 0;
	left:0;
	width:100%;
	height:100%;
	background: url('./images/wave.png');}
</style>

</head>
<body>
<div class="spacer layer1"></div>
<section class="beige section1">

<h1>Hello, ${userName}! 🐘 </h1>
<p>Get started by entering a gift idea! Don't forget to leave a funny message!</p>

<a href="gift/new" class="btns">New Gift</a>

</section>

<section class="lightpurple">
<div>
	<h2>Gift Ideas</h2>
</div>
<table class='table'>
	<thead>
		<tr>
			<th>Gift Idea</th>
			<th>Participant</th>
			<th>Message</th>
			<th>Status</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="eachGift" items="${giftList }">
			<tr>
				<td><a href="/gift/${eachGift.id }"> <c:out value="${eachGift.giftName }"/>
				</a></td>
				<td>
				<em><c:out value="${eachGift.participant.userName}"/></em>
				</td>
				<td>
					<c:out value="${eachGift.note }"/>
				</td>
				<td>
					<p> <c:out value="${eachGift.status }"/></p>
				</td>
			</tr>
		
		</c:forEach>
	</tbody>
</table>
 <div class="waves">
    <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
        <path d="M321.39,56.44c58-10.79,114.16-30.13,172-41.86,82.39-16.72,168.19-17.73,250.45-.39C823.78,31,906.67,72,985.66,92.83c70.05,18.48,146.53,26.09,214.34,3V0H0V27.35A600.21,600.21,0,0,0,321.39,56.44Z" class="shape-fill"></path>
    </svg>
</div> 
</section>

<footer class="purple"> <a href="/logout" class="btn btn-danger footer">Log Out</a> </footer>
</body>
</html>
