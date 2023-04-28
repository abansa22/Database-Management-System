<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Read EPO Output</title>
    
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
  <h1>Read EPO Output</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form>
	IndustryID    :<input type="text" name="ID" value="${epo.ID }" disabled/>
	<br/>
	ChemicalName：<input type="text" name="c-name" value="${epo.c-name }" disabled/>
	<br/>
	LocationType	：<input type="text" name="l-type" value="${epo.l-type }" disabled/>
	<br/>
	EPOBranch	：<input type="text" name="branch" value="${epo.branch }" disabled/>
	<br/>
</form>

<button onclick="window.location.href='<c:url value='/jsps/main.jsp'/>'">Continue</button>
</body>
</html>
