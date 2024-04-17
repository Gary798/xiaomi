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
		<script src="../js/Dizhi.js">
	
	</script>
</head>
<body>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.js"></script>
<script src="https://cdn.bootcss.com/distpicker/2.0.1/distpicker.js"></script>
<div style="width: 978px;height: 677px;background-color: white;">
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






