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
		<link rel="stylesheet" href="../js/wei.css"/>
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
		</div><div class="con_bottom">
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