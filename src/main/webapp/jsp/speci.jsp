<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://www.trkj.com/lim/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>规格管理</title>
<link rel="stylesheet" href="../css/speci.css"/>
<style type="text/css">
	body{
		background-color: #fff;
	}
</style>
</head>
<script src="../js/jquery-3.1.0.js"></script>
<script>
	$(function(){
		//新增数据
		$('.save-btn').click(function(){
		    // 获取表单数据
		    var formData = $('.speinsform').serialize();
		    
		    // 发送AJAX请求到servlet
		    $.ajax({
		        url: 'insertspe',
		        type: 'GET',
		        data: formData,
		        success: function(response) {
		        	var modal = document.getElementById('modal');
                    modal.style.display = 'none';
                    location.href = "pricompage"
		        },
		        error: function(xhr, status, error) {
		            alert("保存失败");
		        }
		    });
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
       	            url: 'spedelbtnSer',
       	            data: { id: id }, // 将ID包装在对象中传递
       	            success: function(response){
       	                // 在此处可能需要刷新页面或更新数据表格等
       	                location.href = "pricompage";
       	            },
       	            error: function(xhr, status, error){
       	                // 处理错误响应
       	                alert('保存失败: ' + error);
       	            }
       	        });
       	     } 
       	});
		
		
		
	});
	

	//新增弹窗
	function showModal() {
	  document.getElementById("modal").style.display = "block";
	}
	function closeModal() {
	  var modal = document.getElementById('modal');
	  modal.style.display = 'none';
	}
	//刷新
	function flu(){
 		location.href = "pricompage"
 	}
</script>
<body>
		<div class="nav">
			<!-- 搜索 -->
			<form action="pricompage" method="get">
				<label for="">商品名称：</label>
				<input type="text" id="pname" name="pname" value='${name}'/>
				<label for="">存储：</label>
				<input type="text" id="spname" name="spname" value='${cun}'/>
				<label for="">价格：</label>
				<input type="text" id="price" name="price" value='${price}'/>
				<input type="submit" value="搜索" class="se" style="border: 1px solid #ddd" />
				<input type="reset" class="re" style="border: 1px solid #ddd"/>
			</form>
		</div>
		<div class="cont">
			<!-- 新增弹窗 -->
			<div id="modal" class="modal">
				    <div class="modal-content"> 
						<div class="val">
							<P>基本信息</P>
							 <form action="" class="speinsform">
						        <div>
							        <label for="">商品名称:</label>
									<select id="prname" name="prname">
									  <c:forEach items="${proname}" var="n">
									  	<option value="${n.pro_id }">${n.pro_name }</option>
									  </c:forEach>
									</select>
								</div>
				                <div>
					                <label for="">颜色:</label>
					                <input id="phcolor" name="phcolor" placeholder="请输入颜色"/>
				                </div>
				                <div>
					                <label for="">存储:</label>
					                <input id="ncun" name="ncun" placeholder="请输入存储"/>
				                </div>
				                <div>
					                <label for="">价格:</label>
					                <input id="inprice" name="inprice" placeholder="请输入价格"/>
				                </div>
						     </form>
							<div class="btnbox">
						         <button type="button" class="save-btn">保存</button>
						         <button type="button" class="close-btn" onclick="closeModal()">关闭</button>
						    </div>
							
						</div>
					</div>
				</div>
			<!-- 增删改按钮 -->
			<div class="contbtn">
				<button class="inbtn" onclick="showModal()">新增</button>
				<button class="flubtn" onclick="flu()">刷新</button>
			</div>
			
			
		<!-- 分页隐藏作用域 -->
			<input type="hidden" name="curpage" value="${param.curpage}">
	    	<input type="hidden" name="pagesize" value="10">
		
		<table id="table">
		<!-- 表头 -->
		 <thead>
			<tr style="background-color: #f5f5f6;">
				<td>编号</td>
				<td>商品名称</td>
				<td>存储</td>
				<td>价格</td>
				<td>操作</td>
			</tr>
			<!-- 循环打印表格 -->
			<c:forEach items="${pricomlist}" var="p">
				<tr>
					<td><input type="checkbox" class="checkid" name="checkid" /><span>${p.com_id}</span></td>
			        <td>${p.pro_name}</td>
			        <td>${p.spe_det}</td>
			        <td>${p.pri_name}</td>
					<td><button class="tabdelbtn">删除</button> <button class="tabbjbtn">编辑</button></td>
				</tr>
			</c:forEach>
		</thead>
		</table>
		<!-- 分页 -->
			<c:set var="pname" value="${name}" />
			<c:set var="spname" value="${cun}" />
			<c:set var="price" value="${price}" />
			<x:page controller="pricompage" pagesize="10" total="${total}" curpage="${curpage}" where="pname=${name}&spname=${cun}&price=${price}"/>
		</div>	
		<!-- 刷新表格数据 -->
		<c:if test="${pricomlist==null}">
			<script type="text/javascript">
				location.href = "pricompage"
			</script>
		</c:if>	
</body>
</html>