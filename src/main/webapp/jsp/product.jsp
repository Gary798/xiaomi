<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://www.trkj.com/lim/tags" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>商品管理</title>
		<link rel="stylesheet" href="../css/pro.css"/>
		<link rel="stylesheet" href="../css/upbox.css"/>
		<link rel="stylesheet" href="../css/proinsert.css"/>
	</head>
	<script src="../js/jquery-3.5.1.min.js"></script>
	<script>
		$(function(){
			 //新增数据
	         $('.save-btn').click(function(){
	             // 获取表单数据
	             var formData = {
	            	pro_name: $('#pro_name').val(),
	            	pro_des: $('#pro_des').val(),
	            	cateco: $('#cateco').val(),
	            	proinsstate: $('#proinsstate').val()
	          	 };
	             // 发送 AJAX 请求
	         $.ajax({
	            	 type:"GET",
	                 url: 'insertpro',
	                 data: formData,
	                 success: function(response){
	                     // 处理成功响应
	                     alert('保存成功');
	                     $('#pro_name').val("");
	                     $('#pro_des').val("");
	                     $('#cateco').val("1");
	                     $('#proinsstate').val("0");
	                     // 可以在此处执行其他操作，例如关闭模态框等
	                     var modal = document.getElementById('modal');
	                     modal.style.display = 'none';
	                     location.href = "profy";
	                 },
	                 error: function(xhr, status, error){
	                     // 处理错误响应
	                     alert('保存失败');
	                 }
	             });
	         });
			//批量删除
	         $('.delbtn').on('click', function() {
	             var checkedCheckboxes = $('.checkid:checked');
	             if (checkedCheckboxes.length > 0) {
	                 // 有至少一个复选框被选中
	                 if (confirm('确定要删除选中的用户吗？')) {
	                     var proIds = [];
	                     checkedCheckboxes.each(function() {
	                         // 获取选中复选框对应的用户ID
	                         var Id = $(this).siblings('span').text();
	                         proIds.push(Id);
	                     });
	                     // 发送Ajax请求到Servlet
	                     $.ajax({
	                         url: 'procheckdelSer',
	                         type: 'GET',
	                         data: {proIds: proIds},
	                         success: function(response) {
	                        	 alert('删除成功');
	                        	 location.href = "profy";
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
			//删除当前行数据
	         $('.tabdelbtn').click(function(){
	        	    // 获取当前行（<tr>元素）
	        	    var row = $(this).closest('tr');
	        	    // 获取第一列的值（商品ID）
	        	    var id = row.find('td:first').text();

	        	    // 弹出确认框
	        	    var result = confirm("您确定要删除吗？");
	        	    if (result) {
	        	        // 用户点击了确认按钮，执行删除操作
	        	        $.ajax({
	        	            type: "GET",
	        	            url: 'prodelbtnSer',
	        	            data: { id: id }, // 将ID包装在对象中传递
	        	            success: function(response){
	        	                // 处理成功响应
	        	                alert('删除成功');
	        	                // 在此处可能需要刷新页面或更新数据表格等
	        	                location.href = "profy";
	        	            },
	        	            error: function(xhr, status, error){
	        	                // 处理错误响应
	        	                alert('保存失败: ' + error);
	        	            }
	        	        });
	        	     } 
	        	});
	         $('.upbtn').click(function () {
	        	    var checkedCount = $('.checkid:checked').length;
	        	    if (checkedCount === 1) {
	        	        var selectedRow = $('.checkid:checked').closest('tr');
	        	        var proId = selectedRow.find('span').text();
	        	        var imgUrl = selectedRow.find('input[name="img_url"]').val();
	        	        var proName = selectedRow.find('td:nth-child(2)').text();
	        	        var proDescription = selectedRow.find('td:nth-child(3)').text();
	        	        var cateName = selectedRow.find('td:nth-child(4)').text();
	        	        var proStatue = selectedRow.find('td:nth-child(6)').text();
	        	        // 显示修改弹窗
	        	        $('#overlay').css('display', 'block');
	        	      	//禁用文本框
		        	    $('input[name="pcate"]').prop("disabled", true);
	        	        // 将数据填充到修改弹窗中的表单中
	        	        $('#proname').val(proName);
	        	        $('#prodes').val(proDescription);
	        	        $('input[name="pcate"]').val(cateName);
	        	        $('input[name="pimg"]').text(imgUrl);
	        	        $('input[name="proid"]').val(proId);
	        	        $('input[name="proimg"]').val(imgUrl);
	        	        $("#tpimg").attr("src", imgUrl);
	        	        // 修改此处以确保正确选择<select>中的选项
	        	        if(proStatue.trim() === '已上架'){
	        	            $('#prostate').val("1");
	        	        } else if(proStatue.trim() === '已下架'){
	        	            $('#prostate').val("2");
	        	        } else {
	        	            $('#prostate').val("0");
	        	        }
	        	        
	        	    } else if (checkedCount === 0) {
	        	        alert('请至少选择一个用户进行修改！');
	        	    } else {
	        	        alert('只能选择一个用户进行修改！');
	        	    }
	        	});
	         
	            //编辑当前行数据
	            $('.tabbjbtn').click(function(){
				    // 获取当前行的数据
				    var row = $(this).closest('tr'); // 找到最近的tr元素
				    var proId = row.find('span').text(); // 获取商品ID
				    var proName = row.find('td:nth-child(2)').text(); // 获取商品名称
				    var proDescription = row.find('td:nth-child(3)').text(); // 获取商品简介
				    var cateName = row.find('td:nth-child(4)').text(); // 获取商品类别
				    var proStatue = row.find('td:nth-child(6)').text(); // 获取商品状态
				    var imgUrl = row.find('input[name="img_url"]').val();
				 	// 将数据填充到修改弹窗中的表单中
        	        $('#proname').val(proName);
        	        $('#prodes').val(proDescription);
        	        $('input[name="pcate"]').val(cateName);
        	        $('input[name="pimg"]').text(imgUrl);
        	        $('input[name="proid"]').val(proId);
        	        $('input[name="proimg"]').val(imgUrl);
        	        $("#tpimg").attr("src", imgUrl);
        	        // 修改此处以确保正确选择<select>中的选项
        	        if(proStatue.trim() === '已上架'){
        	            $('#prostate').val("1");
        	        } else if(proStatue.trim() === '已下架'){
        	            $('#prostate').val("2");
        	        } else {
        	            $('#prostate').val("0");
        	        }
				    
				    // 显示修改面板
				    $('#overlay').css('display', 'block');
				    // 禁用文本框
				    $('input[name="pcate"]').prop("disabled", true);
				});
			
	            
	      		 // 点击保存按钮时发送数据到Servlet
		         $('.up-save-btn').click(function() {
		             var formData = new FormData($('.upform')[0]); // 获取表单数据
	
		             $.ajax({
		                 url: 'proupbtnSer', // 替换为你的 Servlet URL
		                 type: 'POST',
		                 data: formData,
		                 processData: false,
		                 contentType: false,
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
		     	               location.href = "profy";
		                 },
		                 error: function(xhr, status, error) {
		                	 alert('保存失败: ');
		                     // 处理发送失败后的逻辑
		                 }
		             });
		         });
			
		});
		//刷新
     	function flu(){
     		location.href = "profy"
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
		<!-- 搜索&条件分页 -->
			<form action="profy" method="get">
				<label for="">商品名称：</label>
				<input type="text" id="pname" name="pname" value='${name }'/>
				<label for="">商品类别：</label>
				<select id="cate" name="cate">
					<option value="" ${cate==null?"selected":" " }>所有</option>
				  <c:forEach items="${prolist}" var="l">
				  	<option value="${l.cate_name}" ${cate==l.cate_name?"selected":" " }>${l.cate_name}</option>
				  </c:forEach>
				</select>
				<label for="">商品状态：</label>
				<!-- 0未上架 1已上架 -->
				<select name="pstate" id="pstate">
				  <option value="3" >所有</option>
				  <option value="0" ${pstate==0?"selected":" " }>未上架</option>
				  <option value="1" ${pstate==1?"selected":" " }>已上架</option>
				  <option value="2" ${pstate==2?"selected":" " }>已下架</option>
				</select>
				
				
				<label for="">创建时间：</label>
				<input type="date" id="pro_time" name="pro_time">
				
				<input type="submit" value="搜索" class="sel" />
				<input type="reset" class="res"/>
			</form>
		</div>
		
		<div class="cont">
		<!-- 新增弹窗 -->
			<div id="modal" class="modal">
				    <div class="modal-content"> 
						<div class="val">
							<P>基本信息</P>
							 <form action="insertpro" class="insertform">
						        <div><label for="" class="inlab1" style="margin-right: 15px;">商品名称:</label>
				                <input type="text" id="pro_name" name="pro_name"></div>
				                
				                <div><label for="" class="inlab2" style="margin-right: 15px;">商品简介:</label>
				                <textarea id="pro_des" name="pro_des" rows="3"></textarea></div>
				                
				                <div><label for="" id="inla3" style="margin-right: 15px;">商品类别:</label>
				                <select id="cateco" name="cateco" class="cateco">
									<c:forEach items="${prolist}" var="l">
				  						<option value="${l.cate_id}">${l.cate_name}</option>
				  					</c:forEach>
				                </select></div>
				                
				                
				                <div><label for="" id="inla4" style="margin-right: 15px;">商品状态:</label>
								<select id="proinsstate" name="proinsstate">
								  <option value="0">未上架</option>
								  <option value="1">已上架</option>
								  <option value="2">已下架</option>
								</select></div>
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
						<P>修改商品信息</P>
						<form class="upform" enctype="multipart/form-data">
							<div class="proimg">
								<img src="../img/Sonice.jpg" alt="" id="tpimg"/>
							</div>
							<div class="procont">
							<input name="proimg" type="hidden" value="">
							<input name="proid" type="hidden" value="">
								<label for="" id="la1">商品名称:</label><input name="proname" type="text" id="proname"><br>
								<label for="" id="la2">商品简介:</label><textarea id="prodes" name="prodes" rows="6" cols="26.5"></textarea><br>
								<label for="" id="la3">商品类别:</label><input id="pcate" name="pcate" type="text"><br>
								<label for="" id="la4">商品状态:</label>
								<select id="prostate" name="prostate">
								  <option value="0">未上架</option>
								  <option value="1">已上架</option>
								  <option value="2">已下架</option>
								</select><br>
								<label for="" id="la5">上传图片:</label><input name="pimg" id="pimg" type="file" ><br>
							</div>
							<div class="upbtnbox" style="width: 100%">
						     <button type="button" class="up-save-btn">保存</button>
						     <button type="button" class="up-close-btn" onclick="upcloseModal()">关闭</button>
							</div>
						</form>
							
					</div>
				</div>
		<!-- 增删改按钮 -->
			<div class="contbtn">
				<button class="inbtn" onclick="showModal()">新增</button>
				<button class="upbtn">修改</button>
				<button class="delbtn">删除</button>
				<button class="flubtn" onclick="flu()">刷新</button>
			</div>
			
			
		<!-- 分页隐藏作用域 -->
			<input type="hidden" name="curpage" value="${param.curpage}">
	    	<input type="hidden" name="pagesize" value="8">
		
		<table id="table">
		<!-- 表头 -->
		 <thead>
			<tr style="background-color: #f5f5f6;">
				<td>商品编号</td>
				<td>商品名称</td>
				<td>商品简介</td>
				<td>商品类别</td>
				<td>创建时间</td>
				<td>商品状态</td>
				<td>操作</td>
			</tr>
			<!-- 循环打印表格 -->
			<c:forEach items="${list}" var="p">
				<tr>
					<td><input type="checkbox" class="checkid" name="checkid" /><span>${p.pro_id}</span></td>
					<td><input type="hidden" name="img_url" value="${p.img_url}">${p.pro_name}</td>
					<td>${p.pro_description}</td>
					<td>${p.cate_name}</td>
					<td>${p.pro_time}</td>
					<td>${p.pro_statue!=0?(p.pro_statue==1?'已上架':'已下架'):'未上架'}</td>
					<td><button class="tabdelbtn">删除</button> <button class="tabbjbtn">编辑</button></td>
				</tr>
			</c:forEach>
		</thead>
		</table>
		<!-- 分页 -->
			<c:set var="name" value="${name}" />
			<c:set var="cate" value="${cate}" />
			<c:set var="pstate" value="${pstate}" />
			<c:set var="pro_time" value="${pro_time}" />
			<x:page controller="profy" pagesize="8" total="${total}" curpage="${curpage}" where="pname=${name}&cate=${cate}&pstate=${pstate}&pro_time=${pro_time}"/>
		</div>
		<!-- 刷新表格数据 -->
		<c:if test="${list==null}">
			<script type="text/javascript">
				location.href = "profy"
			</script>
		</c:if>		
	</body>
</html>