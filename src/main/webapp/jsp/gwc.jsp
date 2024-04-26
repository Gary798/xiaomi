<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<link rel="stylesheet" href="../css/头尾.css"/>
		<script src="../js/jquery-3.1.0.js"></script>
		<style>
			.nav{
			    font-size: 12px;
			    border-bottom: 2px solid #ff6700;
			    background: #fff;
			    color: #b0b0b0;
			    position: relative;
			    z-index: 20;
			    height: 100px;
			}
			.nav2{
				width: 1226px;
			    margin-right: auto;
			    margin-left: auto;
			}
			.logo{
				width: 50px;
			    margin-top: 26px;
				height: 50px;
			    float: left;
				margin-right: 50px;
			}
			.logo img{
				width: 100%;
			}
			.nerlo,.yh{
				float: left;
				margin-top: 26px;
			}
			.nerlo h2{
			    float: left;
			    line-height: 48px;
			    margin-top: 0;
			    font-size: 28px;
				font-weight: 400;
				color: #424242;
			}
			.nerlo p{
				float: left;
			    height: 20px;
			    line-height: 20px;
			    margin-top: 20px;
			    margin-left: 15px;
			    color: #757575;
			}
			.main{
				padding: 38px 0;
				background: #f5f5f5;
			}
			.gwc{
				width: 1230px;
				margin: 0 auto;
				background-color: #fff;
			}
			.gwc_tb{
				height: 70px;
				    line-height: 70px;
				    padding-right: 26px;
				    color: #424242;
					border-bottom: 1px dotted #e0e0e0;;
			}
			/* 外部容器样式 */
			.qx {
			    cursor: pointer;
				width: 90px;
				margin-left: 30px;
			}
			
			/* 隐藏原生复选框 */
			.qx input[type="checkbox"] {
			    transform: scale(1.5); /* 放大1.5倍 */
			    margin-right: 5px; /* 可根据需要调整 */
				border: 1px dotted #e0e0e0;
			}
			.qx,.spimg,.spname,.sl,.delect,.xiaoji,.dj{
				display: inline-block;
				vertical-align: middle;
				font-size: 14px;
			}
			.spimg{
				width: 110px;
				
			}
			.spname,.name{
				width: 380px;
			}
			.dj,.danjia{
				    width: 140px;
				    text-align: center;
				    color: #424242;
			}
			.sl,.shu{
				    width: 150px;
				    text-align: center;
				    color: #424242;
			}
			.xiaoji,.xj{
				width: 120px;
				padding-right: 70px;
				text-align: right;
			}
			.shu{
				    width: 148px;
				    height: 38px;
				    border: 1px solid #e0e0e0;
				    text-align: center;
				    background-color: #fff;
				    position: relative;
				    zoom: 1;
			}
			.shu input{
				float: left;
				    width: 72px;
				    height: 38px;
				    line-height: 38px;
				    padding: 0;
				    border-width: 0;
				    color: #424242;
				    font-size: 16px;
				    text-align: center;
			}
			.jian, .jia {
			    float: left;
			    width: 38px;
			    height: 38px;
			    line-height: 38px;
			    color: #757575;
			    font-size: 20px;
			    -webkit-transition: all .3s;
			    transition: all .3s;
			    cursor: pointer;
			}
			
			/* 悬停时的样式 */
			.jian:hover, .jia:hover {
			    background-color: #757575; /* 悬停时背景颜色变成 #757575 */
			    color: #fff; /* 文字颜色变为白色 */
			}
			.delect{
				    width: 80px;
				    text-align: center;
			}
			.hang{
				    padding: 15px 26px 15px 0;
				    border-top: 1px solid #e0e0e0;
			}
			.hangimg{
				    width: 80px;
				    height: 80px;
				    padding-right: 20px;
				    overflow: hidden;
					
			}
			.hangimg img{
				width: 100%;
				height: 100%;
				object-fit: cover;
			}
			.xj{
				color: #ff6700;
				font-size: 16px;
				padding-right: 70px;
				    padding-left: 30px;
			}
			.name,.hangimg,.danjia,.shu,.xj,.sc{
				display: inline-block;
				vertical-align: middle;
			}
			.sc{
				padding: 3px 7px;
				border-radius: 50%;
			}
			.sc:hover{
				color: #fff;
				background-color: #ff6700;
				cursor: pointer;
			}
			.spjs{
				    height: 50px;
				    text-align: right;
				    background-color: #fff;
				    -webkit-transition: background .3s ease, top .3s ease;
				    transition: background .3s ease, top .3s ease;
				    position: relative;
			}
			.jzbj{
				background-color: #f5f5f5;
				padding-top: 30px;
			}
			.yssp,.jxgw{
				    float: left;
					line-height: 50px;
					margin-left: 32px;
					font-size: 14px;
					
			}
			.jxgw{
				color: #757575;
				cursor: pointer;
			}
			.slsp{
				color: #ff6700;
				margin: 0px 5px;
			}
			.hj{
				    padding-left: 13px;
				    color: #ff6700;
			}
			.hj span{
				font-size: 30px;
			}
			.a_js{
				    width: 200px;
				    height: 48px;
				    line-height: 48px;
				    font-size: 18px;
				    margin-left: 50px;
				    vertical-align: top;
					transition: color .3s;
					background: #ff6700;
				    border-color: #ff6700;
				    color: #fff;
				    display: inline-block;
				    border: 1px solid #b0b0b0;
				    text-align: center;
				    color: #b0b0b0;
				    cursor: pointer;
				    -webkit-transition: all .4s;
			}
			.a_js:hover{
				color: #fff;
			}
		</style>
		
	</head>
	<body>
		<div class="nav">
			<div class="nav2">
				<div class="logo">
					<img src="../img/logo-mi2.png"/>
				</div>
				<div class="nerlo">
					<h2>
                    我的购物车
					</h2>
					<p>温馨提示：产品是否购买成功，以最终下单为准哦，请尽快结算</p>
				</div>
				<div class="yh"></div>
			</div>
		</div>
		<div class="main">
			<div class="gwc">
				<div class="gwc_tb">
					<div class="qx" class="xz">
						 <input type="checkbox" id="selectAll" />
						<label for="selectAll">全选</label>
					</div>
					<div class="spimg">&nbsp;</div>
					<div class="spname">商品名称</div>
					<div class="dj">单价</div>
					<div class="sl">数量</div>
					<div class="xiaoji">小计</div>
					<div class="delect">操作</div>
				</div>
				<div class="gwc_body">
					<div>
					<c:forEach varStatus="loop" items="${listgwc}" var="x" >
    <div class="hang">
  		<div class="car_id" style="display: none">${x.car_id}</div>
        <a class="CunZhi"  spid="${listgwc[loop.index].pro_id}" yhid="${listgwc[loop.index].user_id}">
            <div class="qx xz">
                <input type="checkbox"/>
            </div>
            
            <div class="hangimg">
           
                <img src="${listgwc[loop.index].img_url}"/>
		
            </div>
            	
            <div class="name">${listgwc[loop.index].pro_name}</div>
            <div class="danjia"><span class="jiaqian">${listgwc[loop.index].car_jg}</span>元</div>
            <div class="shu">
                <a class="jian">-</a>
                <input c type="text" value="${listgwc[loop.index].car_count}"/>
                <a class="jia">+</a>
            </div>
            <div class="xj"><span class="je"></span>元</div>
            <div class="sc">×</div>
        </a>
    </div>
    <script type="text/javascript">
        $(document).ready(function(){
            // 获取单价和数量
            var danjia = parseFloat($('.danjia .jiaqian').eq(${loop.index}).text());
            var shuliang = parseInt($('.shu input').eq(${loop.index}).val());
            // 计算小计并设置到对应的 .je 元素中
            var xiaoji = danjia * shuliang;
            $('.xj .je').eq(${loop.index}).text(xiaoji.toFixed(2));
        });
    </script>
</c:forEach>
	
						
						<div class="jzbj"></div>
						<div class="spjs">
							<div class="lianjie">
								<a class="jxgw" href="xiala">继续购物</a>
								<span class="yssp">已选择<span class="slsp">0</span>件</span>
							</div>
							<span class="hj">合计：<span>0</span>元</span>
							<a class="a_js">去结算</a>
						</div>
						
					</div>
				</div>
			</div>
		</div>
		
		<script type="text/javascript">
		//删除
		$(document).ready(function(){
		    $(".sc").on("click", function() {
		        // 获取购物车 ID
		        var carId = $(this).closest('.hang').find('.car_id').text().trim();
		        var result = confirm("您确定要删除该商品吗？");
        	    if (result) {
        	     // 用户点击了确认按钮，执行删除操作
		        // 发送 AJAX 请求到 Servlet
		        $.ajax({
		            url: "GwcdeleteServlet",
		            method: "get",
		            data: {
		                carId: carId
		            },
		            success: function(response) {
		            	// 处理成功响应
		            	 location.reload(); // 重新加载整个页面
		            },
		            error: function(xhr, status, error) {
		                // 处理错误
		                console.error("Error: " + error);
		            }
		        });
        	   }
		    });
		});
		</script>
		<script type="text/javascript">
		//消失焦点
$(document).ready(function(){
    // 当输入框失去焦点时
    $(".shu input").on("blur", function() {
        // 获取购物车 ID
        var carId = $(this).closest('.hang').find('.car_id').text().trim();
        // 获取数量
        var quantity = parseInt($(this).val());

        // 确保数量大于等于0
        quantity = Math.max(0, quantity);

        // 更新页面显示的数量
        $(this).val(quantity);

        // 发送 AJAX 请求到 Servlet
        $.ajax({
            url: "UPServlet",
            method: "get",
            data: {
                carId: carId,
                quantity: quantity
            },
            success: function(response) {
                // 处理成功响应
            },
            error: function(xhr, status, error) {
                // 处理错误
                console.error("Error: " + error);
            }
        });
        
        // 获取单价
        var danjia = parseFloat($(this).closest('.hang').find('.danjia .jiaqian').text());
        // 计算小计
        var xiaoji = danjia * quantity;
        // 更新小计显示
        $(this).closest('.hang').find('.xj .je').text(xiaoji.toFixed(2));
    });
});
</script>
		
		
		<script type="text/javascript">
		$(document).ready(function(){
		    $(".jian, .jia").on("click", function() {
		    	// 获取购物车 ID
		        var carId = $(this).closest('.hang').find('.car_id').text().trim();
		        //alert(carId);
		        // 获取数量
		        var quantity = parseInt($(this).siblings("input").val());
		       // alert(quantity)
		    	 // 增加或减少数量
		        if ($(this).hasClass("jian")) {
		            quantity = Math.max(0, quantity);
		        } else {
		            quantity += 1-1;
		        }

		        // 更新页面显示的数量
		        $(this).siblings("input").val(quantity);

		        // 发送 AJAX 请求到 Servlet
		        $.ajax({
		            url: "UPServlet",
		            method: "get",
		            data: {
		                carId: carId,
		                quantity: quantity
		            },
		            success: function(response) {
		                // 处理成功响应
		            },
		            error: function(xhr, status, error) {
		                // 处理错误
		                console.error("Error: " + error);
		            }
		        });
		        
		    });
		});
		</script>
		
		<script>
		    document.addEventListener('DOMContentLoaded', function() {
		        const checkboxes = document.querySelectorAll('.gwc_body input[type="checkbox"]');
		        const quantityInputs = document.querySelectorAll('.gwc_body input[type="text"]');
		        const hj = document.querySelector('.hj span');
		        const slsp = document.querySelector('.slsp');
		
		        // 更新合计金额和已选择商品数量
		        function updateTotal() {
		            let totalSelected = 0;
		            let totalPrice = 0;
		
		            checkboxes.forEach(function(checkbox, index) {
		                if (checkbox.checked) {
		                    const quantity = parseInt(quantityInputs[index].value);
		                    const price = parseFloat(checkbox.closest('.hang').querySelector('.jiaqian').textContent);
		                    totalSelected += quantity;
		                    totalPrice += price * quantity;
		                }
		            });
		
		            slsp.textContent = totalSelected;
		            hj.textContent = totalPrice.toFixed(2);
		        }
		
		        // 初始化
		        updateTotal();
		
		        // 监听复选框状态改变事件
		        checkboxes.forEach(function(checkbox) {
		            checkbox.addEventListener('change', function() {
		                updateTotal();
		            });
		        });
		
		     // 监听商品数量输入框失焦事件
		        quantityInputs.forEach(function(input, index) {
		            input.addEventListener('blur', function() {
		                let value = parseInt(this.value);
		                if (isNaN(value) || value < 1) {
		                    value = 1;
		                } else if (value > 50) {
		                    value = 50;
		                }
		                this.value = value;

		                // 获取单价
		                const price = parseFloat(checkboxes[index].closest('.hang').querySelector('.jiaqian').textContent);
		                // 计算小计金额
		                const subtotal = price * value;
		                // 更新小计金额显示
		                checkboxes[index].closest('.hang').querySelector('.je').textContent = subtotal.toFixed(2);

		                updateTotal();
		            });
		        });

		
		        // 监听点击减号按钮事件
		        document.querySelectorAll('.gwc_body .jian').forEach(function(button, index) {
		            button.addEventListener('click', function() {
		                const currentValue = parseInt(quantityInputs[index].value);
		                if (currentValue > 1) {
		                    quantityInputs[index].value = currentValue - 1;
		
		                    // 获取单价
		                    const price = parseFloat(checkboxes[index].closest('.hang').querySelector('.jiaqian').textContent);
		                    // 计算小计金额
		                    const subtotal = price * (currentValue -1);
		                    // 更新小计金额显示
		                    checkboxes[index].closest('.hang').querySelector('.je').textContent = subtotal.toFixed(2);
		
		                    updateTotal(); // 更新合计金额和已选择商品数量
		                }
		            });
		        });
		
		        // 监听点击加号按钮事件
		        document.querySelectorAll('.gwc_body .jia').forEach(function(button, index) {
		            button.addEventListener('click', function() {
		                const currentValue = parseInt(quantityInputs[index].value);
		                if (currentValue < 50) {
		                    quantityInputs[index].value = currentValue + 1;
		
		                    // 获取单价
		                    const price = parseFloat(checkboxes[index].closest('.hang').querySelector('.jiaqian').textContent);
		                    // 计算小计金额
		                    const subtotal = price * (currentValue + 1);
		                    // 更新小计金额显示
		                    checkboxes[index].closest('.hang').querySelector('.je').textContent = subtotal.toFixed(2);
		
		                    updateTotal(); // 更新合计金额和已选择商品数量
		                }
		            });
		        });
		    });
		</script>


		<!--价格-->
		<script>
		document.addEventListener('DOMContentLoaded', function() {
		    const selectAll = document.getElementById('selectAll');
		    const checkboxes = document.querySelectorAll('.gwc_body input[type="checkbox"]');
		    const slsp = document.querySelector('.slsp');
		    const hj = document.querySelector('.hj span');
		
		    // 点击全选按钮时更新已选择商品数量和合计金额
		    selectAll.addEventListener('click', function() {
		        let totalSelected = 0;
		        let totalPrice = 0;
		
		        checkboxes.forEach(function(checkbox) {
		            checkbox.checked = selectAll.checked;
		
		            if (checkbox.checked) {
		                const hang = checkbox.closest('.hang');
		                const je = parseFloat(hang.querySelector('.jiaqian').textContent);
		                const shu = parseInt(hang.querySelector('input[type="text"]').value);
		                totalSelected += shu;
		                totalPrice += je * shu;
		            }
		        });
		
		        slsp.textContent = totalSelected;
		        hj.textContent = totalPrice.toFixed(2);
		    });
		
		    // 单个复选框状态改变时更新已选择商品数量和合计金额，并更新全选按钮状态
		    checkboxes.forEach(function(checkbox) {
		        checkbox.addEventListener('change', function() {
		            let totalSelected = 0;
		            let totalPrice = 0;
		            let allChecked = true;
		
		            checkboxes.forEach(function(cb) {
		                if (cb.checked) {
		                    const hang = cb.closest('.hang');
		                    const je = parseFloat(hang.querySelector('.jiaqian').textContent);
		                    const shu = parseInt(hang.querySelector('input[type="text"]').value);
		                    totalSelected += shu;
		                    totalPrice += je * shu;
		                } else {
		                    allChecked = false;
		                }
		            });
		
		            slsp.textContent = totalSelected;
		            hj.textContent = totalPrice;
		            selectAll.checked = allChecked;
		        });
		    });
		});
		</script>


		
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
</html>