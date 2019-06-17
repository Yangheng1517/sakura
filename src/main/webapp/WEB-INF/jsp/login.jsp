<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>登录｜樱花约拍</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/登录.css" />
	</head>
	<style>
		
			body{
				background:url(../img/timg2.gif) no-repeat ;
				background-size: 100% 750px;
			
				
			}
			.inputText{
				width: 200px;
				height: 30px;
				border-radius: 5px 5px;
				margin-left: 10px;
				background-color: rgba(0,0,0,0.5);
				color: white;
			}
			#line{
				font-size: larger;
				color: black;
				text-indent: 2em;
				padding-top: 5px;
			}
			
			input{
				border:1px;
				}
				
			.dd{
				text-indent: 3em;
				}
				
			#btn{
				text-align: center;
			}
			
			#btn1{
				
				text-align:right;
			}
			
			.b{
				color: black;
				background-color: rgba(0,0,0,0);
				font-size: large;
				text-decoration: none;	
			}
				
			
		
	</style>
	<body>
		<div style="  
			width:400px; 
			height: 300px; 
			border-top: peachpuff solid 1px;
			border-left: peachpuff solid 1px;
			border-right:peachpuff solid 2px;
			border-bottom: peachpuff solid 2px; 
			margin:200px auto; 
			border-radius:10px 10px ;">
			
			<div id="header"></div>
			<div id="line">
				用户登录
				<hr>
			</div>
			<form name="myform" action="${pageContext.request.contextPath}/user/login.do" method="post">
				<table width="100%" height="250px" border="0">
					
					<tbody><tr>
						<td class="dd"><font color="black">用户名</font></td>
						<td><input class="inputText" type="text" name="uname" maxlength="8" /></td>
					</tr>
					
					<tr>
					
						<td class="dd"><font color="black">密&nbsp;&nbsp;码:</font></td>
						<td><input class="inputText" type="password" name="upass" maxlength="15"></td>
					</tr>
					
					<!--<tr>
					
						<td class="dd"><font color="black">性&nbsp;&nbsp;别:</font></td>
						<td><input class="inputText" type="password" name="usex" maxlength="15"></td>
					</tr>
					<tr>
					
						<td class="dd"><font color="black">生&nbsp;&nbsp;日:</font></td>
						<td><input class="inputText" type="password" name="ubirth" maxlength="15"></td>
					</tr>
					-->
					
					<tr>
						<td colspan="2" class="dd"><font color="black"><input type="checkbox" name="check">记住密码</font></td>
					</tr>
						
	
					<tr>
						<td  colspan="2" class="dd"><input type="submit" value="登录" name="check"></td>
					
					</tr>
					
					<tr>
						
						<td colspan="2"><div id="btn"><a href="${pageContext.request.contextPath}/user/toreg.do">注册</a></div></td>
					</tr> 
				</tbody></table>
			</form>
		</div>
		
	</body>
</html>
