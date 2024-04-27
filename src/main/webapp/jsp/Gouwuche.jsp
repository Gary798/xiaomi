<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="v" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="l" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="../css/Gouwuche.css?v=1" />
<script src="../js/Dizhi.js"></script>
<script src="../js/jquery-3.5.1.min.js"></script>
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
								<span class="name">${uesr.get(0).getUser_name()}</span>
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
														
					<l:forEach items="${list}" var="l">
					<form action="Gouwuche2Servlet" method="post">
					<div class="shouhuo">
														
					<input name="id" class="id" style="display: none;" value="${l.getAdd_id()}"></input>
					<h4 class="dname">${l.getAdd_name()}</h4>
					<p class="dtele">${l.getAdd_tel()}</p>
					<p class="dress">${l.getAddress()}</p>									
					</div>
					</form>
					</l:forEach>
													
					</div>
				
							
							
					</div>
					<br>
					<div class="head-deisli">商品</div>
					<v:forEach items="${map}" var="m">
					<div class="section">
						
						
						<div class="goods-list">
							
							<div class="goods-itme">
								<div class="goods-img">
									<img class="image" src="../img/${m.img_url}" style="width: 30px;height: 30px;"/>
								</div>
								
								<div class="goods-name">
									<span style="color: black;">${m.pro_name}</span>
								</div>
								
								<div class="goods-prce">
									<div class="good-total1">${m.car_count}</div>
								</div>
								
								<div class="goods-prce">
									<div class="good-total">${m.car_jg*m.car_count}</div>
								</div>
							</div>
							
						</div>
						
					</div>
					</v:forEach>
					
					<c:set var="totalPrice" value="0" /> <!-- 初始化总价为0 -->

<script>
$(function () {
	 // 假设map是一个包含ShoppingCartItem对象的数组
    var totalPrice = 0; // 初始化总价为0

    // 遍历数组计算总价
    $(".good-total").each(function(item) {
        var carJg =$(this).text() ; // 获取商品价格
        
        totalPrice += parseInt(carJg); // 累加到总价上
    });
		$(".num").text(totalPrice)
    // 将 JavaScript 中的总价赋值给 JSP 变量
})

</script>
					<!-- 输出商品总价 -->
					<div class="weos">
						<table class="total">
							<tbody>
							<tr>
								<td>商品总价:</td>
								<td>
									<span class="num"><c:out value="${totalPrice}" /></span>元
								</td>
							</tr>
							<tr>
								<td>运费:</td>
								<td>
									<span class="num1">0</span>元
								</td>
							</tr>
							
							<tr>
								<td>应付金额:</td>
								<td>
									<span class="num" style="font-size: 30px;color: #ff6700;">${m.car_jg*m.car_count}</span>元
								</td>
							</tr>
							</tbody>
						</table>
							<script type="text/javascript">
					$(function() {
						var dname;
						var dtele;
						var dress;
						$(".shouhuo").click(function() {
							dname = $(this).find(".dname").text();
							dtele = $(this).find(".dtele").text();
							dress = $(this).find(".dress").text();
							
						}) 
						
						$("#xiadan").click(function() {
							var img = [];
							var sname=[];
							var count=[];
							var zj=[];
							var zon = document.querySelector(".num").innerText;
							
							$('.image').each(function() {
							    // 获取相对路径
							    var relativePath = $(this).attr('src');
							    
							    // 如果相对路径包含斜杠，则截取到最后一个斜杠为止，即基本路径部分
							    var imagePath = relativePath.substring(relativePath.indexOf('img/') + 4);
							    img.push(imagePath);
							});
							$(".goods-itme").each(function() {
							    // 获取当前商品的名称、数量和单价
							    var name = $(this).find(".goods-name").text();
							    var quantity = $(this).find(".good-total1").text();
							    var price = $(this).find(".good-total").text();
							    
							    // 将商品信息存入相应的数组
							    sname.push(name);
							    count.push(quantity);
							    zj.push(price);
							});
							
							window.location.href="DindanServlet?dname="+dname+"&dtele="+dtele+"&dress="+dress
									+"&img="+img+"&sname="+sname+"&count="+count+"&zj="+zj+"&zon="+zon;
						}) 
					})
					</script>
					</div>
					
					<div class="cleadsi">
						<div class="hendle">
							<div class="operating">
								<a href="javascript:void(0)" id="xiadan" class="btn btn-primary">立即下单</a>
								<a href="javascript:void(0)" class="btn btn-return">返回购物车</a>
							</div>
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
		        <form action="GouwucheServlet" method="post">
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
</body>
</html>