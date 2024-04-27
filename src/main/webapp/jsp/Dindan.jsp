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
	<link rel="stylesheet" href="../js/wei.css"/>
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
		</div>	<div class="con_bottom">
			<div class="con6">
			<div class="con6_1">
				<ul class="con6_1_ul">
					<li><img src="../img/工具.png"/><span>预约维修服务</span></li>
					<li><img src="../img/7天无理由退货.png"/><span>7天无理由退货</span></li>
					<li><img src="../img/rili-15.png"/><span>15天免费换货</span></li>
					<li><img src="../img/礼物盒.png"/><span>满69包邮</span></li>
					<li><img src="../img/位置.png"/><span>1100余家售后网点</span></li>
				</ul>
			</div>
			<div class="con6_2">
				<dl class="first_dl">
					<dt></dt>
				</dl>
				<dl class="con6_dl">
					<dt>选购指南</dt>
					<dd><span>手机</span></dd>
					<dd><span>电视</span></dd>
					<dd><span>笔记本</span></dd>
					<dd><span>平板</span></dd>
					<dd><span>穿戴</span></dd>
					<dd><span>耳机</span></dd>
					<dd><span>家电</span></dd>
					<dd><span>路由器</span></dd>
					<dd><span>音响</span></dd>
					<dd><span>配件</span></dd>
				</dl>
				
				<dl class="con6_dl">
					<dt>服务中心</dt>
					<dd><span>申请售后</span></dd>
					<dd><span>售后政策</span></dd>
					<dd><span>维修服务价格</span></dd>
					<dd><span>订单查询</span></dd>
					<dd><span>以旧换新</span></dd>
					<dd><span>保障服务</span></dd>
					<dd><span>防伪查询</span></dd>
					<dd><span>F码通道</span></dd>
				</dl>
				
				<dl class="con6_dl">
					<dt>线下门店</dt>
					<dd><span>小米之家</span></dd>
					<dd><span>服务网点</span></dd>
					<dd><span>授权体验店</span></dd>
				</dl>
				
				<dl class="con6_dl">
					<dt>关于小米</dt>
					<dd><span>了解小米</span></dd>
					<dd><span>加入小米</span></dd>
					<dd><span>投资者关系</span></dd>
					<dd><span>可持续发展</span></dd>
					<dd><span>廉洁举报</span></dd>
				</dl>
				
				<dl class="con6_dl">
					<dt>关注我们</dt>
					<dd><span>新浪微博</span></dd>
					<dd><span>官方微信</span></dd>
					<dd><span>联系我们</span></dd>
					<dd><span>公益基金会</span></dd>
				</dl>
				<div class="lxdh">
					<p class="lxdh_p1">400-1000-5678</p>
					<p class="lxdh_p2">8:00-18:00(仅收市话费)</p>
					<a class="btn btn-line-primary btn-small J_contactBtn">
						人工客服
					</a>
				</div>
			</div>
			</div>
		</div>
			<div class="site-info">	
				<div class="contanion">
						
						<div class="info-text">
							<div style="width: 56px;height: 56px;"><img  class="logo1" src="../img/logo-mi2.png"/></div>
							<div style="margin-left: 20px;">
							<div class="sites">
								<a rel="nofollow">小米商城</a>
								<span class="sep">|</span>
								<a rel="nofollow">小米澎湃OS</a>
								<span class="sep">|</span>
								<a rel="nofollow">米家</a>
								<span class="sep">|</span>
								<a rel="nofollow">米聊</a>
								<span class="sep">|</span>
								<a rel="nofollow">多看</a>
								<span class="sep">|</span>
								<a rel="nofollow">游戏</a>
								<span class="sep">|</span>
								<a rel="nofollow">音乐</a>
								<span class="sep">|</span>
								<a rel="nofollow">政策服务</a>
								<span class="sep">|</span>
								<a rel="nofollow">小米天猫店</a>
								<span class="sep">|</span>
								<a rel="nofollow">小米集团隐私政策</a>
								<span class="sep">|</span>
								<a rel="nofollow">小米公司儿童信息保护规则</a>
								<span class="sep">|</span>
								<a rel="nofollow">小米商城隐私政策</a>
								<span class="sep">|</span>
								<a rel="nofollow">小米商城用户协议</a>
								<span class="sep">|</span>
								<a rel="nofollow">问题反馈</a>
								<span class="sep">|</span>
								<a rel="nofollow">Select Location</a>
							</div>
							<div class="sites">
								<a rel="nofollow">北京互联网法院法律服务工作站</a>
								<span class="sep">|</span>
								<a rel="nofollow">中国消费者协会</a>
								<span class="sep">|</span>
								<a rel="nofollow">北京市消费者协会</a>
							</div>
							<div class="stons">
							©<a href="">mi.com</a> 京ICP证110507号
							 <a href="">京ICP备10046444号</a>
							 <a href="">京公网安备11010802020134号</a>
							 <a href="">京网文[2023]0169-004号</a>
							 <br />
							 <a href="">（京）网械平台备字（2018）第00005号</a>
							 <a href="">互联网药品信息服务资格证 (京)-非经营性-2014-0090</a>
							 <a href="">营业执照</a>
							 <a href="">医疗器械质量公告</a>
							 <br />
							 <a href="">增值电信业务经营许可证编号：京B2-20180851</a>
							 <a href=""> 网络食品经营备案 京食药网食备202010048</a>
							 <a href="">食品经营许可证</a>
							 <a href=""> 新出发京批字第直220280号</a>
							 <br />
							 违法和不良信息举报电话：171-5104-4404&nbsp;
							 <a href="">知识产权侵权投诉知识产权侵权投诉</a>
							 &nbsp; 本网站所列数据，除特殊说明，所有数据均出自我司实验室测试
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
