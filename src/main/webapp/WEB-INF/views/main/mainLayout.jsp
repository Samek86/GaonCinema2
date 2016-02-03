<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
<head> 
	<title>가온시네마</title>
	
	<link rel="shotcut icon" href="./resources/img/favicon.ico">
	<link href="./resources/css/bootstrap.css" rel="stylesheet">
	<link href="./resources/css/bootstrap-theme.css" rel="stylesheet">
	<link href="./resources/css/header.css" rel="stylesheet">


	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="./resources/js/bootstrap.js"></script>
	
</head>
<body>
	<div id="header">
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