<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Environment Details</title>
    
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
  <h1>Environment Details</h1>
<form action="<c:url value='/EnvironmentServletCreate'/>" method="post">
	ChemicalID:<input type="text" name="ID" value="${form.chem_id }" required/>
	<span style="color: red; font-weight: 900">${errors.chem_id }</span>
	<br/>
	Location Type：<input type="text" name="l-type" value="${form.env_type }" required/>
	<span style="color: red; font-weight: 900">${errors.env_type }</span>
	<br/>
	Location：<input type="text" name="location" value="${form.location }" required/>
	<span style="color: red; font-weight: 900">${errors.location }</span>
	<br/>
	
	<input type="submit" value="CREATE"/>
</form>
  </body>
</html>
