<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Let Me BooZE</title>
<link href="resources/css/header.css" rel="stylesheet" type="text/css" />
<link href="resources/css/body_home.css" rel="stylesheet" type="text/css" />
<link href="resources/css/footer.css" rel="stylesheet" type="text/css" />
<link href="resources/css/register.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="resources/js/plugin/jquery-1.7.2.js"></script>
<script src="resources/js/home.js" type="text/javascript" ></script>
<script src="resources/js/select.js" type="text/javascript" ></script>
</head>

<body>
	<div class="outercontainer" align="center">
		<div class="innercontainer">
			<jsp:include page="header.jsp"></jsp:include>
			<div class="bodycontainer">
				<jsp:include page="login.jsp"></jsp:include>
				<jsp:include page="register.jsp"></jsp:include>
				<div class="images" align="center">
					<ul>
						<li class="show">
							<img src="resources/images/bracelets.png" width="1050" height="300"  alt="pic1" />
						</li>
						<li>
							<img src="resources/images/wine.png" width="1050" height="300"  alt="pic2" />
						</li>
						<li>
							<img src="resources/images/wedding.png" width="1050" height="300"  alt="pic3" />
						</li>
						<li>
							<img src="resources/images/necklaces.png" width="1050" height="300"  alt="pic4" />
						</li>
					</ul>
				</div>
				<div class="selectway" align="center">
					<div class="select" style="margin-top:20px;">
						<div id="selectcity" class="selectcity">
							<a href="" id="chngcity">Select City</a>
						</div>
						<div id="selectarea" class="selectarea">
							<a href="" id="chngarea">Select Area</a>
						</div>
						<div id="selectshop" class="selectshop">
							<a href="" id="chngshp">Select Shop</a>
								
						</div>
						<div id="cities" class="scity">
							<ul>
								<li><a href="#" id="bangalore">Bangalore</a></li>
								<li><a href="#">Pune</a></li>
							</ul>
						</div>
						<div id="areas" class="scity">
							<ul>
								<li><a href="#" id="btm">BTM</a></li>
								<li><a href="#">Jayanagar</a></li>
								<li><a href="#">BTM</a></li>
								<li><a href="#">Jayanagar</a></li>
								<li><a href="#">BTM</a></li>
								<li><a href="#">Jayanagar</a></li>
							</ul>
						</div>
						<div id="shops" class="scity">
							<ul>
								<li><a href="#" id="shp1">Shop 1</a></li>
								<li><a href="#">Shop 2</a></li>
								<li><a href="#">Shop 3</a></li>
								<li><a href="#">Shop 4</a></li>
							</ul>
						</div>
						<div id="proceed" class="proceed">
							<a href="">Proceed</a>
						</div>
					</div>
				
					<div class="way">
						<h3 style="margin-top: 0px;"> Way It Work</h3>
						
					</div>
				</div>
			</div>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>
