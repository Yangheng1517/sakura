<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
	</head>
	<frameset rows="15%,*" frameborder="1">
		<frame src="${pageContext.request.contextPath}/user/toa.do" noresize="noresize"/>
		<frameset cols="15%,*" frameborder="0">
			<frame src="${pageContext.request.contextPath}/user/tob.do" noresize="noresize"/>
		<%-- 	<frame src="${pageContext.request.contextPath}/user.toc.do" name="main" noresize="noresize"/> --%>
			<frameset rows="10%,*">
				<frame src="${pageContext.request.contextPath}/user/tod.do" noresize="noresize"/>
				<frame src="${pageContext.request.contextPath}/user/toc.do" name="main" noresize="noresize"/>
			</frameset>
		</frameset>
	</frameset>>
</html>
