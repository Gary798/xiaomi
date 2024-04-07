<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
	</head>
	<link rel="stylesheet" href="../css/Geren.css"/>
	<body>
		<div class="header">
					<div class="header_center">
						<div class="cen_left">
							<a>小米官网</a>
							<span>|</span>
							<a>小米商城</a>
							<span>|</span>
							<a>MIUI</a>
							<span>|</span>
							<a>IoT</a>
							<span>|</span>
							<a>云服务</a>
							<span>|</span>
							<a>天星数科</a>
							<span>|</span>
							<a>有品</a>
							<span>|</span>
							<a>小爱开放平台</a>
							<span>|</span>
							<a>资质证明</a>
							<span>|</span>
							<a>协议规则</a>
							<span>|</span>
							<a>下载app</a>
							<span>|</span>
							<a>Select Location</a>
						</div>
						<div class="cen_right">
							<a>登录</a>
							<span>|</span>
							<a>注册</a>
							<span>|</span>
							<a>消息通知</a>
							<div class="cen_right_box">
								<img src="../img/购物车.png">
								<span>购物车(0)</span>
							</div>
						</div>
					</div>
				</div>
				
		<div class="bread">
		<div class="contion">
			<span><a href="">首页</a></span>
			<span class="sep">/</span>
			<span>个人中心</span>
		</div>
		</div>
		<div id="a1">
			<div id="a2">
				<div id="a3">
				<div id="span">
					<h3 class="title">订单中心</h3>
					<ul class="list">
						<li><a href="">我的订单</a></li>
						<li>我的评论</li>
					</ul>
				</div>
				<div id="span">
					<h3 class="title">个人中心</h3>
					<ul class="list">
						<li>我的个人中心</li>
						<li>我的积分</li>
					</ul>
				</div>
				<div id="span">
					<h3 class="title">账号管理</h3>
					<ul class="list">
						<li>个人信息</li>
						<li>修改密码</li>
						<li>账号注销</li>
					</ul>
				</div>
				
				</div>
				
				<div id="a4" >
					<div class="poral">
						<div class="user-card">
							<h2 class="username">${list.get(0).getUser_name()}</h2>
							<p class="tip">下午好~</p>
							<a href="">修改个人信息 ></a>
							<img src="../img/1.jpg" width="150" height="150" alt="" class="avatar"/>
						</div>
						<div class="user-action">
							<ul class="user-list">
								<li>账号安全:<span class="level">普通</span></li>
								<li>绑定手机:<span class="tel">${list.get(0).getUser_tele()}</span></li>
								<li>绑定邮箱:<span class="tel">未绑定</span></li>
							</ul>
						</div>
					</div>
					
					<div class="poral-sub">
						<ul class="info-list">
						<li><h3>待支付订单:<span class="num">&nbsp;&nbsp;0</span></h3><a href="">查看待支付订单 ></a><img src="../img/2.png"/></li>
						<li><h3>待收货的订单:<span class="num">&nbsp;&nbsp;0</span></h3><a href="">查看待收货订单 ></a><img src="../img/3.png"/></li>
						<li><h3>待评价的商品数:<span class="num">&nbsp;&nbsp;0</span></h3><a href="">查看评价商品 ></a><img src="../img/4.png"/></li>
						<li><h3>喜欢的商品:<span class="num">&nbsp;&nbsp;0</span></h3><a href="">查看喜欢的商品 ></a><img src="../img/5.png"/></li>
						</ul>
					</div>
				</div>

			</div>
		</div>
	</body>
</html>