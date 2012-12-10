<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="/WEB-INF/tags/lib/c.tld" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
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
	<tiles:insertAttribute name="page.header" />
	<div class = "mainBodyContainer">
	   <tiles:insertAttribute name="page.body" />
	</div>
	<tiles:insertAttribute name="page.footer" />
	
	<script type="text/javascript" src="resources/js/jquery/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="resources/js/jquery/plugins/jquery-ui-1.9.1.custom.min.js"></script>
	<script type="text/javascript" src="resources/js/jquery/plugins/chosen.jquery.min.js"></script>
	<script type="text/javascript" src="resources/js/jquery/plugins/jquery.colorbox.min.js"></script>
	<script type="text/javascript" src="resources/js/plugin/Date.js"></script>
	<script type="text/javascript" src="resources/js/plugin/html5shiv-print.js"></script>
	<script type="text/javascript" src="resources/js/booze/util/BoozeUtil.js"></script>
	
	<tiles:useAttribute id="pageJs" name="page.js" classname="java.util.List" />
	<c:forEach items="${pageJs}" var="js">
	   <script type="text/javascript" src="${js}"></script>
	</c:forEach>
</body>
</html>