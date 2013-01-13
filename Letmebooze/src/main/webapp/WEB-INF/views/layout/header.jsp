<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="header cf">
	<div class="left">
		<div class="logo">
			<img class="logo" src="resources/images/LetMeBoozeLogo.png" alt="logo">
		</div>
	</div>
	<div class="right cf">
		<div class="user right">
			Welcome <span>
			<c:choose>
				<c:when test = "${empty requestScope.user}">Ankur !</c:when>
				<c:otherwise>${user.firstName} !</c:otherwise>
			</c:choose></span>
		</div>
		<div class="headerNav left">
			<ul class = "cf">
				<li><a href="/booze">Home</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
				<li><a href="/booze/contact">Contact Us</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
				<c:choose>
					<c:when test = "${!empty requestScope.user}">
						<li><a href="/booze/myAccount">Account</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
						<li><a href="#" onclick="logout();">Logout</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
					</c:when>
					<c:otherwise>
						<li><a href="/booze/Login">Login</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
						<li><a href="/booze/enroll">Signup</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
					</c:otherwise>
				</c:choose>
			
				
			</ul>
		</div>
	</div>
</div>