<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="m" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>我的订单</title>
	</head>
	<link rel="stylesheet" href="../css/Dindan.css?v=1"/>
	<body>
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
			
		<div id="a5">
			<div class="poral-2">
				<div style="margin: 0 48px;">
				
					<div>
						<h1 class="title1">我的订单</h1>
						<div style="height: 60px;">
						<ul class="filter">
							<li class="first active"><a href="javasoript:void(0);">全部订单</a></li>
							<li class><a href="javasoript:void(0);">待支付订单</a></li>
							<li class><a href="javasoript:void(0);">待收货订单</a></li>
						</ul>
					</div>
					</div>
					
					
					<c:forEach items="${list}" var="l">
					<div style="border: 1px solid #ff6700;margin-bottom: 20px">
						<div class="order-sumary">
							<div class="order-status">
								${l.getOr_state() }
							</div>
						</div>
						<ul class="filter2">
							<li class="first active"><span>${l.getOr_time()}</span></li>
							<li><span>${l.getOr_name()}</span></li>
							<li><span>订单号:${l.getOr_id() }</span></li>
							<li><span>在线支付</span></li>
							<div class="col-sub"><p>应付金额:
							<span style="margin-right: 5px;font-size: 28px;line-height: 1;color: #333;">${l.getCar_jg()*l.getCar_count()}</span>元</p></div>
						</ul>
						
						<div>
						<ul class="order-item">
							<li>
								<div class="fiurs"><img class="img-din" src="../img/${l.getImg_url()}"></div>
								<p>${l.getPro_name()}</p>
								<p>${l.getCar_jg()}×${l.getCar_count()}</p>
							</li>
						</ul>
						<div class="order-actions">
							<a href="" class="btn btn-small btn-sasmwy">立即支付</a>
							<a href="" class="btn btn-small btn-sasmwy1" >订单详情</a>
						</div>
						
					</div>
						
					</div>
					</c:forEach>
					
					
					
					</div>
			</div>
		</div>
		</div>
		</div>
	</body>
</html>
	
</body>
</html>