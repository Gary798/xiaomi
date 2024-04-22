<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
	</head>
	<link rel="stylesheet" href="../css/Xiugai.css?v=1"/>
	<script src="../js/jquery-3.5.1.min.js">
	</script>
	<script src="../js/Xiugai.js">
	
	</script>
	
	<body>
		<div id="dir">
			<div class="mi-poflie">
				
				<div class="mi-head">
					<div class="mi-head-tilte">
						<img id="pahd" src="../img/标题.png" width="40" height="40" />
						<span id="tilte"><b>小米账号</b></span>
					</div>
					
					<div class="mi-mve">
					<a class="mi-id-a" href=""><b>用户协议</b></a>
					<a class="mi-id-a" href=""><b>隐私政策</b></a>
					<a class="mi-id-a" href=""><b>帮助中心</b></a>
					<div class="mi-mve-xian"></div>
					<span class="mi-id-a" ><a href="" id="text">退出</a></span>
				</div>
				</div>
				
				<div class="mi-body">
					<div class="mi-body-left">
						<div class="mi-body-head" style="background-image: url('../img/头像背景.png');">
							<img class="mi-body-heades" src="../<%=request.getParameter("tupian") %>"/>
						
						
							<div class="mi-body-name"><%=request.getParameter("name") %></div>
							<div class="mi-body-telet"> <span class="">+86 <%=request.getParameter("tele") %></span></div>
						</div>
						
						<ul class="mi-body-menu">
							<li class="mi-body-li" style="padding-left:70px;border-left: 5px solid #ff5c00;
			background-color: #fff3e6;" id="Denlu">
								<span class="li-text"><a href="">登录与安全</a></span>
							</li>
							
							<li class="mi-body-li" style="padding-left:70px;"id="Geren"onclick="toggleElements()">
								<span class="li-text"><a href="javascript:void(0);">个人信息</a></span>
							
							</li>
							
							<script>
								$('#Geren').click(function(){
									$(this).css({
										'border-left':'5px solid #ff5c00',
										'background-color':'#fff3e6'
									})
									$('#Denlu').css({
										'border':'none',
										'background-color':'#fff'
									})
								})
							</script>
							
							<li class="mi-body-li" style="padding-left:70px;"><span class="li-text">隐私中心</span></li>
							<li class="mi-body-li" style="padding-left:70px;"><span class="li-text">绑定授权</span></li>
							<li class="mi-body-li" style="padding-left:70px;"><span class="li-text">帮助中心</span></li>
						</ul>
					</div>
					
					<div class="mi-body-right"id="element1">
						<div>
							<div class="denfan">
								<div class="mi-dentilie"></div><span class="mi-text">登录方式</span>
							</div>
							
							<div class="mi-zon">
							<div class="mi-dennei">
								<img class="mi-img" src="../img/登录素材1.png"/>
								<div class="mi-nei1">
									<div class="nei-text">安全手机</div>
									<div class="nei-tele"><span></span>+86 <%=request.getParameter("tele") %></div><div class="nei-biao"></div>
								</div>
							</div>
							<div class="mi-dennei">
								<img class="mi-img" src="../img/登录素材2.png"/>
								<div class="mi-nei1">
									<div class="nei-text">安全邮箱</div>
									<div class="nei-tele"><span style="color: #ff5c00;">未设置</span></div><div class="nei-biao"></div>
								</div>
							</div>
							<div class="mi-dennei">
								<img class="mi-img" src="../img/登录素材3.png"/>
								<div class="mi-nei1">
									<div class="nei-text">修改密码</div>
									<div class="nei-tele"><span></span>&nbsp;</div><div class="nei-biao"></div>
								</div>
							</div>
							<div class="mi-dennei">
								<img class="mi-img" src="../img/登录素材4.png"/>
								<div class="mi-nei1">
									<div class="nei-text">第三方账号</div>
									<div class="nei-tele"><span></span>&nbsp;</div><div class="nei-biao"></div>
								</div>
							</div>
							
							
							</div>
							<div class="denfan">
								<div class="mi-dentilie"></div><span class="mi-text">账号安全</span>
							</div>
							
							<div class="mi-zon2">
							<div class="mi-dennei">
								<img class="mi-img" src="../img/个人素材5.png"/>
								<div class="mi-nei1">
									<div class="nei-text">密保问题</div>
									<div class="nei-tele"><span style="color: #ff5c00;">未设置</span></div><div class="nei-biao"></div>
							</div>
							</div>
							<div class="mi-dennei">
								<img class="mi-img" src="../img/个人素材6.png"/>
								<div class="mi-nei1">
									<div class="nei-text">登录设备管理</div>
									<div class="nei-tele"><span></span>&nbsp;</div><div class="nei-biao"></div>
							</div>
							</div>
						</div>
					</div>
				</div>
				
				
				<div class="mi-body-right" style="display:none;"id="element2">
						<div>
							<div class="denfan">
								<div class="mi-dentilie"></div><span class="mi-text">个人信息</span>
							</div>
							
							<form action="XiugaiServlet" method="post" style="padding-bottom: 60px;" enctype="multipart/form-data">
							<input style="display: none;" name="id" value="<%=request.getParameter("id") %>">
								<div class="mi-xiugai" id="xiu1">
								<div class="mi-tou">
									<div class="tou-text">头像</div>
									<div class="tou-tu">
										<img src="../img/<%=request.getParameter("tupian") %>" class="tou-img"/>
									</div>
								</div>
								
								<div class="mi-tou">
									<div class="tou-text">昵称</div>
									<div class="tou-test2"><%=request.getParameter("name") %></div>
								</div>
								
								<div class="mi-tou">
									<div class="tou-text">性别</div>
									<div class="tou-test2"><%=request.getParameter("sex") %></div>
								</div>
								
								<div class="mi-tou">
									<div class="tou-text">电话</div>
									<div class="tou-test2"><%=request.getParameter("tele") %></div>
								</div>
								
								<div class="mi-geren">
									<div class="mi-bianji" onclick="Xiugai()">
										<div class="mi-xg">编辑</div>
									</div>
								</div>
								</div>
								
								
								
								<div class="mi-xiugai1" id="xiu2"  style="display:none;">
									<div class="mi-tou">
										<div class="tou-text">头像</div>
										<div class="tou-tu">
											<img src="../img/<%=request.getParameter("tupian") %>" class="tou-img" name="tupian"/>
											<input name="photo" type="file">
										</div>
										<div class="xiu-tou" style="background-image: url('../img/图标1.png');background-size: cover;"></div>
									</div>
									
									<div class="mi-tou">
										<div class="tou-text">昵称</div>
										
										 <input disabled  type="text" class="xiu-nichen" name="name" value="墨瞳" id="name" style="font-size: 17px;padding-left: 20px;margin-left: 35px;"/>
										
									</div>
									
									<div class="mi-tou">
										<div class="tou-text">性别</div>
										<div style="line-height: 60px;margin-left: 20px;">
										<label>
											<input type="radio" name="sex" value="男" class="xiu-xuan"/><span style="margin-left: 10px;">男</span>
										</label>
										<label>
											<input type="radio" name="sex" value="女" class="xiu-xuan"/><span style="margin-left: 10px;">女</span>
										</label>
										
										</div>
									</div>
									
									<div class="mi-tou">
										<div class="tou-text">电话</div>
										
										<input disabled type="text" name="tele" class="xiu-nichen" id="tele" value="18107339443" style="font-size: 17px;padding-left: 20px;margin-left: 35px;"/>
									</div>
									
									<div class="mi-geren">
										<div class="mi-bianji">
											<button type="submit" class="mi-xg1">保存</button>
											<script>
												$(function(){
													$(".mi-bianji").click(function(){
														 $("#name,#tele").prop('disabled', false);
														$("#name,#tele").css("background-color","#f9f9f9")
													})
												})
											</script>
										</div>
									</div>
								</div>
								
							</form>
							
					</div>
				</div>
				
				
			</div>
			
			
					
			
			
			
			
			<div class="mi-dibu">
				小米公司版权所有-京ICP备10046444-<a href="" style="color: #999;">京公网安备11010802020134号</a>-京ICP证110507号
			</div>
		</div>
		
	</body>
</html>