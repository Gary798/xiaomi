<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>个人资料</title>
	<link rel="stylesheet" href="../css/me.css"/>
</head>

<body>
	<div class="boxleft">
		<div class="til">个人资料</div>
		<div class="cont">
			<div class="txbox">
				<div class="tp"><img src="../img/Sonice.jpg" /></div>
				<a>修改图片</a>
			</div>
			<ul>
				<li><span class="p_l">用户昵称：</span><span class="p_r">哈哈</span></li>
				<li><span class="p_l">登录账号：</span><span class="p_r">456654</span></li>
				<li><span class="p_l">电话号码：</span><span class="p_r">123321</span></li>
				<li><span class="p_l">创建时间：</span><span class="p_r">2024-6-5</span></li>
			</ul>
		</div>
	</div>
	<div class="boxright">
		<div class="til2">基本信息</div>
		<div class="cont2">
			<ul>
				<li onclick="toggleContent(this,'content1')">基本资料</li>
				<li onclick="toggleContent(this,'content2')">修改密码</li>
			</ul>
			<div class="inpcont">
				<div class="content" id="content1">
					<form class="myform">
						<div>
							<label for="">用户昵称：</label>
							<input type="text" />
						</div>
						<div>
							<label for="">用户账号：</label>
							<input type="text" />
						</div>
						<div>
							<label for="">用户手机号：</label>
							<input type="text" />
						</div>
						<div>
						    <label for="male">性别：</label>
						    <input type="radio" id="male" name="gender" value="male"/><span>男</span>
						    <input type="radio" id="female" name="gender" value="female"/><span>女</span>
						</div>
						<div>
							<input type="button" value="保存"/>
							<input type="button" value="清空"/>
						</div>
					</form>
				</div>
				<div class="content" id="content2" style="display: none;">
					<form class="myform2">
						<div>
							<label for="">旧密码：</label>
							<input type="text" />
						</div>
						<div>
							<label for="">新密码：</label>
							<input type="text" />
						</div>
						<div>
							<label for="">再次确认：</label>
							<input type="text" />
						</div>
						<div>
							<input type="button" value="保存"/>
							<input type="button" value="清空"/>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script>
	    function toggleContent(element, contentId) {
	        // 移除所有li元素的边框颜色
	        var lis = document.querySelectorAll('.cont2 li');
	        lis.forEach(function (li) {
	            li.style.borderTopColor = 'transparent';
	        });
	
	        // 设置被点击的li元素的边框颜色为蓝色
	        element.style.borderTopColor = '#1890ff';
	
	        // 隐藏所有内容
	        var contents = document.querySelectorAll('.content');
	        contents.forEach(function (content) {
	            content.style.display = 'none';
	        });
	
	        // 显示与被点击项目相对应的内容
	        document.getElementById(contentId).style.display = 'block';
	    }
	</script>
</body>
</html>



