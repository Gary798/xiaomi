<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://www.trkj.com/lim/tags" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>角色管理</title>
	</head>
	<link rel="stylesheet" href="../css/user.css"/>
	<link rel="stylesheet" href="../css/upbox.css"/>
	<script src="../js/jquery-3.5.1.min.js"></script>
	<script>
	$(function(){
		 //新增数据
         $('.save-btn').click(function(){
             // 获取表单数据
             var formData = {
                 name: $('input[name="username"]').val(),
                 gender: $('select[name="gender"]').val(),
                 phone: $('input[name="phone"]').val(),
                 status: $('select[name="status"]').val(),
                 account: $('input[name="account"]').val(),
                 password: $('input[name="password"]').val(),
                 isadmin: $('input[name="isadmin"]').is(':checked')
          };
             // 发送 AJAX 请求
         $.ajax({
            	 type:"GET",
                 url: 'insertuser',
                 data: formData,
                 success: function(response){
                     // 处理成功响应
                     alert('保存成功');
                  	 // 重置表单
                     $('input[name="username"]').val('');
                     $('select[name="gender"]').val('1');
                     $('input[name="phone"]').val('');
                     $('select[name="status"]').val('1');
                     $('input[name="account"]').val('');
                     $('input[name="password"]').val('');
                     $('input[name="isadmin"]').prop('checked', false);
                     // 可以在此处执行其他操作，例如关闭模态框等
                     var modal = document.getElementById('modal');
                     modal.style.display = 'none';
                     location.href = "fy"
                 },
                 error: function(xhr, status, error){
                     // 处理错误响应
                     alert('保存失败: ' + error);
                 }
             });
         });
         
         //删除当前行数据
         $('.tabdelbtn').click(function(){
        	    // 获取当前行（<tr>元素）
        	    var row = $(this).closest('tr');
        	    // 获取第一列的值（用户ID）
        	    var id = row.find('td:first').text();

        	    // 弹出确认框
        	    var result = confirm("您确定要删除吗？");
        	    if (result) {
        	        // 用户点击了确认按钮，执行删除操作
        	        $.ajax({
        	            type: "GET",
        	            url: 'delbtnSer',
        	            data: { id: id }, // 将ID包装在对象中传递
        	            success: function(response){
        	                // 处理成功响应
        	                alert('删除成功');
        	                // 在此处可能需要刷新页面或更新数据表格等
        	                location.href = "fy";
        	            },
        	            error: function(xhr, status, error){
        	                // 处理错误响应
        	                alert('保存失败: ' + error);
        	            }
        	        });
        	     } 
        	});

	         //批量删除
	         $('.delbtn').on('click', function() {
	             var checkedCheckboxes = $('.checkid:checked');
	             if (checkedCheckboxes.length > 0) {
	                 // 有至少一个复选框被选中
	                 if (confirm('确定要删除选中的用户吗？')) {
	                     var userIds = [];
	                     checkedCheckboxes.each(function() {
	                         // 获取选中复选框对应的用户ID
	                         var Id = $(this).siblings('span').text();
	                         userIds.push(Id);
	                     });
	                     // 发送Ajax请求到Servlet
	                     $.ajax({
	                         url: 'checkdelSer',
	                         type: 'GET',
	                         data: {userIds: userIds},
	                         success: function(response) {
	                        	 alert('删除成功');
	                        	 location.href = "fy";
	                         },
	                         error: function(xhr, status, error) {
	                             // 请求失败时的处理逻辑
	                        	 alert('删除失败: ' + error);
	                         }
	                     });
	                 }
	             } else {
	                 // 没有复选框被选中
	                 alert('请先选择要删除的用户');
	             }
	         });
	         
	         $('.upbtn').click(function () {
	        	    var checkedCount = $('.checkid:checked').length;
	        	    if (checkedCount === 1) {
	        	        // 获取选中行的相关数
	        	        var userId = $('.checkid:checked').closest('tr').find('span').text();
	        	        var userName = $('.checkid:checked').closest('tr').find('td:eq(1)').text();
	        	        var userSex = $('.checkid:checked').closest('tr').find('td:eq(2)').text();
	        	        var userAccount = $('.checkid:checked').closest('tr').find('td:eq(3)').text();
	        	        var userTele = $('.checkid:checked').closest('tr').find('td:eq(4)').text();
	        	        var userIdentity = $('.checkid:checked').closest('tr').find('td:eq(5)').text();
	        	        var userState = $('.checkid:checked').closest('tr').find('td:eq(6)').text();
	        	        // 将数据填充到修改弹窗中的表单中，这里假设表单元素的ID分别为user_id、user_name等
	        	        $('input[name="uid"]').val(userId);
	        	        $('input[name="upname"]').val(userName);
	        	        $('input[name="upphone"]').val(userTele);
	        	        $('input[name="upaccount"]').val(userAccount);
	        	        if(userSex=='男'){
	        	        	$('select[name="upgender"]').val("1");
	        	        }else{
	        	        	$('select[name="upgender"]').val("0");
	        	        }
	        	        $('input[name="upaccount"]').val(userAccount);
	        	        if(userState=='正常'){
	        	        	$('select[name="upstatus"]').val("1");
	        	        }else{
	        	        	$('select[name="upstatus"]').val("0");
	        	        }
	        	        if(userIdentity=='管理员'){
	        	        	$('input[name="upisadmin"]').prop('checked', true);
	        	        }else{
	        	        	$('input[name="upisadmin"]').prop('checked', false);
	        	        }
	        	        // 显示修改弹窗
	        	        $('#overlay').css('display', 'block');
	        	        $('input[name="upaccount"]').prop("disabled", true);
	        	        
	        	        
	        	    } else if (checkedCount === 0) {
	        	        alert('请至少选择一个用户进行修改！');
	        	    } else {
	        	        alert('只能选择一个用户进行修改！');
	        	    }
	        	});
	         
	         //编辑当前行数据
	         $('.tabbjbtn').click(function(){
	        	    // 找到当前行
	        	    var currentRow = $(this).closest('tr');
	        	    // 获取当前行的数据
	        	    var userId = currentRow.find('td:eq(0)').text();
	        	    var userName = currentRow.find('td:eq(1)').text();
	        	    var userSex = currentRow.find('td:eq(2)').text();
	        	    var userAccount = currentRow.find('td:eq(3)').text();
	        	    var userTele = currentRow.find('td:eq(4)').text();
	        	    var userIdentity = currentRow.find('td:eq(5)').text();
	        	    var userState = currentRow.find('td:eq(6)').text();
	        	    // 将数据填充到修改弹窗中的表单中，这里假设表单元素的ID分别为user_id、user_name等
	        	    $('input[name="uid"]').val(userId);
        	        $('input[name="upname"]').val(userName);
        	        $('input[name="upphone"]').val(userTele);
        	        $('input[name="upaccount"]').val(userAccount);
        	        if(userSex=='男'){
        	        	$('select[name="upgender"]').val("1");
        	        }else{
        	        	$('select[name="upgender"]').val("0");
        	        }
        	        $('input[name="upaccount"]').val(userAccount);
        	        if(userState=='正常'){
        	        	$('select[name="upstatus"]').val("1");
        	        }else{
        	        	$('select[name="upstatus"]').val("0");
        	        }
        	        if(userIdentity=='管理员'){
        	        	$('input[name="upisadmin"]').prop('checked', true);
        	        }else{
        	        	$('input[name="upisadmin"]').prop('checked', false);
        	        }
	        	    // 显示修改弹窗
	        	    $('#overlay').css('display', 'block');
	        	    $('input[name="upaccount"]').prop("disabled", true);
	        	});
	         
		        // 点击保存按钮时发送数据到Servlet
	     	    $('.up-save-btn').click(function() {
	     	        // 获取修改面板中的所有数据
	     	        var upData = $('.upform').serialize();
	     	        // 发送ajax请求
	     	        $.ajax({
	     	            url: 'upbtnSer', // 修改为你的Servlet地址
	     	            type: 'GET', // 使用POST方法发送数据
	     	            data: upData, // 发送的数据
	     	            success: function(response) {
	     	                alert('保存成功');
	     	                // 关闭修改面板
	     	                $('#overlay').css('display', 'none');
	     	                // 获取所有复选框元素
	     	         	    var checkboxes = document.querySelectorAll('.checkid');
	     	                // 取消所有复选框的选中状态
	     	                checkboxes.forEach(function(checkbox) {
	     	         	       checkbox.checked = false;
	     	         	    });
	     	               location.href = "fy";
	     	            },
	     	            error: function(xhr, status, error) {
	     	                alert('保存失败: ' + error);
	     	            }
	     	        });
	     	    });
     	 
		       

     });
	//刷新
	function flu(){
		location.href = "fy"
	}
	//新增弹窗
	function showModal() {
	  document.getElementById("modal").style.display = "block";
	}
	function closeModal() {
      var modal = document.getElementById('modal');
      modal.style.display = 'none';
    }
	//修改弹窗
	function upcloseModal() {
	  var overlay = document.getElementById('overlay');
	  overlay.style.display = 'none';
	  // 获取所有复选框元素
	  var checkboxes = document.querySelectorAll('.checkid');
	  // 取消所有复选框的选中状态
	  checkboxes.forEach(function(checkbox) {
	     checkbox.checked = false;
	  });
	}

	</script>
	<body>
		<div class="nav">
			<!-- 搜索 -->
			<form action="fy" method="get">
				<label for="">用户名：</label>
				<input type="text" id="name" name="uname"/>
				<label for="">用户账号：</label>
				<input type="text" id="account" name="uaccount"/>
				<label for="">用户状态：</label>
				<select id="state" name="ustate">
				  <option value="3" selected>所有</option>
				  <option value="0">停用</option>
				  <option value="1">正常</option>
				</select>
				<label for="">创建时间：</label>
				<input type="date" id="creat_time" name="creat_time">
				<input type="submit" value="搜索" class="sel" />
				<input type="reset" class="res"/>
			</form>
		</div>
		<div class="cont">
			<!-- 增删改按钮 -->
			<div class="contbtn">
				<button class="inbtn" onclick="showModal()">新增</button>
				<button class="upbtn">修改</button>
				<button class="delbtn">删除</button>
				<button class="flubtn" onclick="flu()">刷新</button>
			</div>
			<!-- 新增弹窗 -->
			<div id="modal" class="modal">
				    <div class="modal-content"> 
						<div class="val">
							<P>基本信息</P>
							 <form action="#" class="form">
						        <div class="inp1"><label>用户名称：</label><input type="text" name="username" placeholder="请输入用户名称" /></div>
						        <div class="inp2"><label>用户性别：</label>
						            <select name="gender">
						                <option value="1">男</option>
						                <option value="0">女</option>
						            </select>
						        </div>
						        <div class="inp3"><label>手机号码：</label><input type="text" name="phone" placeholder="请输入手机号码" /></div>
						        <div class="inp4"><label>用户状态：</label>
						            <select name="status">
						                <option value="1">正常</option>
						                <option value="0">停用</option>
						            </select>
						        </div>
						        <div class="inp5"><label>登录账号：</label><input type="text" name="account" placeholder="请输入登录账号" /></div>
						        <div class="inp6"><label>登录密码：</label><input type="password" name="password" placeholder="请输入登陆密码" /></div>
						        <div class="inp7"><label>用户身份：</label><input type="checkbox" name="isadmin" /><span>管理员</span></div>
						        
						    </form>
							<div class="btnbox">
						         <button type="button" class="save-btn">保存</button>
						         <button type="button" class="close-btn" onclick="closeModal()">关闭</button>
						    </div>
							
						</div>
					</div>
				</div>
				<!-- 修改弹窗 -->
				<div id="overlay" class="overlay">
				<div class="updatebox">
					<P>修改信息</P>
					<form class="upform">
					    <input type="hidden" name="uid" value="">
					    <div><label>用户名称：</label><input type="text" name="upname" /></div>
					    <div><label>用户性别：</label>
					        <select name="upgender">
					            <option value="1">男</option>
					            <option value="0">女</option>
					        </select>
					    </div>
					    <div><label>手机号码：</label><input type="text" name="upphone"/></div>
					    <div><label>用户状态：</label>
					        <select name="upstatus">
					            <option value="1">正常</option>
					            <option value="0">停用</option>
					        </select>
					    </div>
					    <div><label>登录账号：</label><input type="text" name="upaccount"/></div>
					    <div><label>用户身份：</label><input type="checkbox" name="upisadmin" /><span>管理员</span></div>
					    
					</form>
					<div class="upbtnbox">
					     <button type="button" class="up-save-btn">保存</button>
					     <button type="button" class="up-close-btn" onclick="upcloseModal()">关闭</button>
					</div>	
				</div>
			</div>
				
			<!-- 分页隐藏作用域 -->
			<input type="hidden" name="curpage" value="${param.curpage}">
	    	<input type="hidden" name="pagesize" value="2">

			<table id="table">
			<!-- 表头 -->
			 <thead>
				<tr style="background-color: #f5f5f6;">
					<td>用户编号</td>
					<td>用户名称</td>
					<td>用户性别</td>
					<td>用户账号</td>
					<td>用户电话</td>
					<td>用户身份</td>
					<td>用户状态</td>
					<td>创建时间</td>
					<td>操作</td>
				</tr>
				<!-- 循环打印表格 -->
				<c:forEach items="${list}" var="p">
					<tr>
						<td><input type="checkbox" class="checkid" name="checkid" /><span>${p.user_id}</span></td>
						<td>${p.user_name}</td>
						<td>${p.user_sex}</td>
						<td>${p.user_account}</td>
						<td>${p.user_tele}</td>
						<td>${p.user_identity==0?"普通用户":"管理员"}</td>
						<td>${p.user_state==1?"正常":"停用"}</td>
						<td>${p.createtime}</td>
						<td><button class="tabdelbtn">删除</button> <button class="tabbjbtn">编辑</button></td>
					</tr>
				</c:forEach>
			 </thead>
			</table>
			<!-- 分页 -->
			<x:page controller="fy" pagesize="8" total="${total}" curpage="${curpage}" />
		</div>
		<!-- 刷新表格数据 -->
		<c:if test="${list==null}">
			<script type="text/javascript">
				location.href = "fy"
			</script>
		</c:if>				 		
	</body>
</html>