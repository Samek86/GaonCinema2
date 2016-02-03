<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<<<<<<< HEAD
<%Object id = session.getAttribute("NowUser");  %>
=======

>>>>>>> b899949bd370a9f052dcdd735d4e6c50513cc4dc
<html>
<head> 
	<title>가온시네마</title>
	
	<link rel="shotcut icon" href="./resources/img/favicon.ico">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	
	<link href="./resources/css/bootstrap.css" rel="stylesheet">
	<link href="./resources/css/bootstrap-select.css" rel="stylesheet">
	<link href="./resources/css/fotorama.css" rel="stylesheet">
	<link href="./resources/css/jquery.datePicker.css" rel="stylesheet">
	<link href="./resources/css/bootstrap-theme.css" rel="stylesheet">
	<link href="./resources/css/header.css" rel="stylesheet">
	<link href="./resources/css/main.css" rel="stylesheet">
	<link href="./resources/css/footer.css" rel="stylesheet">
	

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="./resources/js/bootstrap.js"></script>
	<script src="./resources/js/bootstrap-select.js"></script>
	<script src="./resources/js/fotorama.js"></script>
	<script src="./resources/js/jquery.datePicker.js"></script>
	
</head>
<body>
	<div id="header">
		<tiles:insertAttribute name="header"/>
	</div>
	
	<div id="main">
		<tiles:insertDefinition name="${page}"/>
	</div>
	
	<div id="footer">
		<tiles:insertAttribute name="footer"/>
	</div>
</body>
</html>