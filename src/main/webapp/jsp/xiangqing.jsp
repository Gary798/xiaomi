<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<link rel="stylesheet" href="../css/小米首页.css">
		<link rel="stylesheet" href="../css/xiala.css">
		<script src="../js/jquery-3.1.0.js"></script>
		<script src="../js/头尾.js"></script>
		<style>
			.sousuo{
				left: 563px;
			}
			*{
				margin: 0 auto;
			}
			.xq_nav{
			position: relative;
			height: 63px;
			width: 100%;
			margin-top: 0;
			color: #616161;
			border-top: 1px #000 dotted;
			box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* 水平偏移量 垂直偏移量 模糊半径 阴影颜色 */
			border-bottom: 1px solid #ccc; /* 下边框 */
			
			}
			.xq_yetou{
			width: 1230px;
			height: 63px;
			margin: 0 auto;
			}
			.xq_yetou h2{
			    margin: 0;
			    font-size: 18px;
			    font-weight: 400;
			    line-height: 60px;
			    color: #424242;
			    float: left;
			}
			.left{
				float: left;
			    margin-left: 5px;
			    font-size: 12px;
			    margin-top: 21px;
			}
			.right{
				float: right;
				margin: 17px 0 0 0;
				font-size: 14px;
			}
			.right span{
				margin: 0 .5em;
			}
			.hexi{
				display: -webkit-box;
				    display: -ms-flexbox;
				    display: flex;
				    -webkit-box-pack: center;
				    -ms-flex-pack: center;
				    justify-content: center;
				    padding-top: 32px;
				    padding-bottom: 12px;
					width: 1230px;
					
			}
			.img_left{
				    width: 606px;
				    position: relative;
			}
			.img_left img{
				width: 560px;
				height: 560px;
				object-fit: cover;
			}
			.wz_right{
				-webkit-box-flex: 1;
				    -ms-flex: 1;
				    flex: 1;
				    margin-left: 20px;
			}
			.wz_right h2{
				    margin: 0;
				    padding: 0;
				    font-size: 24px;
				    font-weight: 400;
				    color: #212121;
			}
			.wz_js{
				color: #b0b0b0;
				    margin: 0;
				    padding: 0;
				    padding-top: 8px;
				    line-height: 1.5;
					font-size: 14px;
			}
			.xmzy{
					margin-top: 14px;
				    color: #ff6700;
				    margin-bottom: 0;
			}
			.jiage{
				
			    display: block;
			    font-size: 18px;
			    line-height: 1;
			    color: #ff6700;
			    padding: 12px 0 10px;
			}
			.chucun, .color {
			    margin-bottom: 30px;
			    position: relative;
			}
			
			.fk {
			    margin: 0;
			    padding: 0;
			    display: flex;
			    flex-wrap: wrap;
			    justify-content: space-between; /* 使每行的元素均匀分布在容器中 */
			}
			
			.fk li {
			    margin-top: 10px;
			    line-height: 42px;
			    height: 42px;
			    position: relative;
			    border: 1px solid #e0e0e0;
			    list-style: none;
			    cursor: pointer;
			    transition: all .2s ease;
			    width: calc(50% - 6px); /* 计算每个元素宽度为一行的一半，并考虑到外边距 */
			    font-size: 16px;
			    text-align: center;
			    flex-grow: 0; /* 不允许元素在需要时拉伸 */
			}
			
			.fk li:nth-child(odd) {
			    margin-left: 1px; /* 奇数位置的元素添加 margin-left: 1px; */
			}


			.fk li a {
			    display: block;
			    overflow: hidden;
			    text-overflow: ellipsis;
			    white-space: nowrap;
			    box-sizing: border-box;
			    padding: 0 5px;
			}
			.gwc{
				    margin: 10px 0 20px 0;
			}
			a {
  		color: inherit;
			}
			.jiaru{
				
					    display: inline-block;
					    padding: 0;
					    margin: 0;
					    border: 1px solid #b0b0b0;
					    text-align: center;
					    color: #b0b0b0;
					    cursor: pointer;
					    -webkit-transition: all .4s;
					    transition: all .4s;
						width: 298px;
						    background: #ff6700;
						    height: 52px;
						    line-height: 52px;
						    font-size: 16px;
			}
			.jiaru:hover{
				    background-color: #f25807;
				    border-color: #f25807;
				    color: #fff;
					text-decoration: none;
			}
			.xihuan{
				    background: #b0b0b0;
				    border-color: #b0b0b0;
				    color: #fff;
					display: inline-block;
					    width: 140px;
					    height: 52px;
					    line-height: 52px;
					    padding: 0;
					    margin: 0;
					    border: 1px solid #b0b0b0;
					    text-align: center;
					    cursor: pointer;
					    -webkit-transition: all .4s;
					    transition: all .4s;
					    font-size: 16px;
					    position: relative;
			}
			.sm_h3{
				font-size: 22px;
				    font-weight: 400;
				    margin-top: 0;
				    margin-bottom: 0;
				    padding: 1em 0;
			}
			.smimg{
				    position: absolute;
				    left: 50%;
				    top: 0;
				    -webkit-transform: translateX(-50%);
				    -ms-transform: translateX(-50%);
				    transform: translateX(-50%);
				    height: 100%;
			}
			.fk li a:hover {
				color: #ff6700;
				border-color: #ff6700;
			}
			.fk li:first-child{
				border-color: #ff6700; /* 设置边框颜色为 #ff6700 */
				color: #ff6700; /* 设置字体颜色为 #ff6700 */
			}
			
		</style>
	</head>
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
						<a href="GwServlet">
							<img src="../img/购物车空-copy.png">
							<c:forEach var="i" items="${listcount}">
							<span>购物车(<span>${i.count}</span>)</span>
							</c:forEach>
						</a>
						</div>
						</div>
					</div>
				</div>
				<div class="nav">
					<div class="nav_center">
							<div class="header_nav">
							<div class="logo"><img src="../img/logo-mi2.png"/></div>
							<ul class="nav_ul">
								<c:forEach var="oy" items="${listFL}">
								<li><span>${oy.cate_name}</span></li>
								</c:forEach>
								
								<li><span><a href="xiala">小米商城</a></span></li>
							</ul>
							
							<div class="xiala">
								<c:forEach var="image" items="${listFL}" varStatus="loop">
    <div class="navDiv">
        <ul class="children-list">
            <c:forEach items="${listsp1[loop.index]}" var="pi" varStatus="o">
                <li>
                    <a class="xiala_a" href="xq?id=${pi.pro_id}&Gg=${listGg1[loop.index][o.index].spe_id}&Co=${listCo1[loop.index][o.index].spe_id}&Jg=${pi.pri_name}">
                        <div class="imgdiv">
                            <img src="${listtp1[loop.index][o.index].img_url}"/>
                        </div>
                        <div>${pi.pro_name}</div>
                        <p>${pi.pri_name}起</p>
                    </a>
                </li>
            </c:forEach>
        </ul>
    </div>
</c:forEach>

							</div>
						</div>
					</div>
				</div>
		<div class="xq_nav">
			<div class="xq_yetou">
				<h2>
	<c:forEach var="item" items="${listspxx}">
        
        <c:out value="${item.pro_name}" /> <br/>
    </c:forEach></h2>
				<div class="left">
					
				</div>
				<div class="right">
					<a>概述页</a>
					<span>|</span>
					<a>参数页</a>
					<span>|</span>
					<a>F码通道</a>
					<span>|</span>
					<a>咨询客服</a>
					<span>|</span>
					<a>用户评价</a>
				</div>
			</div>
		</div>
		<div class="zhuti">
			<div class="hexi">
				<div class="img_left">
				<c:forEach var="i" items="${listxqimg}" >
				<img src="${i.ad_url}"/>
				</c:forEach>
					
				</div>
				<div class="wz_right">
					
					<c:forEach var="item" items="${listspxx}">
       				 <h2>
      					  <c:out value="${item.pro_name}" />
      					  </h2>
      				<p class="wz_js"><c:out value="${item.pro_description}" /></p>
   				 </c:forEach>
					
					<p class="xmzy">小米自营</p>
					<div class="jgdiv">
						<span class="jiage"> 
								<c:out value="${Jg}" />
						</span>
						
					</div>
				<script>
    function ajax(pro_id, spe_det) {
        $.getJSON('ShuaServlet', {
            pro_id: pro_id,
            spe_det: spe_det
        }, function(result) {
        	 var formattedResult = result.toFixed(2);
             // 更新Jg的值
             $(".jgdiv .jiage").text(formattedResult);
        });
    }
</script>

<script>
    $(document).ready(function() {
        $(".fky").click(function(e) {
            e.preventDefault();
            var pro_id = $(this).data("pro-id");
            var spe_det = $(this).data("spe_det");
            ajax(pro_id, spe_det);
        });
    });
</script>
<script>
$(document).ready(function() {
	
    // 默认选择第一个版本和第一个颜色
    $(".fky:first").addClass("active");
    $(".yanse:first").addClass("active");

    $(".jiaru").click(function(e) {
        e.preventDefault();
        var color = $('.yanse.active').attr("data-Color");
        var gg = $('.fky.active').data('spe_det');
        var encodedGg = encodeURIComponent(gg); // 对 gg 进行编码
        var id = $('.fky.active').data('pro-id'); // 修正获取产品 ID 的代码
        var jg = $(".jgdiv .jiage").text().trim(); // 修正获取价格的代码
        location.href = 'DemoServlet?Color=' + color + "&Gg=" + encodedGg + "&id=" + id + "&jg=" + jg; // 添加价格参数
    });

    $(".yanse").click(function() {
        $(".yanse").removeClass("active");
        $(this).addClass("active");
    });

    $(".fky").click(function() {
        $(".fky").removeClass("active");
        $(this).addClass("active");
    });
});

</script>
				<div class="guige">
						<div class="chucun">
							<div>
								<div style="font-size: 18px;">选择版本</div>
								<ul class="fk">
								<c:forEach var="item" items="${listCC}" varStatus="loop">
									<li><a class="fky" data-pro-id="${ID}" data-spe_det="${listCC[loop.index].spe_det}" >${listCC[loop.index].spe_det}</a></li>
								</c:forEach>
								</ul>
							</div>
						</div>
						<div class="color">
							<div>
								<div style="font-size: 18px;">选择颜色</div>
								<ul class="fk">
								<c:forEach var="item" items="${listCo}" varStatus="loop">
									<li><a class="yanse" data-Color="${listCo[loop.index].spe_det}">${listCo[loop.index].spe_det}</a></li>
								</c:forEach>
								</ul>
							</div>
						</div>
					</div>
					<div class="gwc">
						<a class="jiaru">加入购物车</a>
						<a class="xihuan"> ❤  收藏</a>
					</div>
				</div>
			</div>
			<div class="shuoming" style="padding-bottom: 50px;background: #f5f5f5;">
				<div style="width: 1230px;">
					<div>
						<h3 class="sm_h3">价格说明</h3>
					</div>
					<div style="    position: relative; width: 100%;   overflow: hidden; margin: 0 auto;height: 189px;">
						<img src="../img/价格说明.png"/ class="smimg">
					</div>
				</div>
			</div>
		</div>
		<!--页脚-->
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
	</body>
<script>
  $(function() {
    // 为选择版本中的li元素绑定点击事件
    $('.chucun .fk li').click(function() {
      // 移除之前选中项的样式
      $('.chucun .fk li').removeClass('selected');
      // 添加当前点击项的样式
      $(this).addClass('selected');
      // 设置边框颜色和字体颜色
      $(this).css({
        'border-color': '#ff6700',
        'color': '#ff6700'
      });
      // 设置其他li元素的边框颜色和字体颜色
      $('.chucun .fk li').not(this).css({
        'border-color': '#e0e0e0',
        'color': 'black'
      });
      
    });

    // 为选择颜色中的li元素绑定点击事件
    $('.color .fk li').click(function() {
      // 移除之前选中项的样式
      $('.color .fk li').removeClass('selected');
      // 添加当前点击项的样式
      $(this).addClass('selected');
      // 设置边框颜色和字体颜色
      $(this).css({
        'border-color': '#ff6700',
        'color': '#ff6700'
      });
      // 设置其他li元素的边框颜色和字体颜色
      $('.color .fk li').not(this).css({
        'border-color': '#e0e0e0',
        'color': 'black'
      });
    });
  });
</script>
</html>
</html>