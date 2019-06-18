<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/middle.css" />
	</head>

	<body>
		<div class="xuhua">
			<table border="1" cellspacing="0">
				<tr>
					<td>操作</td>
					<td>用户名</td>
					<td>年龄</td>
					<td>性别</td>
					<td>简介</td>
					<td>电话</td>

				</tr>
	
		<c:forEach var="us" items="${li}"> 
	
				<tr>
					<td><a href="${pageContext.request.contextPath}/photo/agree.do?tename=${us.tename}&teage=${us.teage}&tesex=${us.tesex}&teintro=${us.teintro}&tenum=${us.tenum}">同意</a>&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/photo/dis.do?name=${us.tename}">拒绝</a></td>
					<td>${us.tename}</td>
					<td>${us.teage}</td>
					<td>${us.tesex}</td>
					<td>${us.teintro}</td>
					<td>${us.tenum}</td>
				</tr>
				
				
				
		   </c:forEach> 
			</table>
		</div>
	</body>

</html>