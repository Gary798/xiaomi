//菜单
$(document).ready(function() {
	$('.left_ul > li:first-child').addClass('active').css('background-color', '#293846');
    // 点击左侧菜单项
    $('.left_ul > li').click(function(event) {
        var $clickedItem = $(this);
        
        // 如果点击的菜单项有子列表，则显示或隐藏
        if ($clickedItem.find('.li2_ul').length > 0) {
            // 先缩回已展开的子列表
            $('.li2_ul').not($clickedItem.find('.li2_ul')).slideUp();
            // 再显示或隐藏当前点击的子列表
            $clickedItem.find('.li2_ul').slideToggle();
        } else {
            // 如果点击的菜单项没有子列表，则收起所有子列表
            $('.li2_ul').slideUp();
        }
        
        // 移除所有li的active类和背景颜色，除了当前点击的菜单项
        $('.left_ul > li').not($clickedItem).removeClass('active').css('background-color', '');
       
        // 给当前点击的li添加active类和背景颜色
        $clickedItem.addClass('active').css('background-color', '#293846');
        
        // 阻止事件冒泡，避免触发父菜单的点击事件
        event.stopPropagation();
    });
    
    // 点击子级列表项时改变背景颜色
    $('.li2_ul li').click(function(event) {
        var $clickedSubItem = $(this);
        
        // 移除其他列表项的背景颜色和active类
        $('.li2_ul li').not($clickedSubItem).removeClass('active');
        $('.li2_ul li span').css('background-color', ''); // 移除所有span元素的背景颜色
        
        // 给当前点击的列表项添加背景颜色和active类
        $clickedSubItem.addClass('active');
        $clickedSubItem.find('span').css('background-color', '#f39c12'); // 点击后改变span元素的背景颜色
        
        // 阻止事件冒泡，避免触发父菜单的点击事件
        event.stopPropagation();
    });
	// 点击除了左侧菜单第三个元素之外的 li 元素时，移除 .li2_ul li span 的样式
	    $('.left_ul >li:not(.left_ul > li:eq(2))').click(function() {
	        $('.li2_ul li span').css('background-color', '');
		});	
});


//时间更新
function time() {
	var now = new Date();
	// document.write(now.toLocaleString()+"<br/>");
	var year=now.getFullYear();
	var month = now.getMonth()+1;
	var day = now.getDate();
	var hour = now.getHours();
	var minute = now.getMinutes();
	var second = now.getSeconds();
	// var	str = now.toLocaleString()+"<br/>";
	document.querySelector(".tim").innerHTML='当前时间:'+year+"-"+month+"-"+day+"&nbsp;"+hour+":"+minute+":"+second;
	roc();
}
function roc(){
	setTimeout(time,1000);
}
roc();


