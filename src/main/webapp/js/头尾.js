$(function(){
								$(".nav_ul li").mouseover(function(){
									//显示总容器
									$(".xiala").css('height','229px');
									// 获取第几个元素触发
									var index = $(this).index();
									
									
									
									//隐藏所有
									$('.navDiv').hide();
									//只显示当前
									$('.navDiv').eq(index).show();
									
									// 当鼠标悬停在最后两个 <li> 上时，设置 .xiala 的高度为 0
									if (index >= $(".nav_ul li").length - 2) {
										$(".xiala").css('height', '0');
									}
								});
						
								$(".navDiv").mouseover(function(){
									// 显示总容器
									$(".xiala").css('height', '229px');
									
									// 获取当前元素的索引
									var index = $(this).index('.navDiv');
									
									// 隐藏所有 .navDiv
									$('.navDiv').hide();
									
									// 显示当前对应的 .navDiv
									$('.navDiv').eq(index).show();
								});
								
								//移出列表
								$(".xiala").mouseout(function(e){
									// 设置总容器
									$(".xiala").css('height','0');
									// 判断鼠标移动到的目标不是 .nav_ul 下的子元素时才隐藏
									if ($(e.relatedTarget).closest('.nav_ul li').length === 0) {
										$('.navDiv').hide();
									}
								});
								//移出列表
								$(".nav_ul li span").mouseout(function(e){
									// 设置总容器
									$(".xiala").css('height','0');
									// 判断鼠标移动到的目标不是 .nav_ul 下的子元素时才隐藏
									if ($(e.relatedTarget).closest('.nav_ul li').length === 0) {
										$('.navDiv').hide();
									}
								});
							});