<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Read EPO</title>
    
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
  <h1>Read EPO</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form action="<c:url value='/EPAServletRead'/>" method="post">
	<input type="hidden" name="method" value="regist"/>
	Chemical's name：<input type="text" name="c-name" value="${form.chemName }" required/>
	<span style="color: red; font-weight: 900">${errors.chemName }</span>
	<br/>
<%--	
	IndustryID:<input type="text" name="ID" value="${form.ID }" required/>
	<span style="color: red; font-weight: 900">${errors.ID }</span>
	<br/>
	Location's type：<input type="text" name="l-type" value="${form.l-type }"/>
	<span style="color: red; font-weight: 900">${errors.l-type }</span>
	<br/>
	EPA's Branch: <input type="text" name="branch" value="${form.branch}"/>
	<span style="color: red; font-weight: 900">${errors.branch }</span>
	
 	Password：<input type="password" name="password" value="${form.password }"/>
	<span style="color: red; font-weight: 900">${errors.password }</span>
	<br/>
	Email	：<input type="text" name="email" value="${form.email }"/>
	<span style="color: red; font-weight: 900">${errors.email }</span>
	<br/> --%>
	<input type="submit" value="REGISTERED"/>
</form>
  </body>
</html>
