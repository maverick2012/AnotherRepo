
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="/WEB-INF/tags/lib/c.tld" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title><tiles:insertAttribute name="page.title" ignore="true" /></title>
	
	<!-- Common CSS files goes here. -->
	<link rel="stylesheet" type="text/css" href="resources/css/plugin/jquery.chosen.css">
	<link rel="stylesheet" type="text/css" href="resources/css/booze/common.css">
	<link rel="stylesheet" type="text/css" href="resources/css/booze/reset.css">
	<link rel="stylesheet" type="text/css" href="resources/css/booze/header.css">
	<link rel="stylesheet" type="text/css" href="resources/css/booze/footer.css">
	
	<!-- Page specific css goes here. -->
	<tiles:useAttribute id="pageCss" name="page.css" classname="java.util.List" />
	<c:forEach items="${pageCss}" var="css">
	   <link rel="stylesheet" type="text/css" href="${css}">
	</c:forEach>
</head>
<body>
	<div class = "outerContainer">
		<tiles:insertAttribute name="page.header" />
		<div class = "mainBodyContainer">
		   <tiles:insertAttribute name="page.body" />
		</div>
		<tiles:insertAttribute name="page.footer" />
	</div>
	
	<tiles:useAttribute id="pageJs" name="page.js" classname="java.util.List" />
	<c:forEach items="${pageJs}" var="js">
	   <script type="text/javascript" src="${js}"></script>
	</c:forEach>
</body>
</html>