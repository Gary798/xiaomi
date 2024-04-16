<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>商品管理</title>
		<link rel="stylesheet" href="../css/pro.css"/>
	</head>
	<body>
		<div class="nav">
			<form action="">
				<label for="">商品名：</label>
				<input type="text" id="pname"/>
				<label for="">商品类别：</label>
				<select id="cate">
				  <option value="" selected>手机</option>
				  
				</select>
				<label for="">商品状态：</label>
				<!-- 0未上架 1已上架 -->
				<select id="pstate">
				  <option value="3" selected>所有</option>
				  <option value="0">未上架</option>
				  <option value="1">已上架</option>
				</select>
				
				<label for="">商品价格：</label>
				<input type="text" id="di_price" name="di_price" placeholder="最低价格">-
				<input type="text" id="gao_price" name="gao_price" placeholder="最高价格">
				<label for="">创建时间：</label>
				<input type="date" id="pro_time" name="pro_time">
				

				<input type="submit" value="搜索" class="sel" />
				<input type="reset" class="res"/>
			</form>
		</div>
		
		<div class="cont">
		<table id="table">
		 <thead>
			<tr style="background-color: #f5f5f6;">
				<td>商品编号</td>
				<td>商品名称</td>
				<td>商品类别</td>
				<td>商品规格</td>
				<td>商品价格</td>
				<td>商品状态</td>
				<td>创建时间</td>
				<td>操作</td>
			</tr>
		 </thead>
		</table>
		</div>
		
	</body>
</html>