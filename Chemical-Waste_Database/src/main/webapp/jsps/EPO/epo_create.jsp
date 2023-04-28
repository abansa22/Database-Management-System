<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>EPA Create</title>
    
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
  <h1>EPA Create</h1>
<form action="<c:url value='/EPAServletCreate'/>" method="post">
	IndustryID:<input type="text" name="ID" value="${form.Ind_id }" required/>
	<span style="color: red; font-weight: 900">${errors.Ind_id }</span>
	<br/>
	Locations's name：<input type="text" name="c-name" value="${form.EnvType }" required/>
	<span style="color: red; font-weight: 900">${errors.EnvType }</span>
	<br/>
	Chemical's type：<input type="text" name="l-type" value="${form.chemName }"/>
	<span style="color: red; font-weight: 900">${errors.chemName }</span>
	<br/>
	EPA's Branch: <input type="text" name="branch" value="${form.branch}"/>
	<span style="color: red; font-weight: 900">${errors.branch }</span>
	<br/>
	<input type="submit" value="ADD"/>
</form>
  </body>
</html>
