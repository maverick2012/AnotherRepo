<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<div id="logpg">
					<form action="/booze/Home" id="loginsubmit" method="post">
						<div class="email">
						<h4>Email ID/Phone #</h4>
					</div>
					<div class="id_field">
						<input maxlength="2048" size="25" value="" title="Email/Phone Number" class="form-login" name="email">
					</div>
					<div class="pswrd">
						<h4>Password</h4>
					</div>
					<div class="pswrd_field">
						<input maxlength="2048" size="25" value="" title="Email/Phone Number" class="form-login" name="password">
					</div>
					<div class="loginbtn">
							<ul id="log" onclick="login();">
								<li><a href="#">Login</a>
								</li>
							</ul>
					</div>
					<div class="frgt ">
						<h4><a href="">Forgot Password?</a></h4>
					</div>
					</form>
					
				</div>
</body>
</html>