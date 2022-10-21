<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>One Gift</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
</head>
<style>
* {
font-family: 'Georgia', sans-serif;

}
.show{  display: flex;
  justify-content: center;
  align-items: center;
  margin-top:100px;
  }
.card {background-color: #FAF7F0;
border-radius: 20px;  
box-shadow: 5px 5px 15px 2px #000000;
  -webkit-transition:  box-shadow .3s ease-out;
     box-shadow: .8px 1px 3px grey;
}

.card:hover{ 
     box-shadow: 2px 8px 24px black;
    -webkit-transition:  box-shadow .6s ease-in;
  }
.card-body h5{
margin-top:25px;}
.card-body p{
margin-bottom:0px;}
.card-body h6{
margin-bottom:25px;}

body {margin :10px; 
padding:10px;
background-color: #98A8F8;
}
.bottom { display: flex;
  justify-content: center;
  align-items: center}
.btns {
	margin: 20px 20px;
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
  box-shadow: 0 0 #BCCEF8;
  transform: translateY(1px);
}


</style>
<body>
<section class="container">
<section class="show">
<div class="card" style="width: 27rem; height:auto;">
 <div class="card-body">
	<h2 class="card-title"><c:out value="${gift.giftName }"/></h2>
	 <p class="card-subtitle mb-2 text-muted"><em>(added by <strong><c:out value="${gift.participant.userName}"/></strong>)</em></p>
	 <h5 class="card-text">Status: <strong> <c:out value="${gift.status }"/></strong></h5>
	
	<h6 class="card-text"><em>Message:  <c:out value="${gift.note }"/></em></h6>
   <p>Link to the gift:</p><a href="${gift.link }" class="card-link"><c:out value="${gift.link }"/></a>
      </div>
</div>

</section>
<section class="bottom">

	<c:if test = "${gift.participant.id==userId}">
   <a class="btns" type="button" href="/gift/edit/${gift.id}">Edit  </a>
</c:if>

<a class="btns"type="button" href="/dashboard">Home</a>
</section>
</section>
</body>
</html>