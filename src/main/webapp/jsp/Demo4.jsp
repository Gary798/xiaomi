<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 16588
  Date: 2024/3/27
  Time: 15:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>购物车</title>
</head>
<style>
    *{
        margin: 0px;
        padding: 0px;
        line-style: none;
    }
    .header{
        font-size: 12px;
        border-bottom: 2px solid #ff6700;
        background: #fff;
        color: #b0b0b0;
        position: relative;
        z-index: 20;
        height: 100px;
    }
    .contop{
        width: 1226px;
        margin-left: auto;
        margin-right: auto;
    }
    .contop .cont-logo{
        width: 93px;
        margin-top: 20px;
        float: left;
    }
    .contop .img{
        width: 48px;
        height: 48px;
        margin: 10px auto;
    }
    .cont{
        height: 48px;
        float: left;
        margin-top: 26px;
    }
    .cont-text1{
        float: left;
        line-height: 48px;
        margin-bottom: 0;
        font-size: 28px;
        font-weight: 400;
        color: #424242;
    }
    .cont-text2{
        font-size: 12px;
        float: left;
        height: 20px;
        line-height: 20px;
        margin-top: 20px;
        margin-left: 15px;
        color: #757575;
    }
    .site-info{
        position: relative;
        float: right;
        height: 40px;
        line-height: 40px;
        margin-top: 30px;
    }
    .site-info a{
        position: relative;
        z-index: 5;
        display: block;
        width: 110px;
        height: 40px;
        text-align: center;
    }
    .site-info .user{
        float: left;
    }
    .user{
        position: relative;
        width: 110px;
        padding: 0;
        white-space: nowrap;
    }
    .user-name{
        position: relative;
        z-index: 5;
        display: block;
        width: 110px;
        height: 40px;
        text-align: center;
    }
    .name{
        display: inline-block;
        width: auto;
        max-width: 75px;
        text-overflow: ellipsis;
        vertical-align: text-bottom;
        overflow: hidden;
      }
    .user a i{
        font-size: 24px;
        line-height: 24px;
        vertical-align: 9px;
    }
    a,a:hover{
        text-decoration: none;
    }
    .iconfont{
        width: 0;
        height: 0;
        border-left: 5px solid transparent;
        border-right: 5px solid transparent;
        border-bottom: 0px solid darkgray;
        transition: transform 0.5s;
    }
    .list{
        position: absolute;
        left: 0;
        top: 40px;
        z-index: 3;
        height: 0;
        overflow: hidden;
        -webkit-transition: height .3s;
        transition: height .3s;
        background: #fff;
        -webkit-box-shadow: 0 2px 10px rgba(0,0,0,.15);
        box-shadow: 0 2px 10px rgba(0,0,0,.15);
    }
    .sep{
        margin: 0;
        margin: 0 .25em;
        font-family: sans-serif;
    }
    .inder{
        width: 70px;
        padding: 0 5px;
        text-align: center;
        float: right;
    }
    .mi-cart{
        padding: 20px 0;
        background: #f5f5f5;
    }
    .container{
        width: 1226px;
        margin: 0 auto;
    }
    .head-list{
        height: 70px;
        line-height: 70px;
        padding-right: 26px;
        color: #424242;
    }
    .quanx{
        width: 110px;
        float: left;
    }
    .item-list{
        padding: 15px 0px;
    }
    .cart-icon{
        display: inline-block;
        width: 18px;
        height: 18px;
        line-height: 18px;
        border: 1px solid #e0e0e0;
        margin-left: 24px;
        background-color: #fff;
        color: #fff;
        font-size: 20px;
        text-align: center;
        vertical-align: middle;
        position: relative;
        top: -1px;
        cursor: pointer;
        margin-right: 15px;
    }
    .light-color{
        border-color: #ff6700;
        background: #ff6700;
    }
    .get-color{
        border-color: #ff6700;
        background: #ff6700;
    }
    .kg{
        width: 80px;
        float: left;
        padding-right: 40px;
        height: 85px;
    }
    .col-name{
        width: 380px;
        float: left;
    }
    .col-price{
        width: 140px;
        padding-right: 18px;
        text-align: center;
        color: #424242;
        float: left;
        line-height: 85px;
    }
    .col-num{
        width: 149px;
        text-align: center;
        color: #424242;
        float: left;
    }
    .col-total{
        width: 120px;
        padding-right: 81px;
        text-align: right;
        float: left;
    }
    .col-action{
        width: 80px;
        text-align: center;
        float: left;
    }
    .col-action .img-but{
        width: 24px;
        height: 24px;
        margin: 30px;
        transition: .2s ease;
        background: url("static/img/dooff.png");
        background-size: 24px 24px;
    }
    .shopping-cart{
        height: 85px;
        z-index: 9;
        margin-bottom: 10px;
    }
    .shopping-cart .img{
        width: 80px;
        height: 80px;
        position: relative;
    }
    .icon{
        position: relative;
        top: 20px;
    }
    .subtract-color{
        background: #A9A9A9;
    }
    .subtract,.add{
        float: left;
        width: 38px;
        height: 38px;
        line-height: 38px;
        color: #757575;
        font-size: 20px;
        -webkit-transition: all .3s;
        transition: all .3s;
        position: relative;
    }
    .num{
        float: left;
        width: 72px;
        height: 38px;
        line-height: 38px;
        padding: 0;
        border-width: 0;
        color: #424242;
        font-size: 16px;
        text-align: center;
        position: relative;
    }
    .cart-name{
        line-height: 85px;
        font-size: 18px;
        font-weight: 400;
        text-overflow: ellipsis;
        white-space: nowrap;
        overflow: hidden;
        text-align: center;
        position: relative;
        height: 85px;
    }
    .placeholder-div{
        margin: 20px 0;
    }
    .cart-bar{
        height: 50px;
        width: 1226px;
        margin: 0px auto;
        text-align: right;
        background-color: #fff;
        -webkit-transition: background .3s ease, top .3s ease;
        transition: background .3s ease, top .3s ease;
        position: relative;
        top: 20px;
    }
    .section-left{
        float: left;

    }
    .section-tocal{
        margin-left: 16px;
        padding-left: 16px;
        border-left: 1px solid #eee;
        color: #757575;
    }
    .shop{
        line-height: 50px;
        margin-left: 32px;
        color: #757575;
    }
    .section-tocal span{
        color: #ff6700;
    }
    .tocal-price{
        padding-left: 13px;
        color: #ff6700;
    }
    .tocal-price em{
        font-style: normal;
        font-size: 30px;
    }
    .btn{
        width: 200px;
        height: 48px;
        line-height: 48px;
        font-size: 18px;
        margin-left: 40px;
        vertical-align: top;
        display: inline-block;
        text-align: center;
    }
    .btn-disabled{
        background: #e0e0e0 !important;
        border-color: #e0e0e0 !important;
        color: #b0b0b0 !important;
        cursor: default !important;
    }
    .left-before{
        width: 100px;
        float: left;
    }
    .right-before{
        width: 200px;
        float: right;
        color: #ffffff;
    }
    .btn-primary{
        background: #ff6700;
        border-color: #ff6700;
        color: #fff;
    }
    .mi-cart-box{
        width: 1226px;
        margin: 0px auto;
        background: white;
    }
    .col-num-box{
        float: left;
        height: 38px;
        padding: 24px 0px;
    }
</style>
<body>
<div>
    <div class="header">
        <div class="contop">
            <div class="cont-logo">
                <img src="static/img/logo-mi.png" class="img" />
            </div>
            <div class="cont">
                <h2 class="cont-text1">我的购物车</h2>
                <span class="cont-text2">温馨提示：产品是否购买成功，以最终下单为准哦，请尽快结算</span>
            </div>
            <div class="cont-site">
                <div class="site-info">
                    <span class="user">
                        <a class="user-name">
                            <span class="name">所念皆星河</span>
                            <i class="iconfont">

                            </i>
                            <div class="list">
                                <ul>
                                    <li>
                                        <a>个人中心</a>
                                    </li>
                                    <li>
                                        <a>评价晒单</a>
                                    </li>
                                    <li>
                                        <a>我的喜欢</a>
                                    </li>
                                    <li>
                                        <a>小米账户</a>
                                    </li>
                                    <li>
                                        <a>退出登录</a>
                                    </li>
                                </ul>
                            </div>
                        </a>
                    </span>
                    <span class="sep">|</span>
                    <a class="inder">我的订单</a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="mi-cart">
    <div class="mi-cart-box">

        <div class="container" style="border-bottom: 1px solid #e0e0e0;">
            <div class="cart-container">
                <div class="cont-main">
                    <div class="wrap">
                        <div class="cart-list">
                            <div class="head-list">
                                <div class="quanx qx">
                                    <span class="cart-icon get-color">√</span>
                                    全选
                                </div>
                                <div class="kg">&nbsp;</div>
                                <div class="col-name">商品名称</div>
                                <div class="col-price">单价</div>
                                <div class="col-num">数量</div>
                                <div class="col-total">小计</div>
                                <div class="col-action">操作</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item-list">

            <c:forEach var="cartitem" items="${cart}" varStatus="loop">
                <div class="shopping-cart">
                    <div class="container">
                        <div class="cart-container">
                            <div class="cont-main">
                                <div class="wrap">
                                    <div class="cart-list">
                                        <div class="head-list" style="height: 85px">
                                            <div class="quanx" style="margin-top: 10px">
                                                <span class="cart-icon icon">√</span>
                                            </div>
                                            <div class="kg">
                                                <c:if test="${gimageList.size() >= loop.index}">
                                                    <c:forEach items=" ">

                                                    </c:forEach>
                                                        <c:if test="${gimageList[loop.index]['pid'] == cart[loop.index]['pid']}">
                                                            <img src="${gimageList[loop.index]['gpic']}" class="img" />
                                                        </c:if>
                                                </c:if>
                                            </div>
                                            <div class="col-name cart-name" style="text-align: left">${cart[loop.index]['csize']}</div>
                                            <div class="col-price" style="color: #ff6700">${cart[loop.index]['cprice']}元</div>
                                            <div class="col-num-box">
                                                <div class="col-num" style="border: 1px solid #e0e0e0;">
                                                    <span class="subtract">-</span>
                                                    <span class="num">${cart[loop.index]['cbuy']}</span>
                                                    <span class="add">+</span>
                                                </div>
                                            </div>
                                            <div class="col-total tocal" style="line-height: 85px;padding-right: 76px"></div>
                                            <div class="col-action" style="height: 85px;width: 85px">
                                                <div class="img-but">

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </c:forEach>
        </div>
        <div class="placeholder-div"></div>
    </div>

    <div class="cart-bar">
        <div class="section-left">
            <a class="shop">继续购物</a>
            <span class="section-tocal">
            已选择
            <span>0</span>
            件
        </span>
        </div>
        <span class="tocal-price">
        合计：
        <em></em>
        元
         <a href="confirmOrder" class="btn">去结算</a>
    </span>

    </div>
</div>
<script src="static/js/jquery-3.5.1.js"></script>
<script>
    if($(".qx .cart-icon").hasClass('get-color')){
        $(".icon").addClass('light-color');
        $(".btn").removeClass("btn-disabled");
        $(".btn").addClass("btn-primary")
        $(".btn").removeClass("btn-disabled")
        $(".section-tocal span").text(cont)
    }else{
        $(".icon").removeClass('light-color');
        $(".section-tocal span").text(cont)
    }
    $(".cart-icon").hover(function(){
        if(!$(this).hasClass('light-color')){
            $(this).data('originalColor', $(this).css('color'));
            $(this).css('color', '#757575');
        }else {
            $(this).css('color', '#fff');
        }
    }, function(){
        var originalColor = $(this).data('originalColor');
        $(this).css('color', originalColor);
    });
    $(".icon").click(function () {
        if($(this).hasClass('light-color')){
            $(this).removeClass('light-color');
            if($(".qx .cart-icon").hasClass('get-color')){
                $(".qx .cart-icon").removeClass('get-color');
            }
            $(".section-tocal span").text(cont)
        }else{
            $(this).addClass('light-color');
            var cart =$(".cart-icon");
            cart.each(function(){
                if($(cart).hasClass('light-color')){
                    $(".qx .cart-icon").addClass('get-color');
                    $(".btn").addClass("btn-primary")
                }
            })
            $(".section-tocal span").text(cont)
        }
    })
    $(".qx .cart-icon").click(function () {
        if($(".qx .cart-icon").hasClass('get-color')){
            $(".qx .cart-icon").removeClass('get-color')
            $(".icon").removeClass('light-color');
            $(".btn").removeClass("btn-primary")
            $(".btn").addClass("btn-disabled")
            $(".section-tocal span").text(cont)
        }else{
            $(".qx .cart-icon").addClass('get-color')
            $(".icon").addClass('light-color');
            $(".btn").addClass("btn-primary")
            $(".btn").removeClass("btn-disabled")
            $(".section-tocal span").text(cont)
        }
    })
    $(".subtract").hover(function () {
        if($(this).hasClass('subtract-color')){
            $(this).removeClass('subtract-color');
        }else{
            $(this).addClass('subtract-color');
        }
    })
    $(".add").hover(function () {
        if($(this).hasClass('subtract-color')){
            $(this).removeClass('subtract-color');
        }else{
            $(this).addClass('subtract-color');
        }
    })
    var sum =0;
    $(".num").text(1);
    $(".tocal").each(function(){
        var price = parseFloat($(this).closest(".head-list").find(".col-price").text());
        var quantity = parseInt($(this).closest(".head-list").find(".col-num .num").text());
        var totalPrice = price * quantity;
        sum += totalPrice;
        $(this).text(totalPrice + "元");
    });
        $(".subtract").click(function () {
            var num = parseInt($(this).next(".num").text());
            if(num > 0){
                $(this).next(".num").text(num - 1);
                updateTotalPrice($(this));
            }
            $(".tocal").each(function(){
                var price = parseFloat($(this).closest(".head-list").find(".col-price").text());
                var quantity = parseInt($(this).closest(".head-list").find(".col-num .num").text());
                var totalPrice = price * quantity;
                sum += totalPrice;
                $(this).text(totalPrice + "元");
            });
        })
        $(".add").click(function () {
            var num = parseInt($(this).prev(".num").text());
            $(this).prev(".num").text(num + 1);
            updateTotalPrice($(this));
            $(".tocal").each(function(){
                var price = parseFloat($(this).closest(".head-list").find(".col-price").text());
                var quantity = parseInt($(this).closest(".head-list").find(".col-num .num").text());
                var totalPrice = price * quantity;
                sum += totalPrice;
                $(this).text(totalPrice + "元");
            });
        })
    function updateTotalPrice(element){
        var price = parseFloat(element.closest(".head-list").find(".col-price").text());
        var quantity = parseInt(element.closest(".col-num").find(".num").text());
        var totalPrice = price * quantity;
        element.closest(".head-list").find(".col-total").text(totalPrice + "元");
    }
    var cont = $(".light-color").length;
    $(".section-tocal span").text(cont)

    $(".tocal-price em").text(sum)
    $(".col-action .img-but").mouseover(function(){
        $(this).css("background","static/img/doon.png")
    })
    $(".col-action .img-but").mouseout(function(){
        $(this).css("background","static/img/dooff.png")
    })
</script>
</body>
</html>
