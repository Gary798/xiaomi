<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
	<link rel="stylesheet" href="../css/wei.css"/>
    <style>
        *{
            margin: 0 auto;
        }
        li{
            list-style-type: none;
        }
        .s_top{
            height: 80px;
            font-size: 12px;
            line-height: 40px;
            background: #fff;
            color: #757575;
        }
        .s_by{
            margin: auto;
            width: 1226px;
            padding: 18px 0;
        }
        .fl_wai{
            height: 40px;
            font-size: 12px;
            line-height: 40px;
            background: #eee;
            color: #757575;
        }
        .fl_nei{
            width: 1226px;
            margin-right: auto;
            margin-left: auto;
        }
        .fl_ul li{
            display: inline-block;
            text-overflow: ellipsis;
            overflow: hidden;
            color: #424242;
            font-size: 14px;
            width: 148px;
            padding: 14px 0;
            height: 20px;
            line-height: 20px;
        }
		.search-container {
		    background-color: #fff;
		    border-radius: 5px;
		    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
		    padding: 10px;
		    width: 314px;
		    position: relative;
		    top: -73px;
		    right: -500px;
		    }
		
		    .search-container input[type="text"] {
		        flex: 1;
		        padding: 10px;
		        border: 1px solid #ccc;
		        border-radius: 3px;
		        margin-right: 5px;
		        font-size: 16px;
		    }
		
		    .search-container button {
		        padding: 11px;
		        background-color: #007bff;
		        border: none;
		        border-radius: 3px;
		        color: #fff;
		        cursor: pointer;
		        font-size: 16px;
		        background-image: url(../img/搜索.png);
		        background-repeat: no-repeat;
		        background-position: 14px center;
		        height: 35px;
		        width: 50px;
		    }
		
		    .search-container button img {
		        width: 40px;
		    }
		
		    .search-container button:hover {
		        background-color: #ff6700;
		    }
        .zhuti{
            padding: 20px 0 100px;
            background: #eee;
        }
      
        .sousuo_zt{
         width: 100%;
         float: left;
            
        }
        .zhuti_nr {
            position: relative;
            margin: 0 auto;
            width: 1230px;
        }
        
        .zhanshi {
                width: 23%;
                height: 365px;
                background: #fff;
                float: left;
                margin-left: 1.7%;
                margin-bottom: 20px;
                transition: transform 0.3s;
                box-shadow: 3px 3px 5px rgba(0, 0, 0, 0.3);
            }

        }
        
        /* 清除浮动 */
        .clearfix::after {
            content: "";
            display: table;
            clear: both;
        }
        
        
		.zhanshi:hover {
			cursor: pointer;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.3); /* 添加阴影效果 */
			transform: scale(1.01); /* 缩放效果 */
		}
		
				.sou_a{
						display: block;
						padding-top: 47px;
						-webkit-box-sizing: border-box;
						box-sizing: border-box;
						height: 100%;
				}
				.div_img{
						width: 200px;
						height: 200px;
						margin: 0 auto 16px;
				}
				.div_img img{
						width: 100%;
						height: 100%;
				}
				.h3name{
					text-align: center;
					    margin: 0 10px 2px;
					    text-overflow: ellipsis;
					    white-space: nowrap;
					    overflow: hidden;
					font-size: 16px;
				    font-weight: 400;
				    color: #333;
				}
				.pzsname{
					text-align: center;
					    margin: 0 10px 10px;
					    height: 18px;
					    font-size: 12px;
					    color:#ff0000a3;
				}
				.pzsjg{
					text-align: center;
					color:#ff6700; ;
				}
    </style>
	
	<script>
		window.addEventListener('load', function() {
		    // 获取 .sousuo_zt 元素
		    var sousuoZt = document.querySelector('.sousuo_zt');
		    // 获取 .zhuti 元素
		    var zhuti = document.querySelector('.zhuti');
		
		    // 设置 .zhuti 的高度为 .sousuo_zt 的高度加上 25px
		    function setZhutiHeight() {
		        var sousuoZtHeight = sousuoZt.offsetHeight;
		        var zhutiHeight = sousuoZtHeight + 25;
		        zhuti.style.height = zhutiHeight + 'px';
		    }
		
		    // 页面加载完成时执行一次设置高度
		    setZhutiHeight();
		
		    // 在窗口大小变化时重新设置高度
		    window.addEventListener('resize', setZhutiHeight);
		});
	</script>
</head>
<body> 
        <div class="fl_wai">
            <div class="fl_nei"><a>首页 </a>   >   <a> 搜索结果</a></div>
			
        </div>
        <div class="s_top">
            <div class="s_by">
                <ul class="fl_ul">
                    <li>分类:</li>
                    <li>全部</li>
                    <li>红米手机</li>
				</ul>
				<div class="search-container">
				<form action="">
				    <input type="text" placeholder="请搜索......" required>
				    <button type="submit">
				      
				    </button>
				</form>
				</div>
            </div>
        </div>
		
        <div class="zhuti">
            <div class="zhuti_nr">
           
            <div class="sousuo_zt">
                <div class="zhanshi">
					<a class="sou_a">
						<div class="div_img">
							<img src="../img/Redmi K70下拉.png"/>
						</div>
						<h3 class="h3name">Xiaomi 13</h3>
						<p class="pzsname">性能旋风，席卷而来</p>
						<p class="pzsjg"><span class="zsjg">1999</span>元<span>起</span></p>
					</a>
				</div>
				
                <div class="zhanshi"></div>
                <div class="zhanshi"></div>
				<div class="zhanshi"></div>
				<div class="zhanshi"></div>
				<div class="zhanshi"></div>
				<div class="zhanshi"></div>
			
               </div>
           
            </div>
        </div>
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

