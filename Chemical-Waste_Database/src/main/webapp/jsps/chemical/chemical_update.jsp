<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Update Entity1</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <h1>Update</h1>
<form action="<c:url value='/ChemicalServletUpdate'/>" method="post">
	<input type="hidden" name="method" value="search"/>
	ID:<input type="text" name="ID" value="${form.Id }" />
	<span style="color: red; font-weight: 900">${errors.Id }</span>
	<br/>
	Chemical's Type：<input type="text" name="c-type" value="${form.type }" />
	<span style="color: red; font-weight: 900">${errors.type }</span>
	<br/>
	Name：<input type="text" name="location" value="${form.name }" />
	<span style="color: red; font-weight: 900">${errors.name }</span>
	<br/>
	Quantity：<input type="text" name="quantity" value="${form.quantity }"/>
	<span style="color: red; font-weight: 900">${errors.quantity }</span>
	<br/>
	<input type="submit" value="UPDATE"/>
</form>
  </body>
</html>
