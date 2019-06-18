<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="./font-awesome-4.7.0/css/font-awesome.css" />
		<style type="text/css">
			body{
				margin: 0;
				padding: 0;
				background-color: #F1F1F1;
			}
			a{
				text-decoration: none;
			}
			ul{
				list-style: outside none none;
			}
			li{
				display: inline;
			}
			.top{
				height: 90px;
				background-color: #393A44;
			}
			.top-left{
				padding-top: 11px;
				font-size: 28px;
				color: pink;
				float: left;
				font-weight: 100;
			}
			.top-left img{
				vertical-align: middle;
				margin-left: 200px;
				margin-right: 20px;
			}
			.top-middle{
				float: left;
				margin: 15px 0 0 40px;
			}
			.top-middle ul li a{
				color: white;
				font-size: 20px;
				padding: 20px 20px 20px 20px;
				border-radius: 2px;
			}
			.top-middle ul li a:hover{
				background-color: #666666;
			}
			.top-right{
				float: right;
				margin-top: 30px;
				margin-right: 80px;
			}/*头部右边*/
			.top-right a{
				font-size: 20px;
				color: white;
				background-color: #6D89BB;
				padding: 10px 20px 10px 20px;
				border-radius: 3px;
			}/*登录按钮*/
			.top-right a:hover{
				background-color: #778899;
			}/*鼠标移动到登录按钮变色*/
			.content{
				width: 1104px;
				height: 1500px;
				margin: 0 auto;
			}
			.content-place-list li a{
				font-size: 20px;
				padding: 20px 15px 20px 15px;
				color: black;
				display: block;
				float: left;
				border-radius: 10px;
			}
			.content-place-list li a:hover{
				color: white;
				background-color: #494A4B;
			}
			.content-left{
				width: 800px;
				background-color: white;
				float: left;
				border: 1px solid #E6E6E6;
				border-top-left-radius: 5px;
				border-bottom-left-radius: 5px;
			}
			.discover{
				float: left;
				font-size: 30px;
				margin-left: 20px;
				margin-top: 14px;
			}
			.discover-nav ul li{
				float: right;
				margin-top: 20px;
			}
			.discover-nav ul li a{
				font-size: 20px;
				color: #666666;
				padding-right: 10px;
				padding-left: 10px;
			}
			.discover-nav ul li a:hover{
				color: black;
				font-weight: 700;
			}
			.active{
				border-bottom: 3px solid #155FAA;
			}
			.discover-nav{
				overflow: hidden;
			}
			.item-1 .item-2{
				height: 300px;
			}
			.user-imgs{
				font-size: 14px;
				margin: 18px 0 0 40px;
			}
			.user-imgs a{
				color: black;
				float: left;
			}
			.user-imgs a:hover{
				color: #6D89BB;
			}
			.user-imgs img{
				width: 60px;
				height: 60px;
				border-radius: 50%;
			}
			.user-line{
				width: 2px;
				height: 120px;
				background-color: #E5E5E5;
				margin-left: 30px;
				float: left;
			}
			.zanbox{
				float: right;
			}
			#dianzan{
				padding: 6px 10px 6px 10px;
				color: #999999;
				border: 1px solid #E5E5E5;
				border-radius: 4px;
				margin-right: 20px;
			}
			p{
				text-indent: 30px;
				color: #999999;
			}
			.text a{
				color: black;
			}
			.text a:hover{
				color: #6D89BB;
			}
			.re{
				background-color: #FF5511;
				color: white;
				padding: 4px 5px 4px 5px;
				border-radius: 5px;
			}
			.yi{
				background-color: #FFCA3F;
				color: white;
				padding: 4px 5px 4px 5px;
				border-radius: 5px;
			}
			.list-link{
				color: #393A44;
				font-family: "微软雅黑";
				font-size: 20px;
			}
			.list-text a:hover{
				color: #6D89BB;
			}
			.publish-pic img{
				width: 230px;
				height: 150px;
				margin-left: 30px;
			}
			.aw-user-place{
				background-color: #F2F2F2;
				color: #999999;
				border-radius: 3px;
				margin-left: 110px;
			}
			.aw-user-place:hover{
				color: white;
			}
			.aw-user-name{
				color: #666666;
			}
			.awfo-box span{
				color: #999999;
			}
			.awfo-box{
				margin: 20px;
			}
			.aw-user-pic img{
				width: 30px;
				height: 30px;
				border-radius: 50%;
				float: right;
			}
			.awfo-box{
				overflow: hidden;
			}
			
			.content-right{
				width: 300px;
				background: #F5F8F7;
				float: right;
				border: 1px solid #E6E6E6;
				border-top-right-radius: 5px;
				border-bottom-right-radius: 5px;	
			}/*右半部分*/
			.topic-head a{
				float: right;
				color: #393A44;
				margin-right: 30px;
			}/*热门话题-更多*/
			.topic{
				color: #393A44;
			}/*热门话题*/
			.topic-left{
				float: left;
				margin-left: 30px;
				margin-top: 12px;
			}
			.topic-right a{
				padding:3px 7px 3px 7px;
				background-color: #87888C;
				color: white;
				border-radius: 5px;
				margin-left: -22px;
			}
			.topic-right a:hover{
				background-color: #393A44;
			}
			.question-attention{
				float: left;
				margin: -8px 0 0 -22px;
			}
			.topic-right{
				overflow: hidden;
			}
			.1{
				overflow: hidden;
			}
			
			.foot{
				height: 100px;
				background-color: #393A44;
				clear: both;
			}
			.foot ul{
				text-align: center;
				padding-top: 20px;
			}
			.foot ul li a{
				color: #B7B7B7;
				font-size: 25px;
				padding-left: 20px;
				padding-right: 20px;
			}
			.copyright{
				color: #B7B7B7;
				font-size: 15px;
				text-align: center;
			}
 			#lunbo{
 				width: 100%;
 				height: 500px;
 			}
 			.slide-extra { 
 				position: relative; 
 			} 
 			.slide-nav { 
				margin-left: -51px; 
 				position: absolute; 
 				left: 50%; 
 				bottom: 4px; 
 			} 
 			.slide-nav li { 
 				background: #3e3e3e; 
 				border-radius: 50%; 
 				color: #fff; 
 				cursor: pointer; 
 				margin: 0 5px; 
 				overflow: hidden; `	
 				text-align: center; 
 				display: inline-block; 
 				height: 18px; 
 				line-height: 18px; 
 				width: 18px; 
 				padding-left: 7px;
 			} 
 			.slide-nav .slide-item-selected { 
				background: blue; 
 			} 
 			.slide-page a{ 
				background: rgba(0, 0, 0, 0.2); 
 				filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#33000000,endColorstr=#33000000); 
 				color: #fff; 
 				text-align: center; 
 				display: block; 
 				font-family: "simsun"; 
 				font-size: 22px; 
 				width: 28px; 
 				height: 62px; 
 				line-height: 62px; 
 				margin-top: -280px; 
 				position: absolute; 
 				top: 50%; 
 			} 
 			.slide-page a:HOVER { 
 				background: rgba(0, 0, 0, 0.4); 
 				filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#66000000,endColorstr=#66000000); 
 			} 
	 		.slide-next { 
 				left: 100%; 
 				margin-left: -28px;
 			} 
		</style>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.2.js" ></script>
		<script type="text/javascript">
			$(function(){
				$(".discover-nav>ul>li").mouseover(function(){
					$(this).siblings("li").removeClass("active");
					$(this).addClass("active");
				});
			});
		</script>
		<script type="text/javascript">
			var i=1;
			function a(){
				setInterval(changeimage,3000)
			}
			function changeimage(){
				var imgobj=document.getElementById("lunbo")
				i++;
				imgobj.src="img/"+i+".jpg"
				if(i>=4){
					i=0;
				}
			}
			/** 
  			* 向前翻页 
  			*/
		 	function pre() { 
  				var preIndex = currentIndex; 
  				currentIndex = (--currentIndex + length) % length; 
  				play(preIndex, currentIndex); 
 			}; 
 			/** 
  			* 向后翻页 
  			*/
 			function next() { 
  				var preIndex = currentIndex; 
  				currentIndex = ++currentIndex % length; 
  				play(preIndex, currentIndex); 
 			}; 
		</script>
	</head>
	<body  onload="a()">
		<div class="top">
			<div class="top-left"><img src="${pageContext.request.contextPath}/img/logo.png" style="width: 70px;height: 70px;">樱花约拍</div>
			<div class="top-middle">
				<ul>
					<li><a href="#"><i class="fa fa-list-ul"></i> 发现</a></li>
					<li><a href="#"><i class="fa fa-weixin"></i> 交流</a></li>
					<li><a href="#"><i class="fa fa-male"></i> 摄影师</a></li>
					<li><a href="#"><i class="fa fa-female"></i> 模特</a></li>
					<li><a href="#"><i class="fa fa-comment-o"></i> 话题</a></li>
				</ul>
			</div>
			<div class="top-right"><a href="${pageContext.request.contextPath}/user/tologin.do">登录</a></div>
		</div><!--头部结束-->
		<div class="container">
			<div class="slideshow" style="width: 100%; height: 500px;">
				<div class="slide-main">
					<img id="lunbo" src="${pageContext.request.contextPath}/img/1.jpg">
				</div>
				<div class="slide-extra">
					<ul class="slide-nav">
						<li class="slide-item">1</li>
						<li class="slide-item">2</li>
						<li class="slide-item">3</li>
						<li class="slide-item">4</li>
					</ul>
				    <div class="slide-page">
				    	<a class="slide-pre" href="#">&lt</a>
				    	<a class="slide-next" href="#">&gt</a>
				    </div>
				</div>
			</div><!--轮播图结束-->
			<div class="content">
				<div class="content-place">
					<ul class="content-place-list">
						<li><a href="#">全部</a></li>
						<li><a href="#">杭州</a></li>
						<li><a href="#">深圳</a></li>
						<li><a href="#">广州</a></li>
						<li><a href="#">北京</a></li>
						<li><a href="#">上海</a></li>
						<li><a href="#">重庆</a></li>
						<li><a href="#">江苏</a></li>
						<li><a href="#">成都</a></li>
						<li><a href="#">南京</a></li>
						<li><a href="#">武汉</a></li>
						<li><a href="#">天津</a></li>
						<li><a href="#">西安</a></li>
						<li><a href="#">中山</a></li>
						<li><a href="#">济南</a></li>
						<li><a href="#">大连</a></li>
						<li><a href="#">长沙</a></li>
						<li><a href="#">厦门</a></li>
						<li><a href="#">福州</a></li>
						<li><a href="#">太原</a></li>
						<li><a href="#">石家庄</a></li>
						<li><a href="#">黑龙江</a></li>
						<li><a href="#">兰州</a></li>
						<li><a href="#">郑州</a></li>
						<li><a href="#">沈阳</a></li>
						<li><a href="#">长春</a></li>
						<li><a href="#">昆明</a></li>
						<li><a href="#">哈尔滨</a></li>
						<li><a href="#">内蒙古</a></li>
						<li><a href="#">香港</a></li>
						<li><a href="#">澳门</a></li>
						<li><a href="#">保定</a></li>
						<li><a href="#">吉林</a></li>
						<li><a href="#">青岛</a></li>
						<li><a href="#">徐州</a></li>
						<li><a href="#">洛阳</a></li>
					</ul>
				</div><!--城市选择结束-->
				<div class="content-left">
					<div class="discover-nav">
						<div class="discover"><i class="fa fa-list-ul"></i> 发现</div>
						<ul>
							<li><a href="#">等待回复</a></li>
							<li><a href="#">热门</a></li>
							<li><a href="#">推荐</a></li>
							<li class="active"><a href="#">最新</a></li>
						</ul>
					</div><hr>
					<div class="item-1">
						<div class="user-imgs">
							<a href="#"><img src="${pageContext.request.contextPath}/img/用户头像1.jpg"></br>情欲老人</a>
							<div class="user-line"></div>
						</div>
						<div class="question-content">
							<div class="zanbox"><i class="fa fa-thumbs-o-up" id="dianzan">&nbsp;&nbsp;5</i></div>
							<p>
								<span class="text">回复<a href="#">北京</a>14小时前(11人关注)</span>
								<span class="re">热</span>
								<span class="yi">议</span>
							</p>
							<p class="list-text"><a href="#" class="list-link">小清新风格，需要摄影师一枚 欢迎约拍哦</a></p>
							<div>
								<div class="publish-pic"><a href="#"><img src="${pageContext.request.contextPath}/img/用户1图片.JPG"></a></div>
								<div class="awfo-box">
									<a href="#" class="aw-user-place">北京</a>
									<a href="#" class="aw-user-name">凡夜</a>
									<span class="aw-user-reply">回复了问题&nbsp;&nbsp;<i class="fa fa-eye"></i>3774 浏览&nbsp;&nbsp;<i class="fa fa-commenting-o"></i>10 回复</span>
									<span class="aw-user-pic">
										<a href="#"><img src="${pageContext.request.contextPath}/img/评论头像7.jpg"></a>
										<a href="#"><img src="${pageContext.request.contextPath}/img/评论头像7.jpg"></a>
										<a href="#"><img src="${pageContext.request.contextPath}/img/评论头像6.jpg"></a>
										<a href="#"><img src="${pageContext.request.contextPath}/img/评论头像3.jpg"></a>
										<a href="#"><img src="${pageContext.request.contextPath}/img/评论头像7.jpg"></a>
										<a href="#"><img src="${pageContext.request.contextPath}/img/评论头像5.jpg"></a>
										<a href="#"><img src="${pageContext.request.contextPath}/img/评论头像4.jpg"></a>
										<a href="#"><img src="${pageContext.request.contextPath}/img/评论头像7.jpg"></a>
										<a href="#"><img src="${pageContext.request.contextPath}/img/评论头像2.jpg"></a>
										<a href="#"><img src="${pageContext.request.contextPath}/img/评论头像1.jpg"></a>
									</span>
								</div>
							</div>
						</div>
					</div><hr>
					<div class="item-2">
						<div class="user-imgs">
							<a href="#"><img src="${pageContext.request.contextPath}/img/用户头像2.jpg"></br>我是丑八怪</a>
							<div class="user-line"></div>
						</div>
						<div class="question-content">
							<div class="zanbox"><i class="fa fa-thumbs-o-up" id="dianzan">&nbsp;&nbsp;2</i></div>
							<p>
								<span class="text">回复<a href="#">上海</a>两天前(8人关注)</span>
								<span class="re">热</span>
								<span class="yi">议</span>
							</p>
							<p class="list-text"><a href="#" class="list-link">能给我拍得美美的摄影师在哪里呀</a></p>
							<div>
								<div class="publish-pic"><a href="#"><img src="${pageContext.request.contextPath}/img/用户2图片.jpg"></a></div>
								<div class="awfo-box">
									<a href="#" class="aw-user-place">上海</a>
									<a href="#" class="aw-user-name">Issak</a>
									<span class="aw-user-reply">回复了问题&nbsp;&nbsp;<i class="fa fa-eye"></i>1170 浏览&nbsp;&nbsp;<i class="fa fa-commenting-o"></i>7 回复</span>
									<span class="aw-user-pic">
										<a href="#"><img src="${pageContext.request.contextPath}/img/评论头像7.jpg"></a>
										<a href="#"><img src="${pageContext.request.contextPath}/img/评论头像13.jpg"></a>
										<a href="#"><img src="${pageContext.request.contextPath}/img/评论头像12.jpg"></a>
										<a href="#"><img src="${pageContext.request.contextPath}/img/评论头像11.jpg"></a>
										<a href="#"><img src="${pageContext.request.contextPath}/img/评论头像10.jpg"></a>
										<a href="#"><img src="${pageContext.request.contextPath}/img/评论头像9.jpg"></a>
										<a href="#"><img src="${pageContext.request.contextPath}/img/评论头像8.jpg"></a>
									</span>
								</div>
							</div>
						</div>
					</div><hr>
					<div class="item-3">
						<div class="user-imgs">
							<a href="#"><img src="${pageContext.request.contextPath}/img/评论头像13.jpg"></br>欧阳誓言</a>
							<div class="user-line"></div>
						</div>
						<div class="question-content">
							<div class="zanbox"><i class="fa fa-thumbs-o-up" id="dianzan">&nbsp;&nbsp;3</i></div>
							<p>
								<span class="text">回复<a href="#">广州</a>两天前(6人关注)</span>
								<span class="re">热</span>
							</p>
							<p class="list-text"><a href="#" class="list-link">新手互勉约拍，有愿意共同进步的吗？</a></p>
							<p class="question-text">拍摄地点:商量</p>
							<div>
								<div class="publish-pic"><a href="#"><img src="${pageContext.request.contextPath}/img/用户图片3-1.jpg"></a><a href="#"><img src="${pageContext.request.contextPath}/img/用户图片3-2.jpg"></a></div>
								<div class="awfo-box">
									<a href="#" class="aw-user-place">广州</a>
									<a href="#" class="aw-user-name">A~摄影师</a>
									<span class="aw-user-reply">回复了问题&nbsp;&nbsp;<i class="fa fa-eye"></i>1955 浏览&nbsp;&nbsp;<i class="fa fa-commenting-o"></i>5 回复</span>
									<span class="aw-user-pic">
										<a href="#"><img src="${pageContext.request.contextPath}/img/评论头像15.jpg"></a>
										<a href="#"><img src="${pageContext.request.contextPath}/img/评论头像6.jpg"></a>
										<a href="#"><img src="${pageContext.request.contextPath}/img/评论头像7.jpg"></a>
										<a href="#"><img src="${pageContext.request.contextPath}/img/评论头像14.jpg"></a>
										<a href="#"><img src="${pageContext.request.contextPath}/img/评论头像3.jpg"></a>
									</span>
								</div>
							</div>
						</div>
					</div><hr>
					<div class="item-4">
						<div class="user-imgs">
							<a href="#"><img src="${pageContext.request.contextPath}/img/用户头像3.jpg"></br>MarkLee</a>
							<div class="user-line"></div>
						</div>
						<div class="question-content">
							<div class="zanbox"><i class="fa fa-thumbs-o-up" id="dianzan">&nbsp;&nbsp;0</i></div>
							<p>
								<span class="text">发起<a href="#">北京</a>三天前(1人关注)</span>
							</p>
							<p class="list-text"><a href="#" class="list-link">男摄 北京约拍</a></p>
							<p class="question-text">微信 17777837045</p>
							<div>
								<div class="publish-pic"><a href="#"><img src="${pageContext.request.contextPath}/img/用户图片4-1.jpg"></a><a href="#"><img src="${pageContext.request.contextPath}/img/用户图片4-2.jpg"></a></div>
								<div class="awfo-box">
									<a href="#" class="aw-user-place">北京</a>
									<a href="#" class="aw-user-name">MarkLee</a>
									<span class="aw-user-reply">发起了问题&nbsp;&nbsp;<i class="fa fa-eye"></i>23 浏览&nbsp;&nbsp;<i class="fa fa-commenting-o"></i>0 回复</span>
								</div>
							</div>
						</div>
					</div>
					<div class="item-5">
						<div class="user-imgs"></div>
						<div class="question-content"></div>
					</div>
					<div class="item-6">
						<div class="user-imgs"></div>
						<div class="question-content"></div>
					</div>
				</div>
				<div class="content-right">
					<div class="hot-topic">
						<div class="topic-head">
							<a href="#">更多&gt</a>
							<p class="topic">热门话题</p>
						</div>
						<div class="topic-body">
							<dl class="1">
								<dt class="topic-left"><a href="#"><img src="${pageContext.request.contextPath}/img/话题.jpg"></a></dt>
								<dd class="topic-right">
									<p><a href="#">小清新</a></p>
									<p class="question-attention"><b>7</b>个问题<b>11</b>人关注</p>
								</dd>
							</dl>
							<dl>
								<dt class="topic-left"><a href="#"><img src="${pageContext.request.contextPath}/img/话题.jpg"></a></dt>
								<dd class="topic-right">
									<p><a href="#">约拍</a></p>
									<p class="question-attention"><b>16</b>个问题<b>4</b>人关注</p>
								</dd>
							</dl>
							<dl>
								<dt class="topic-left"><a href="#"><img src="${pageContext.request.contextPath}/img/话题.jpg"></a></dt>
								<dd class="topic-right">
									<p><a href="#">上海约拍互免</a></p>
									<p class="question-attention"><b>5</b>个问题<b>3</b>人关注</p>
								</dd>
							</dl>
						</div>
					</div><hr>
					<div class="hot-user">
						<div class="topic-head">
							<a href="#">更多&gt</a>
							<p class="topic">热门用户</p>
						</div>
						<div class="topic-body">
							<dl class="1">
								<dt class="topic-left"><a href="#"><img src="${pageContext.request.contextPath}/img/评论头像1.jpg" style="width: 50px;height: 50px;"></a></dt>
								<dd class="topic-right">
									<p><a href="#">kirito</a></p>
									<p class="question-attention"><b>7</b>个问题<b>16</b>次赞同</p>
								</dd>
							</dl>
							<dl>
								<dt class="topic-left"><a href="#"><img src="${pageContext.request.contextPath}/img/用户头像3.jpg" style="width: 50px;height: 50px;"></a></dt>
								<dd class="topic-right">
									<p><a href="#">MarkLee</a></p>
									<p class="question-attention"><b>5</b>个问题<b>13</b>次赞同</p>
								</dd>
							</dl>
							<dl>
								<dt class="topic-left"><a href="#"><img src="${pageContext.request.contextPath}/img/热门用户头像2.jpg" style="width: 50px;height: 50px;"></a></dt>
								<dd class="topic-right">
									<p><a href="#">白平衡</a></p>
									<p class="question-attention"><b>4</b>个问题<b>11</b>次赞同</p>
								</dd>
							</dl>
							<dl>
								<dt class="topic-left"><a href="#"><img src="${pageContext.request.contextPath}/img/热门用户头像3.jpg" style="width: 50px;height: 50px;"></a></dt>
								<dd class="topic-right">
									<p><a href="#">萝卜</a></p>
									<p class="question-attention"><b>4</b>个问题<b>9</b>次赞同</p>
								</dd>
							</dl>
							<dl>
								<dt class="topic-left"><a href="#"><img src="${pageContext.request.contextPath}/img/热门用户头像4.jpg" style="width: 50px;height: 50px;"></a></dt>
								<dd class="topic-right">
									<p><a href="#">速然</a></p>
									<p class="question-attention"><b>3</b>个问题<b>7</b>次赞同</p>
								</dd>
							</dl>
						</div><hr>
						<div></div>
					</div>
				</div>
			</div>
		</div>
		<div class="foot">
			<ul>
				<li><a href="#">关于我们</a></li>
				<li><a href="#">版权声明</a></li>
				<li><a href="#">意见反馈</a></li>
				<li><a href="#">联系我们</a></li>
			</ul>
			<div class="copyright">©2016-2019 yinghuazhuang.All Rights Reserved.</div>
		</div>
	</body>
</html>
