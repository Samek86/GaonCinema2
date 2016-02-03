<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head> 
	<title>[mainLayout.jsp]</title>
</head>
<body>
	<div id="header" style="background-color: red;">
		<tiles:insertAttribute name="header"/>
	</div>
	
	<div id="main" style="background-color: green;">
		<tiles:insertDefinition name="${page}"/>
	</div>
	
	<div id="footer" style="background-color: blue;">
		<tiles:insertAttribute name="footer"/>
	</div>
</body>
</html>