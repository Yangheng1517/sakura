<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>用户注册   | 樱花约拍</title>
		<!--css初始化文件-->
		<link  rel="stylesheet" href="${pageContext.request.contextPath}/css/normalize.css"/>
		<!--css头部-->
		<link  rel="stylesheet" href="${pageContext.request.contextPath}/css/注册.css"/>
	</head>
	<style>
		body{
				background:url(../img/timg2.gif) no-repeat ;
				background-size: 100% 750px;
			}
	</style>
	<body>
		<div class="yi"><!--顶部-->
			<div class="yi1"><!--往右移-->
				<a href="首页.html">樱花约拍｜首页｜</a>
				<a class="denglu1"href="${pageContext.request.contextPath}/user/tologin.do">登录｜&nbsp;&nbsp; </a>
				<a class="denglu2" href="${pageContext.request.contextPath}/user/toreg.do">注册</a>	
			</div>
			<div class="yi2">
			<a href="#">樱花庄，绽放！</a>
			</div>
		</div>
		<div class="er">
			<div class="er1">
				<h1 class="er11">用户注册</h1>
			</div>
			<div class="er12">
				<div class="er13">
					<div class="er131">
						<div id="container">
							
							
			<form class="neirong" name="myform" action="${pageContext.request.contextPath}/user/reg.do" method="post" >
				<table border="0" >
					<tr>
						<td class="m">樱花庄</td>
						<td class="n">|绽放!</td>
					</tr>
					<tr>
						<td class="inputTitle" width="40%">用户名:</td>
						<td ><input class="inputText" type="text" name="uname" placeholder="昵称" maxlength="8"/></td>
					</tr>
					<tr>
						<td class="inputTitle">登录密码:</td>
						<td ><input id="pwd" class="inputText" type="password" name="upass" placeholder="请输入密码" maxlength="16" onblur="checkPwd()"/><div id="pwdError" class="errorShow"></div></td>
					</tr>
					<tr>
						<td class="inputTitle">确认密码:</td>
						<td ><input id="repwd" class="inputText" type="password" name="reupass" placeholder="请确认密码" maxlength="16" onblur="checkRePwd()"/><div id="rpPwdError" class="errorShow"></div></td>
					</tr>
					<tr>
						<td class="inputTitle">性别:</td>
						<td ><input id="repwd" class="inputText" type="text" name="usex" placeholder="性别" maxlength="16" onblur="checkRePwd()"/><div id="rpPwdError" class="errorShow"></div></td>
					</tr>
					<tr>
						<td class="inputTitle">年龄</td>
						<td ><input id="repwd" class="inputText" type="text" name="uage" placeholder="年龄" maxlength="16" onblur="checkRePwd()"/><div id="rpPwdError" class="errorShow"></div></td>
					</tr>
					<tr>
						<td colspan="2" style="font-size:medium; text-align: center;"><input type="checkbox" name="chk" />我已阅读并同意《樱花约拍交易条约》</td>
					</tr>
					<tr>
						<td colspan="2"><div class="btn" onclick="submitForm()"><input type="submit" value="立即注册"></div></td>
					</tr>
				</table>
				<div>
					<ul>
					<li class="bz"><a href="#">关于我们｜</a><a href="#">联系我们｜</a><a href="#">帮助中心</a></li>
					</ul>
				</div>
			</form>
		</div>
					</div>
				</div>
				
			</div>
		</div>
	
	</body>
</html>

