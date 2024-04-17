<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
	</head>
	<link rel="stylesheet" href="../css/Geren.css?v=1"/>
	<link rel="stylesheet" href="../css/Mima.css?v=1"/>
	<script src="../js/jquery-3.5.1.min.js">
	</script>
	<script>
	  function toggleElements() {
	    var element1 = document.getElementById("element1");
	    var element2 = document.getElementById("element2");
	
	    if (element1.style.display === "none") {
	      element1.style.display = "block";
	      element2.style.display = "none";
	    } else {
	      element1.style.display = "none";
	      element2.style.display = "block";
	    }
	  }
	  </script>

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
						<li id="element1" onclick="toggleElements()">修改密码</li>
						<li>账号注销</li>
					</ul>
				</div>
				
				</div>
				
				<div id="a4" >
					<div class="poral">
						<div class="user-card">
							<h2 class="username" value="name">${list.get(0).getUser_name()}</h2>
							<p class="tip">下午好~</p>
							<a id="uid" style="display: none;">${list.get(0).getUser_id() }</a>
							<a id="tupian" style="display: none;">${list.get(0).getImg_url() }</a>
							<a id="sex" style="display: none;">${list.get(0).getUser_sex() }</a>
							
							<a id="xougai">修改个人信息 ></a>
							<script type="text/javascript">
								$(function() {
									$("#xougai").click(function() {
										var name=$(".username").html();
										var tele=$(".tel").html();
										var id=$("#uid").html();
										var tupian=$("#tupian").html();
										var sex=$("#sex").html();
										window.location.href = "Xiugai.jsp?name="+name+"&tele="+tele+"&id="+id+"&tupian="+tupian+"&sex="+sex;
										
									})
								})
							</script>
							
							
							<img src="../img/${list.get(0).getImg_url() }" width="150" height="150" alt="" class="avatar"/>
						</div>
						<div class="user-action">
							<ul class="user-list">
								<li>账号安全:<span class="level">普通</span></li>
								<li>绑定手机:<span class="tel" value="tele" id="tele">${list.get(0).getUser_tele()}</span></li>
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
		<div class="ant-moder" style="display: none;" id="element2">
			<div class="ant-mask"></div>
			<div class="ant-wrap">
				<div class="ant-diaolg" style="width: 450px;">
					<div class="ant-content">
						<div class="ant-header">
							<div class="ant-title">修改密码</div>
						</div>
						
						<div class="ant-body">
							<form action="MiMaServlet" method="post" id="myForm">
								<div class="mi-field" style="margin-top: 0px;margin-bottom: 20px;">
									<div class="mi-field_fild mi-fiesd">
									<input type="password" name="pass" id="password" class="mi-input" placeholder="输入新密码"/>
									</div>
								</div> 
								<input type="text" name="id" value="${list.get(0).getUser_id() }" style="display: none;"/>
								<div class="mi-field" style="margin-bottom: 10px;">
									<div class="mi-field_fild mi-fiesd">
									<input type="password" name="pass2" id="confirmPassword" class="mi-input" placeholder="重复新密码"/>
									</div>
								</div>
								
								<div class="btn-contanin" style="display: flex;margin-top: 50px;">
									<button type="button" class="btn-button button1">取消</button>
									<button type="submit" class="btn-button button2">确定</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
			  <script>
	  	document.getElementById('myForm').addEventListener('submit', function(event) {
		  var password = document.getElementById('password').value;
		  var confirmPassword = document.getElementById('confirmPassword').value;
		  
		  if (password !== confirmPassword) {
		    alert('请输入和第一次一样的密码');
		    event.preventDefault(); // 阻止表单提交
		  }
		});
	  </script>
	</body>
</html>