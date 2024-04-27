<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Address Selection</title>
	<link rel="stylesheet" href="../css/Dizhi.css?v=1" />
	<link rel="stylesheet" href="../css/Dindan.css?v=1"/>
	<link rel="stylesheet" href="../js/wei.css"/>
		<script src="../js/Dizhi.js">
	
	</script>
</head>
<body>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.js"></script>
<script src="https://cdn.bootcss.com/distpicker/2.0.1/distpicker.js"></script>
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
					<li>我的地址</li>
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

			<div id="a5" style="width: 978px;height: 677px;background-color: white;">
			<div class="mi-box">
					<h1 class="title">收货地址</h1>
					</div>
					<div class="wos">
							<div class="shouhuo"  onclick="Dizhi()">
								<h3>新增收货地址</h3>
							</div>
							
							
							<c:forEach items="${list}" var="l">
							<form action="DizhixiugaiServlet" method="post">
							<div class="shouhuo">
							
							<input name="id" class="id" style="display: none;" value="${l.getAdd_id()}"></input>
							<h4>${l.getAdd_name()}</h4>
							<p>${l.getAdd_tel()}</p>
							<p>${l.getAddress()}</p>
							<input class="shancu" type="submit" value="删除" />
							
							</div>
						</form>
						</c:forEach>
							
							<div> </div>
						</div>
					</div>

	<div class="mohu" style="display:none;"id="dizhi1">
	<div class="ii"></div>
	<div class="box" style="position: absolute;">
		<div class="dizhi">
		<div class="form-container">
        <form action="DizhiServlet" method="get">
			<div class="item">
			<input type="text" name="name" placeholder="收货人" style="padding-left: 10px"/>
			<input type="text" name="tele" id="numericInput" oninput="handleInput(event)" placeholder="电话" style="padding-left: 10px"/>
			</div>
            <div class="diqu" data-toggle="distpicker" data-autoselect="3">
                <select v-model="work.province" name="shen"></select>
                <select v-model="work.city" name="shi"></select>
                <select v-model="work.area" name="qu"></select>
            </div>
			
			<textarea class="myTextarea" name="myTextarea" value="" placeholder="详细信息" style="padding-left: 5px;padding-top: 5px"></textarea>
			<div style="margin: 20px;text-align: center;">
				<input type="submit" class="ti" onclick="Yanzhen()" value="提交">
				<input type="button" class="qu" id="dizhi1" onclick="Dizhi()" value="取消">
			</div>
            
        </form>
    </div>
	</div>
	</div>
	</div>
	</div>
	</div>
	
	<div class="con_bottom">
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
        function handleInput(event) {
            // 获取输入框元素
            var input = event.target;
            
            // 获取输入的值
            var value = input.value;
            
            // 检查是否为数字
            if (!(/^\d*$/).test(value)) {
                // 如果不是数字，则清除非数字字符
                input.value = value.replace(/[^\d]/g, '');
                alert('请输入数字');
    		    event.preventDefault(); // 阻止表单提交
            }
            
            // 检查长度是否超过11位
            if (value.length >= 11) {
                // 如果超过11位，则截断为前11位
                input.value = value.slice(0, 11);
                alert('电话不符合格式');
    		    event.preventDefault(); // 阻止表单提交
            }
        }
    </script>
</body>
</html>






