<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="">
    
    <title>body</title>
    
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
    <h1>Welcome to Donation</h1>
    <br>
    <a href="<c:url value='/findAll'/>" target="body">Please list all the user in the table</a>&nbsp;&nbsp;
    <br>
 	<a href="<c:url value='/findBiggerAvgSaleView'/>" target="body">Please list all sales who total sale amount more than average in order table</a>&nbsp;&nbsp;
 	<br>
 	<a href="<c:url value='/findAugustSalesView'/>" target="body">Please list all Sales for August</a>&nbsp;&nbsp;
 	<br>
 	<a href="<c:url value='/findEmployeePositionView'/>" target="body">View Employee poisiton</a>&nbsp;&nbsp;
 	<br>
 	<a href="<c:url value='/findGetItemCount'/>" target="body">View the number of items</a>&nbsp;&nbsp;
 	<br>
 	<a href="<c:url value='/findMinTotalView'/>" target="body">View the Minimum total view</a>&nbsp;&nbsp;
 	<br>
 	<a href="<c:url value='/findTotalOrderView'/>" target="body">View the total Order status placed in recent months</a>&nbsp;&nbsp;
 	<br>
 	<a href="<c:url value='/findSalesEmployeeView'/>" target="body">View the names of employee working for Sales Department</a>&nbsp;&nbsp;
 	<br>
 	<br>
  </body>
</html>