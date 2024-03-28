<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://www.trkj.com/li/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.oy_p{
		font-size: 14px;
	}
	a{
		text-decoration: none;
		margin: 5px 5px;
		padding: 2px 6px;
		border: 1px solid gray;
		font-size: 12px;
		border-radius:4px;
		cursor:pointer;
	}
	a:hover{
		padding: 3px 7px;
		
	}
	select{
		width:40px;
		margin: 5px 5px;
		padding: 2px 6px;
		border-radius:4px;
	}
	table {
	  border-collapse: collapse;
	  width: 30%;
	}
	td {
	  text-align: center;
	  padding: 5px;
	  border: none;
	}
</style>
</head>
<body>
	<form action="li" method="get">
	    <input type="text" name="name">
	    <input type="hidden" name="curpage" value="${param.curpage}">
	    <input type="hidden" name="pagesize" value="2">
	    <input type="submit" value="查询">
	</form>
	<table border=1>
		<tr>
			<th>id</th>
			<th>产品名</th>
			<th>单价</th> 
		</tr>
		<c:forEach items="${list}" var="p">
			<tr>
				<td>${p.pid}</td>
				<td>${p.name}</td>
				<td>${p.price}</td>
			</tr>
		</c:forEach>
	</table>
	<x:page controller="li" pagesize="2" total="${total}" curpage="${param.curpage}" where="name=${name}"/>
</body>
</html>
