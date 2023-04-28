<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Read Entity1</title>
    
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
  <h1>Read Entity1</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form action="<c:url value='/IndustryServletRead'/>" method="post">
	<input type="hidden" name="method" value="regist"/>
	IndustryID:<input type="text" name="ID" value="${form.ID }" required/>
	<span style="color: red; font-weight: 900">${errors.ID }</span>
	<br/>
	<!--Industry's Type：<input type="text" name="i-type" value="${form.type }" required/>
	<span style="color: red; font-weight: 900">${errors.type }</span>
	<br/>
	Location：<input type="text" name="location" value="${form.location }" required/>
	<span style="color: red; font-weight: 900">${errors.location }</span> -->
	<br/>
<%-- 	Password：<input type="password" name="password" value="${form.password }"/>
	<span style="color: red; font-weight: 900">${errors.password }</span>
	<br/>
	Email	：<input type="text" name="email" value="${form.email }"/>
	<span style="color: red; font-weight: 900">${errors.email }</span>
	<br/> --%>
	<input type="submit" value="Registered"/>
</form>
  </body>
</html>
