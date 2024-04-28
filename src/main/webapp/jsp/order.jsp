<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://www.trkj.com/lim/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/order.css"/>
<link rel="stylesheet" href="../css/orderup.css"/>
<style type="text/css">
	body{
		background-color: #fff;
	}
</style>
<title>订单管理</title>
</head>
	<script src="../js/jquery-3.1.0.js"></script>
	<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.js"></script>
	<script src="https://cdn.bootcss.com/distpicker/2.0.1/distpicker.js"></script>
	<script>
		$(function(){
			//删除当前行数据
	         $('.tabdelbtn').click(function(){
	        	    // 获取当前行（<tr>元素）
	        	    var row = $(this).closest('tr');
	        	    // 获取第一列的值（订单ID）
	        	    var id = row.find('td:first').text();

	        	    // 弹出确认框
	        	    var result = confirm("您确定要删除吗？");
	        	    if (result) {
	        	        // 用户点击了确认按钮，执行删除操作
	        	        $.ajax({
	        	            type: "GET",
	        	            url: 'orderdelbtnSer',
	        	            data: { id: id }, // 将ID包装在对象中传递
	        	            success: function(response){
	        	                // 在此处可能需要刷新页面或更新数据表格等
	        	                location.href = "orderpage";
	        	            },
	        	            error: function(xhr, status, error){
	        	                // 处理错误响应
	        	                alert('保存失败: ' + error);
	        	            }
	        	        });
	        	     } 
	        	});
	        	
	       		//编辑当前行数据
	         	$('.tabbjbtn').click(function(){
	         		var row = $(this).closest('tr'); // 找到最近的tr元素
	        	    var id = row.find('td:nth-child(1)').text(); 
	        	    var sname = row.find('td:nth-child(2)').text(); 
	        	    var number = row.find('td:nth-child(4)').text(); 
	        	    var state = row.find('td:nth-child(5)').text(); 
	        	    var note = row.find('td:nth-child(7)').text(); 
	        	    $('#or_id').val(id);
	        	    $('#sname').val(sname);
	        	    $('#upphone').val(number);
	        	    // 修改状态选择框的选项
	        	    if(state.trim() === '待支付'){
	        	        $('#upordstate').val("1");
	        	    } else if(state.trim() === '待收货'){
	        	        $('#upordstate').val("2");
	        	    } else {
	        	        $('#upordstate').val("3");
	        	    } 
	        	    
	        	    $('#note').val(note);
	        	    
	        	    // 显示修改面板
	        	    $('#overlay').css('display', 'block');
	        	});

	         	 // 点击保存按钮时发送数据到Servlet
	         	$('.up-save-btn').click(function() {
	         	    var formData = {
	         	        or_id: $('#or_id').val(),
	         	        sname: $('#sname').val(),
	         	        upordstate: $('#upordstate').val(),
	         	        upphone: $('#upphone').val(),
	         	        shen: $('[name="shen"]').val(),
	         	        shi: $('[name="shi"]').val(),
	         	        qu: $('[name="qu"]').val(),
	         	        note: $('#note').val()
	         	    };

	         	    $.ajax({
	         	        url: 'orderup',
	         	        type: 'GET',
	         	        data: formData,
	         	        success: function(response) {
	         	            // 关闭修改面板
	         	            $('#overlay').css('display', 'none');
	         	            location.href = "orderpage";
	         	        },
	         	        error: function(xhr, status, error) {
	         	            alert('保存失败: ');
	         	            // 处理发送失败后的逻辑
	         	        }
	         	    });
	         	});

	       		
		});
		//关闭修改弹窗
    	function upcloseModal() {
    	  var overlay = document.getElementById('overlay');
    	  overlay.style.display = 'none';
    	}
	</script>
<body>
		<div class="ordnav">
		<!-- 搜索&条件分页 -->
			<form action="orderpage" method="get">
				<label for="">电话号码：</label>
				<input type="text" id="ordnum" name="ordnum" value=''/>
				
				<label for="">订单状态：</label>
				<select name="ordstate" id="ordstate">
				  <option value="0" >所有</option>
				  <option value="1" ${state==1?"selected":" " }>待支付</option>
				  <option value="2" ${state==2?"selected":" " }>待收货</option>
				  <option value="3" ${state==3?"selected":" " }>已收货</option>
				</select>
				
				
				<label for="">创建时间：</label>
				<input type="date" id="ord_time" name="ord_time">
				
				<input type="submit" value="搜索" class="ordsel" />
				<input type="reset" class="ordres"/>
			</form>
		</div>
		<div class="cont">
			<!-- 修改弹窗 -->
			<div id="overlay" class="overlay">
				<div class="updatebox">
					<P>修改信息</P>
					<form class="upform">
					    <input type="hidden" name="or_id" id="or_id" value="">
					    <div>
					    	<label>收件人：</label>
					    	<input type="text" name="sname" id="sname" />
					    </div>
					    <div>
					    	<label>订单状态：</label>
					        <select name="upordstate" id="upordstate">
							  <option value="1" >待支付</option>
							  <option value="2" >待收货</option>
							  <option value="3" >已收货</option>
							</select>
					    </div>
					    <div>
					    	<label>收件人电话：</label>
					    	<input type="text" name="upphone" id="upphone"/>
					    </div>
					    <div class="diqu" data-toggle="distpicker" data-autoselect="3">
					    	<label>收获地址：</label>
			                <select v-model="work.province" name="shen"></select>
			                <select v-model="work.city" name="shi"></select>
			                <select v-model="work.area" name="qu"></select>
			            </div>
					    <div>
					    	<label>备注：</label>
					    	<input type="text" name="note" id="note"/>
					    </div>
					</form>
					<div class="upbtnbox">
					     <button type="button" class="up-save-btn">保存</button>
					     <button type="button" class="up-close-btn" onclick="upcloseModal()">关闭</button>
					</div>	
				</div>
			</div>
			<!-- 分页隐藏作用域 -->
			<input type="hidden" name="curpage" value="${param.curpage}">
	    	<input type="hidden" name="pagesize" value="5">

			<table id="table">
			<!-- 表头 -->
			 <thead>
				<tr style="background-color: #f5f5f6;">
					<td>订单编号</td>
					<td>收件人</td>
					<td>收获地址</td>
					<td>收件人电话</td>
					<td>订单状态</td>
					<td>创建时间</td>
					<td>备注</td>
					<td>操作</td>
				</tr>
				<!-- 循环打印表格 -->
				<c:forEach items="${orderlist}" var="p">
					<tr>
						<td>${p.or_id}</td>
						<td>${p.or_name}</td>
						<td>${p.or_address}</td>
						<td>${p.or_number}</td>
						<td>${p.or_state==1?"待支付":p.or_state==2?"待收货":"已收货"}</td>
						<td>${p.or_time}</td>
						<td>${p.or_note}</td>
						<td><button class="tabdelbtn">删除</button> <button class="tabbjbtn">编辑</button></td>
					</tr>
				</c:forEach>
			 </thead>
			</table>
			<!-- 分页 -->
			<c:set var="ordnum" value="${num}" />
			<c:set var="ordstate" value="${state}" />
			<c:set var="ord_time" value="${time}" />
			<x:page controller="orderpage" pagesize="5" total="${total}" curpage="${curpage}" where="ordnum=${num}&ordstate=${state}&ord_time=${time}"/>
		</div>
		<!-- 刷新表格数据 -->
		<c:if test="${orderlist==null}">
			<script type="text/javascript">
				location.href = "orderpage"
			</script>
		</c:if>	
</body>
</html>