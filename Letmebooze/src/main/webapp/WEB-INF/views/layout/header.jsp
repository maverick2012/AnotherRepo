    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>  
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
 <div class="header">
				<div class="left_header">
					<div class="logo">
						<img class="logo" src="resources/images/LetMeBoozeLogo.png" alt="logo">
					</div>
				</div>
				<div class="right_header">
					<div class="user" onclick="ll();">
						Welcome<span>${user.firstName}</span>
					</div>
					<div class="login">
							<ul id="log" onclick="loginpg();">
								<li><a href="#">Login</a>
									
								</li>
							</ul>
					</div>
					<div class="register">
							<ul id="reg" onclick="regnpg();">
								<li><a href="#">Register</a>
									
								</li>
							</ul>
					</div>
				</div>
			</div>
</body>
</html>