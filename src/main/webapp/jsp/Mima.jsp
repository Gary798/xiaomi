<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>修改密码</title>
		<link rel="stylesheet" href="../css/Mima.css?v=1"/>
	</head>
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
	<body>
		<div class="ant-moder">
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
		</div>
	</body>
</html>