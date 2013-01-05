<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="header">
	<div class="left">
		<div class="logo">
			<img class="logo" src="resources/images/LetMeBoozeLogo.png" alt="logo">
		</div>
	</div>
	<div class="right">
		<div class="user">
			Welcome <span>
			<c:choose>
				<c:when test = "${empty user.firstName}">Guest !</c:when>
				<c:otherwise>${user.firstName} !</c:otherwise>
			</c:choose></span>
		</div>
		<div class="login">
			<ul id="log" onclick="loginpg();">
				<li><a href="#">Login</a></li>
			</ul>
		</div>
		<div class="register">
			<ul id="reg" onclick="regnpg();">
				<li><a href="#">Register</a></li>
			</ul>
		</div>
	</div>
</div>