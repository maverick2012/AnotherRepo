<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Let Me Booze</title>
<link href="resources/css/header.css" rel="stylesheet" type="text/css" />
<link href="resources/css/body_home.css" rel="stylesheet" type="text/css" />
<link href="resources/css/footer.css" rel="stylesheet" type="text/css" />
<link href="resources/css/register.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../resources/js/plugin/jquery-1.7.2.js"></script>
</head>
<body>
<div class="outercontainer" align="center">
		<div class="innercontainer">
			<jsp:include page="header.jsp"></jsp:include>
			<div class="bodycontainer">
				<jsp:include page="login.jsp"></jsp:include>
				<jsp:include page="register.jsp"></jsp:include>
				
				
			</div>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>