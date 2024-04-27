<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="m" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="z" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>我的订单</title>
	</head>
	<link rel="stylesheet" href="../css/Dindan.css?v=1"/>
	<script src="../js/jquery-3.5.1.min.js"></script>
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
			
		<div id="a5" style="height: 800px">
			<div class="poral-2">
				<div style="margin: 0 48px;">
				
					<div>
						<h1 class="title1">我的订单</h1>
						<div style="height: 60px;">
						<ul class="filter" id="filter">
							<li>全部订单</li>
							<li>待支付订单</li>
							<li>待收货订单</li>
						</ul>
					</div>
					</div>
				
				
					
					<!-- 所有订单 -->
					<div class="box" id="box1">

				<c:forEach items="${list}" var="l">
					<div style="border: 1px solid #ff6700;margin-bottom: 20px" class="ui">
						<div class="order-sumary">
							<div class="order-status">
								${l.order.or_state}
							</div>
						</div>
					
						<ul class="filter2">
							<li class="first active"><span>${l.order.or_time}</span></li>
							<li><span>${l.order.user_name}</span></li>
							<li>订单号:<span class="din">${l.order.or_id}</span></li>
							<li><span>在线支付</span></li>
							
							<m:forEach items="${l.details}" var="d" varStatus="a">
							<m:if test="${a.index==0 }">
							
							<p style="float: right;">应付金额:
							
							<span class="sub" style="margin-right: 5px;font-size: 28px;line-height: 1;color: #333;">${d.car_zon} </span>元
							
							</p></m:if>
							</m:forEach>

						</ul>
						

						<div>
							<m:forEach items="${l.details}" var="d" >
						
							<ul class="order-item">
							<li>
								<div class="fiurs"><img class="img-din" src="../img/${d.img_url}"></div>
								<p>${d.pro_name}</p>
								<p class="sood">${d.car_jg}×${d.car_count}</p>
							
						</li>
						</ul>
						</m:forEach>
							
						
						<ul class="order-item">
						<div class="order-actions">
							<a href="javascript:void(0)" class="btn btn-small btn-sasmwy zhifu">立即支付</a>
							<a href="javascript:void(0)" class="btn btn-small btn-sasmwy1 xianqin" >订单详情</a>
						</div>
						</ul>
					</div>
						
					</div>
				</c:forEach>
				<script type="text/javascript">
					$(function() {
						/*修改订单状态点击事件 */
						$(".zhifu").click(function() {
							var din =  $(this).closest(".ui").find(".din").text();
							window.location.href="XiugaidindanServlet?din="+din;
						});
						/*查看订单详情点击事件 */
						$(".xianqin").click(function() {
							var din = $(this).closest(".ui").find(".din").text();
							window.location.href="ChadindanServlet?din="+din;
						});
						
					})
					</script>
					
					
					</div>
					
					<!-- 第二个 待支付 -->
				
					
					
					
					<!-- 第三个 已完成 -->
					
					
					
					
					<!-- 底 -->
					
					</div>
			</div>
		</div>
		</div>
		</div>
			
		<script>
			 var boxToggle = document.getElementById('filter');
			  var boxes = document.querySelectorAll('.box');
			 var lis = boxToggle.querySelectorAll('li');
			  // 为每个列表项添加点击事件监听器
			  boxToggle.addEventListener('click', function(event) {
			    // 确保点击的是列表项
			    if (event.target.tagName === 'LI') {
			      // 获取点击的列表项的索引
			      var index = Array.from(boxToggle.children).indexOf(event.target);
			      
			      // 切换对应索引的盒子的显示状态
			      boxes.forEach(function(box, i) {
			        if (i === index) {
			          box.style.display = 'block'; // 显示被点击的盒子
			        } else {
			          box.style.display = 'none'; // 隐藏其他盒子
			        }
			      });
				  
						   lis.forEach(function(item, i) {
							  if (i === index) {
								item.style.color = '#ff6700'; // 改变被点击项的字体颜色
							  } else {
								item.style.color = '#757575'; // 恢复其他项的默认字体颜色
							  }
							});
			    }
			  });
		</script>
					
					
					
				
		
	</body>
</html>
