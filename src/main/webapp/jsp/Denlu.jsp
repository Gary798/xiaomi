<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
	</head>
<link rel="stylesheet" href="../css/Denlu.css?v=1"/>
	<script>
	  function toggleElements() {
	    var element1 = document.getElementById("element1");
	    var element2 = document.getElementById("element2");
	
	    if (element1.style.display === "none") {
	      element1.style.display = "block";
	      element2.style.display = "none";
	    } else {
	      element1.style.display = "none";
	      element2.style.display = "block";
	    }
	  }
	  function checkRadioButton() {
          // 获取单选框元素
          var radioButton = document.getElementById("myRadioButton");

          // 检查单选框是否被选中
          if (radioButton.checked) {
        	  return true;
             
          } else {
              alert("请勾选小米用户协议及隐私政策");
              return false;
          }
      }
	  
	  function jiaz(){
			var tijiao=document.querySelector("#tijiao");
			tijiao.onclick=function(e){
				var zhao=document.querySelector("#zh").value;
				var mm=document.querySelector("#mm").value;
				if(zhao==" "||mm==" "){
					alert("账号和密码不能为空");
					return false;
				}else{
					return true;
				}
			}
		}
	</script>
	<body>
		<div>
		<div class="mi-background" style="background-position: 50%;background-size: cover;width: 25%;">
			<img style="width: 100%;height: 1000px;" src="../img/登录背景.jpg"/>
		</div>
		<div style="width: 70%; float: left;">
		<div class="mi-head">
			<div class="mi-head-tilte">
				<img id="pahd" src="../img/标题.png" width="60" height="60" />
				<span id="tilte">小米账号</span>
			</div>
			
			<div class="mi-mve">
			<a class="mi-id-a" href="">用户协议</a>
			<a class="mi-id-a" href="">隐私政策</a>
			<a class="mi-id-a" href="">帮助中心</a>
		</div>
		</div>
	
		<div class="mi-body" style="padding-top: 20px">
			
			<div class="mi-den"id="element1">
				<div class="mi-den-y">
					<div class="mi-den-tilie">
						<div class="denlu">
							<a  href="" style="color: #333;font-weight: 500;border-bottom: 4.5px solid #ff5c00;">登录</a>
							<div style="margin-left: 25px;">
								<a href="javascript:void(0);" style="color: #838383;" onclick="toggleElements()">注册</a>
							</div>
							
						</div>
					</div>
				</div>
				
				
				<div class="mi-zhanhao">
				
						<form class="mi-form" action="DenluServlet" method="get" onsubmit="return checkRadioButton()">
							<div class="mi-form-zhan">
								<input class="name" name="zhan" type="text" id="zh" placeholder="手机号/账号"/>
							</div>
							<div class="mi-form-zhan">
								<input class="pass" name="pass" type="password" id="mm"  placeholder="密码"/>
							</div>
						
						
						<div class="mi-gui">
							<span class="mi-danxun"><input class="danxun" type="checkbox" id="myRadioButton" /></span>
							<span style="font-size: 18px;float: left;position:relative;bottom: 18px;left: 35px">已阅读并同意小米账号<a style="color: #333;" href="">用户协议</a>和<a href="" style="color: #333;">隐私政策</a></span>
						</div>
						
						<button type="submit" class="mi-button" id="tijiao" style="margin-top: 20px;margin-bottom: 10px;">登录<span class="mi-touch"></span></button>
						</form>
						<div class="mi-action">
							<div class="mi-wanji" style="float: left;margin-bottom: 10px;"><a href="" style="color: #ff5c00;font-size: 18px;">忘记密码?</a></div>
							<div class="mi-shouji" style="float:right;margin-bottom: 10px;"><a href="" style="color: #ff5c00;font-size: 18px;">手机号登录</a></div>
						</div>
					</div>
					
					<div class="mi-qita">
						<div style="text-align: center;color: #aaa;font-size: 19px;font-weight: 400;line-height: 185px;margin-top: 20px;">其他方式登录</div>
					</div>
					
			</div>
			
			
			
			<div class="mi-zhuce" id="element2"  style="display: none;">
				
				<div class="mi-den-y">
					<div class="mi-den-tilie">
						<div class="denlu">
							<a  href="javascript:void(0);" style="color: #838383;" onclick="toggleElements()">登录</a>
							<div  style="margin-left: 20px;">
								<a href="javascript:void(0);" style="color: #333;font-weight: 500;border-bottom: 4.5px solid #ff5c00;" >注册</a>
							</div>
							
						</div>
					</div>
				</div>
				
				<div class="mi-zhanhao">
						<form class="mi-form" action="ZhuceServlet" method="post" onsubmit="return checkRadioButton1()">
						<div class="mi-form-zhan">
								<input class="nichen" type="text" name="name"    placeholder="昵称"/>
							</div>
							<div class="mi-form-zhan">
								<input class="name" type="text" name="zhan" id="zh"  placeholder="账号"/>
							</div>
							<div class="mi-form-zhan">
								<input class="pass" type="password" name="pass" id="mm"  placeholder="密码"/>
							</div>
						
						
						<div class="mi-gui">
							<span class="mi-danxun"><input class="danxun" type="checkbox" id="myRadioButton" /></span>
							<span style="font-size: 18px;float: left;position:relative;bottom: 18px;left: 30px">已阅读并同意小米账号<a style="color: #333;" href="">用户协议</a>和<a href="" style="color: #333;">隐私政策</a></span>
						</div>
						
						<button type="submit" class="mi-button" id="tijiao" style="margin-top: 20px;margin-bottom: 10px;">注册<span class="mi-touch"></span></button>
						</form>
						
					</div>
					
					<!-- 注册底部 -->
			</div>
			
			
		</div>
		<div class="mi-dibu">
				小米公司版权所有-京ICP备10046444-<a href="" style="color: #999;">京公网安备11010802020134号</a>-京ICP证110507号
			</div>
		</div>
		</div>
	</body>
</html>