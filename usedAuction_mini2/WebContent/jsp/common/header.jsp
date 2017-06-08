<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="myContextPath" value="${pageContext.request.contextPath}" scope="request" />

<c:if test="${not empty sessionScope.user}" >
</c:if> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="${myContextPath}/resources/js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="${myContextPath}/resources/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="${myContextPath}/resources/css/sweetalert.css" />
<script
	src="${myContextPath}/resources/js/sweetalert.min.js"></script>

<title>비트 중고 경매</title>
</head>
<body>
	<div class="container">
		
