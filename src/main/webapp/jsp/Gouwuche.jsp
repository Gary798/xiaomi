<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="../css/Gouwuche.css?v=1" />
<script src="../js/Dizhi.js"></script>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.js"></script>
<script src="https://cdn.bootcss.com/distpicker/2.0.1/distpicker.js"></script>
<body>
		
	<div  class="gouwu">
			<!-- 头部 -->
			<div class="head">
				<div class="conten">
					<div class="head-tu">
						<img src="../img/标题.png" style="width: 48px;height: 48px;"/>
					</div>
					<!-- 标题 -->
					<div class="head-title1">
						<h2>确认订单</h2>
					</div>
					
					<div class="site-tope">
						<div class="user-menu">
							<span class="user">
								<div class="user-w">
								<span class="name"> MT</span>
								<i class="infofont"></i>
								</div>
							</span>
							<span class="seep">|</span>
							<a  class="link" style="margin: 15px;">我的订单</a>
					</div>
				</div>
			</div>
		</div>
		
		<div class="page">
			<div class="connwsn">
				<div class="cheackout">
					<!-- 收货地址 -->
					<div class="deatil">
							<div class="head-title">收货地址</div>
							
							<div class="wos">
					<div class="shouhuo"  onclick="Dizhi()">
						<h3>新增收货地址</h3>
					</div>
														
					<c:forEach items="${list}" var="l">
					<form action="GouwucheServlet" method="post">
					<div class="shouhuo">
														
					<input name="id" class="id" style="display: none;" value="${l.getAdd_id()}"></input>
					<h4>${l.getAdd_name()}</h4>
					<p>${l.getAdd_tel()}</p>
					<p>${l.getAddress()}</p>									
					</div>
					</form>
					</c:forEach>
														
					</div>
							
							
					</div>
					
					<div class="section">
						<div class="head-deisli">商品</div>
						
						<div class="goods-list">
							<div class="goods-itme">
								<div class="goods-img">
									<img  src="" style="width: 30px;height: 30px;"/>
								</div>
								
								<div class="goods-name">
									<span style="color: black;">Redmi K70 12GB 256GB 晴雪</span>
								</div>
								
								<div class="goods-prce">
									<div class="good-total">1999元</div>
								</div>
							</div>
						</div>
						
					</div>
					
					<div class="weos">
						<table class="total">
							<tbody>
							<tr>
								<td>商品总价:</td>
								<td>
									<span class="num">89.00</span>元
								</td>
							</tr>
							<tr>
								<td>运费:</td>
								<td>
									<span class="num">0</span>元
								</td>
							</tr>
							
							<tr>
								<td>应付金额:</td>
								<td>
									<span class="num" style="font-size: 30px;color: #ff6700;">89.00</span>元
								</td>
							</tr>
							</tbody>
						</table>
					</div>
					
					<div class="cleadsi">
						<div class="hendle">
							<div class="operating">
								<a class="btn btn-primary">立即下单</a>
								<a href="javascript:void(0)" class="btn btn-return">返回购物车</a>
							</div>
						</div>
					</div>
					
					
				</div>
			</div>
		</div>
			<div class="mohu" style="display:none;"id="dizhi1">
			<div class="ii"></div>
			<div class="box" style="position: absolute;">
				<div class="dizhi">
				<div class="form-container">
		        <form action="GouwucheServlet" method="get">
					<div class="item">
					<input type="text" name="name" placeholder="收货人" style="padding-left: 10px"/>
					<input type="text" name="tele" placeholder="电话" style="padding-left: 10px"/>
					</div>
		            <div class="diqu" data-toggle="distpicker" data-autoselect="3">
		                <select v-model="work.province" name="shen"></select>
		                <select v-model="work.city" name="shi"></select>
		                <select v-model="work.area" name="qu"></select>
		            </div>
					
					<textarea class="myTextarea" name="myTextarea" value="" placeholder="详细信息" style="padding-left: 5px;padding-top: 5px"></textarea>
					<div style="margin: 20px;text-align: center;">
						<input type="submit" class="ti" value="提交">
						<input type="button" class="qu" id="dizhi1" onclick="Dizhi()" value="取消">
					</div>
		            
		        </form>
		    </div>
			</div>
			</div>
			</div>
		
		</div>
	
</body>
</html>