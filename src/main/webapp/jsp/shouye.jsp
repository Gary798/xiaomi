<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<!DOCTYPE html>
	<html>
		<head>
			<meta charset="utf-8">
			<title></title>
			<link rel="stylesheet" href="../css/style.css">
			<!--轮播图导包-->
			<link rel="stylesheet" href="../css/jquery.bxslider.css">
			<!--首页样式-->
			<link rel="stylesheet" href="../css/小米首页.css"/>
			<link rel="stylesheet" href="../css/xiala.css"/>
			<script src="../js/jquery-1.11.3.min.js"></script>
			<script src="../js/jquery.bxslider.js"></script> 
			<style>
					.zsimg{
					margin-left: 30px;
					margin-top: 20px;
					width: 160px;
					height: 160px;
				}
				
				.h3name{
					text-align: center;
					    margin: 0 10px 2px;
					    text-overflow: ellipsis;
					    white-space: nowrap;
					    overflow: hidden;
					font-size: 16px;
				    font-weight: 400;
				    color: #333;
				}
				.pzsname{
					text-align: center;
					    margin: 0 10px 10px;
					    height: 18px;
					    font-size: 12px;
					    color:#ff0000a3;
					     text-overflow: ellipsis;
					    white-space: nowrap;
					    overflow: hidden;
				}
				.pzsjg{
					text-align: center;
					color:#ff6700;
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
							<span>购物车(<span>0</span>)</span>
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
							<li><span id="qbsp">全部商品分类</span></li>
							<li><span id="xm">Xiaomi手机</span></li>
							<li><span id="hm">Redmi手机</span></li>
							<li><span id="dn">电脑</span></li>
							<li><span id="bjb">笔记本</span></li>
							<li><span id="pb">平板</span></li>
							<li><span id="jd">家电</span></li>
							<li><span id="lyq">路由器</span></li>
							<li><span>服务中心</span></li>
							<li><span>社区</span></li>
						</ul>
						<div class="sousuo">
								<form>
									<input type="text" class="ssk" style="width:221px;height:16px;background:#eee" />
									<input type="submit" class="fdj" value=""/>
								</form>
						</div>
						<div class="xiala">
							<div class="navDiv">
								<ul class="children-list">
									<c:forEach var="image" items="${listsp1}" varStatus="loop">
									<li>
										<a class="xiala_a" href="xq?id=${listsp1[loop.index].pro_id}&Gg=${listGg1[loop.index].spe_id}&Co=${listCo1[loop.index].spe_id}&Jg=${listsp1[loop.index].pri_name}">
											<div class="imgdiv">
											<img src="${listtp1[loop.index].img_url}"/>
											</div>
											<div>${listsp1[loop.index].pro_name}</div>
											<p>${listsp1[loop.index].pri_name}起</p>
										</a>
									</li>
								</c:forEach>
								</ul>
							</div>
							<div class="navDiv">
								<ul class="children-list">
									<c:forEach var="image" items="${listtp}" varStatus="loop">
									<li>
										<a class="xiala_a" href="xq?id=${listsp[loop.index].pro_id}&Gg=${listGg[loop.index].spe_id}&Co=${listCo[loop.index].spe_id}&Jg=${listsp[loop.index].pri_name}">
											<div class="imgdiv">
											<img src="${listtp[loop.index].img_url}"/>
											</div>
											<div>${listsp[loop.index].pro_name}</div>
											<p>${listsp[loop.index].pri_name}起</p>
										</a>
									</li>
								</c:forEach>
								</ul>
							</div>
							<div class="navDiv">
								<ul class="children-list">
									<c:forEach var="image" items="${listtp}" varStatus="loop">
									<li>
										<a class="xiala_a">
											<div class="imgdiv">
											<img src="${listtp[loop.index].img_url}"/>
											</div>
											<div>${listsp[loop.index].pro_name}</div>
											<p>${listsp[loop.index].pri_name}起</p>
										</a>
									</li>
								</c:forEach>
								</ul>
							</div>
							<div class="navDiv">
								<ul class="children-list">
									<c:forEach var="image" items="${listtp}" varStatus="loop">
									<li>
										<a class="xiala_a">
											<div class="imgdiv">
											<img src="${listtp[loop.index].img_url}"/>
											</div>
											<div>${listsp[loop.index].pro_name}</div>
											<p>${listsp[loop.index].pri_name}起</p>
										</a>
									</li>
								</c:forEach>
								</ul>
							</div>
							<div class="navDiv">
								<ul class="children-list">
									<c:forEach var="image" items="${listtp}" varStatus="loop">
									<li>
										<a class="xiala_a">
											<div class="imgdiv">
											<img src="${listtp[loop.index].img_url}"/>
											</div>
											<div>${listsp[loop.index].pro_name}</div>
											<p>${listsp[loop.index].pri_name}起</p>
										</a>
									</li>
								</c:forEach>
								</ul>
							</div>
							<div class="navDiv">
								<ul class="children-list">
									<c:forEach var="image" items="${listtp}" varStatus="loop">
									<li>
										<a class="xiala_a">
											<div class="imgdiv">
											<img src="${listtp[loop.index].img_url}"/>
											</div>
											<div>${listsp[loop.index].pro_name}</div>
											<p>${listsp[loop.index].pri_name}起</p>
										</a>
									</li>
								</c:forEach>
								</ul>
							</div>
							<div class="navDiv">
								<ul class="children-list">
									<c:forEach var="image" items="${listtp}" varStatus="loop">
									<li>
										<a class="xiala_a">
											<div class="imgdiv">
											<img src="${listtp[loop.index].img_url}"/>
											</div>
											<div>${listsp[loop.index].pro_name}</div>
											<p>${listsp[loop.index].pri_name}起</p>
										</a>
									</li>
								</c:forEach>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			
				<div id="ftop">
				<img id="ftopImage" src="../img/ftop.png" onmouseover="changeImage('../img/ftop_hover.png')" onmouseout="changeImage('../img/ftop.png')">
				
				<script>
				function changeImage(newSrc) {
				  document.getElementById('ftopImage').src = newSrc;
				}
				</script>
				</div>
			
			<div class="content1">
				<div class="con1_masking">
				<ul>
					<li><span class="lbtspan">手机<img src="../img/右箭头 (1).png"/ class="spanimg1"></span></li>
					<li><span class="lbtspan">电脑<img src="../img/右箭头 (1).png"/ class="spanimg1"></span></li>
					<li><span class="lbtspan">家电<img src="../img/右箭头 (1).png"/ class="spanimg1"></span></li>
					<li><span class="lbtspan">笔记本 平板<img src="../img/右箭头 (1).png" class="spanimg"/></span></li>
					<li><span class="lbtspan">出行 穿戴<img src="../img/右箭头 (1).png"/></span></li>
					<li><span class="lbtspan">耳机 音响<img src="../img/右箭头 (1).png"/></span></li>
					<li><span class="lbtspan">健康 儿童<img src="../img/右箭头 (1).png"/></span></li>
					<li><span class="lbtspan">生活 箱包<img src="../img/右箭头 (1).png"/></span></li>
					<li><span class="lbtspan">智能 路由器<img src="../img/右箭头 (1).png "class="spanimg"/></span></li>
					<li><span class="lbtspan">电源 配件<img src="../img/右箭头 (1).png"/></span></li>
				</ul>
				<div class="com_2">
					
				</div>
				</div>
				<!-- banner1-->
				<div class="bannerPc banner banner1">
					<ul class="bxslider">
							<li><a href="#"><img src="../img/4.jpg" alt="" title=""/></a> </li>
							<li><a href="#"><img src="../img/3.webp" alt="" title=""/></a> </li>
							<li><a href="#"><img src="../img/6.webp" alt="" title=""/> </a></li>
							<li><a href="#"><img src="../img/2.webp" alt="" title=""/> </a></li>
							<li><a href="#"><img src="../img/5.webp" alt="" title=""/></a> </li>
					</ul>
					
				</div>
				</div>
			</div>
			<div class="content2">
				<div class="con2_left">
					<ul>
						<li><a><img src="../img/保障服务 (2).png"/>保障服务</a></li>
						<li><a><img src="../img/企业文化.png"/>企业团购</a></li>
						<li><a><img src="../img/F码通道.png"/>F码通道</a></li>
						<li><a><img src="../img/米粉卡.png"/>米粉卡</a></li>
						<li><a><img src="../img/以旧换新.png"/>以旧换新</a></li>
						<li><a><img src="../img/话费充值.png"/>话费充值</a></li>
					</ul>
				</div>
				<div class="con2_right">
					<div class="con2_right_img"><img src="../img/6b67117bc92924fb2ff0e7ad2be86084.png"/></div>
					<div class="con2_right_img"><img src="../img/8dede2520f8dfff9c9b690af498cafe8.jpg"/></div>
					<div class="con2_right_img"><img src="../img/1ac77590368ff636d0b4f6a988133f55.png"/></div>
				</div>
			</div>
			<div class="content3">
				<div class="con3_top">
					<img src="../img/23b07173b64cc05467af4f5c03621de7.webp"/>
				</div>
				<div class="con3_title">
					<h2>热卖商品</h2>
					<a>查看更多</a>
				</div>
				<div class="con3_cont">
					<div class="con3_cont_left">
						<img src="../img/侧边xm14.webp">
						
					</div>
						<div class="con3_cont_right">
					<c:forEach var="zs" items="${listrdsp}" varStatus="loop">
					<a class="xiala_a" href="xq?id=${listrdsp[loop.index].pro_id}&Gg=${listGgrm[loop.index].spe_id}&Co=${listCorm[loop.index].spe_id}&Jg=${listrdsp[loop.index].pri_name}">
						<div class="con3_cont_right_img">
						<img src="${listtprm[loop.index].img_url}" class="zsimg"/>
						<h3 class="h3name">${listrdsp[loop.index].pro_name}</h3>
						<p class="pzsname">${listrdsp[loop.index].pro_description}</p>
						<p class="pzsjg"><span class="zsjg">${listrdsp[loop.index].pri_name}</span>元<span>起</span></p>
						</div>
					</a>
					</c:forEach>
					</div>
				</div>
				
			</div>
			<div class="con4">
				<div class="con4_top">
					<img  src="../img/con4top.webp">
				</div>
				<div class="con4_title">
					<h2>最新上架</h2>
					<a>查看更多</a>
				</div>
				<div class="con4_cont">
					<div class="con4_cont_left">
						<img src="../img/diannao.webp">
					</div>
					<div class="con4_cont_right">
						<c:forEach var="zs" items="${listspsj}" varStatus="loop">
					<a class="xiala_a" href="xq?id=${listspsj[loop.index].pro_id}&Gg=${listGgsj[loop.index].spe_id}&Co=${listCosj[loop.index].spe_id}&Jg=${listspsj[loop.index].pri_name}">
						<div class="con3_cont_right_img">
						<img src="${listtpsj[loop.index].img_url}" class="zsimg"/>
						<h3 class="h3name">${listspsj[loop.index].pro_name}</h3>
						<p class="pzsname">${listspsj[loop.index].pro_description}</p>
						<p class="pzsjg"><span class="zsjg">${listspsj[loop.index].pri_name}</span>元<span>起</span></p>
						</div>
					</a>
					</c:forEach>
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
			<!--下拉列表的js-->
						<script>
							$(function(){
								$(".nav_ul li").mouseover(function(){
									//显示总容器
									$(".xiala").css('height','229px');
									// 获取第几个元素触发
									var index = $(this).index();
									
									if(index === 0) {
										return; // 不处理第一个 li 元素
									}
									
									//隐藏所有
									$('.navDiv').hide();
									//只显示当前
									$('.navDiv').eq(index-1).show();
									
									// 当鼠标悬停在最后两个 <li> 上时，设置 .xiala 的高度为 0
									if (index >= $(".nav_ul li").length - 2) {
										$(".xiala").css('height', '0');
									}
								});
						
								$(".navDiv").mouseover(function(){
									// 显示总容器
									$(".xiala").css('height', '229px');
									
									// 获取当前元素的索引
									var index = $(this).index('.navDiv');
									
									// 隐藏所有 .navDiv
									$('.navDiv').hide();
									
									// 显示当前对应的 .navDiv
									$('.navDiv').eq(index).show();
								});
								
								//移出列表
								$(".xiala").mouseout(function(e){
									// 设置总容器
									$(".xiala").css('height','0');
									// 判断鼠标移动到的目标不是 .nav_ul 下的子元素时才隐藏
									if ($(e.relatedTarget).closest('.nav_ul li').length === 0) {
										$('.navDiv').hide();
									}
								});
								//悬停在第一个li上
								  $(".nav_ul li:first-child").mouseover(function(){
								        // 鼠标悬停在第一个 li 元素上时执行移出列表的操作
								        $(".xiala").css('height', '0');
								        $('.navDiv').hide();
								    });
								//移出列表
								$(".nav_ul li span").mouseout(function(e){
									// 设置总容器
									$(".xiala").css('height','0');
									// 判断鼠标移动到的目标不是 .nav_ul 下的子元素时才隐藏
									if ($(e.relatedTarget).closest('.nav_ul li').length === 0) {
										$('.navDiv').hide();
									}
								});
							});
						</script>
			<script>
				$(function(){
				    $(".con1_masking ul li").mouseover(function(){
				        // 显示对应的 div
						$(".com_2").css('height','461px');
						//获取当前元素
				        var index = $(this).index();
						//隐藏所有
						$('.con1_masking_tow2').hide();
						
						//只显示当前
						$('.con1_masking_tow2').eq(index).show();
						
				    });
					$(".con1_masking_tow2").mouseover(function(){
						$(".com_2").css('height','461px');
						//获取当前元素的索引
						var index = $(this).index('.con1_masking_tow2');
						//隐藏所有
						$('.con1_masking_tow2').hide();
						//只显示当前
						$('.con1_masking_tow2').eq(index).show();
						
					});
				    // 移出 ul 时隐藏全部 div
				    $(".con1_masking ul li").mouseout(function(){
							$(".com_2").css('height','0');
						    $(".con1_masking_tow2").hide();
				    });
					// 移出 ul 时隐藏全部 div
					$(".com_2").mouseout(function(){
							$(".com_2").css('height','0');
						    $(".con1_masking_tow2").hide();
					});
				});

			</script>
			<!--侧边导航栏的js-->
			<script>
				const ftopBtn = document.getElementById("ftop");
				// 当网页向下滑动 20px 出现"返回顶部" 按钮
				window.onscroll = function() {scrollFunction()};
				 
				function scrollFunction() {console.log(121);
					if (document.body.scrollTop > 300 || document.documentElement.scrollTop > 300) {
					   ftopBtn.style.display = "block";
					} else {
					   ftopBtn.style.display = "none";
					}
				}
					document.getElementById("ftop").click()
				
				// 点击按钮，返回顶部并添加平滑滚动效果
				ftopBtn.addEventListener('click', function() {
					const scrollToTop = () => {
						const c = document.documentElement.scrollTop || document.body.scrollTop;
						if (c > 0) {
							window.requestAnimationFrame(scrollToTop);
							window.scrollTo(0, c - c / 8);
						}
					};
					scrollToTop();
				});
			</script>
			<!--轮播图-->
		<script type="text/javascript">
		    var scale = '';/*空、、4*3、3*2*/
		    var speed = 500;
		    var pause = 5;
		    $(function () {
		        $('.banner1 .bxslider').bxSlider({
		            mode: 'fade', /*滚动方式fade、vertical、horizontal*/
		            auto: true, /*自动滚动*/
		            autoControls: false, /*自动滚动按钮*/
		            infiniteLoop: true, /*循环滚动*/
		            hideControlOnEnd: true, /*无效按钮隐藏*/
		            adaptiveHeight: true, /*图片是否实际缩放比高度显示控制，图片比例不一样高度变化*/
		            minSlides: 1,
		            maxSlides: 1,
		            scale: scale,
		            speed: speed,
		            pause: pause * 1000
		        });
		    });
		</script> 
		
	</html>