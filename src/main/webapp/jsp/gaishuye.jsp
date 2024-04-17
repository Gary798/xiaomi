<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<style>
			/*防止父盒子塌陷*/
			.clearfix:after{
				content: '';
				display: block;
				height: 0px;
				visibility: hidden;
				clear: both;
			}
			*{	margin: 0 auto;
				padding: 0px;
				list-style: none;
			}
			.title{
				width: 1226px;
				margin: 0 auto;
			}
			#left li{
				float: left;
			}
			ul{
				margin-right: 10px;
			}
			#right li{
				float: right;
			}
			#left{
				margin-left: 180px;
			}
			#right{
				margin-right: 180px;
			}
			.small{
				font-size: 10px;
				padding: 18px 5px;
			}
			.big{
				padding: 15px 10px;
				font-size: 15px;
			}
			.title li:hover{
				color: #FFA500;
			}
			.title .ljgm{
				width: 120px;
				height: 30px;
				background: coral;
				border: none;
				color: white;
				position: relative;
				top: 10px;
			}
			.big-box{
				width: 100%;
				background: black;
			}
			.box1 img{
				width: 100%;
				height: 800px;
			}
			.box2{
				display: flex;
				align-items: center;
				flex-direction: column;
			}
			.box2 .img{
				display: flex;
				flex-direction: column;
				align-items: center;
			}
			.box2 .img img{
				margin-top: 50px;
				margin-bottom: 50px;
			}
			.box2 .bottom{
				width: 800px;
				height: 400px;
			}
			.box2 .top{
				width: 600px;
				height: 400px;
			}
			.box2 .text{
				width: 800px;
				text-align: left;
				font-size: 10px;
				color: darkgray;
				margin-bottom: 50px;
			}
			.box3 video{
				width: 100%;
			}
			.box4{
				
				margin-top: -212px;
				margin-bottom: 100px;
			}
			.box4 .top{
				display: flex;
				flex-direction: column-reverse;
				align-items: center;
			}
			.box4 .tp{
				display: flex;
				flex-direction: column-reverse;
				align-items: center;
			}
			.box4 .small{
				width: 345px;
				height: 65px;
				position: relative;
				left: -200px;
				top: 212px;
			}
			.box4 .img{
				width: 1200px;
				height: 850px;
			}
			.box4 .text{
				text-align: center;
				font-size: 8px;
				color: darkgray;
				margin-left: 450px;
			}
			.box4 .text1{
			    font-size: 40px;
			    color: white;
			}
			.box4 .text2{
			    text-align: left;
			    font-size: 14px;
			    color: darkgray;
			    margin-bottom: -15px;
			    margin-right: 73px;
			}
			.box4 .bottom{
				display: flex;
			    z-index: 1;
			    flex-direction: column;
			    align-items: center;
			    position: relative;
				top: 500px;
			    right: 170px;
			}
			.box5{
				    display: flex;
				    -webkit-box-orient: horizontal;
				    -webkit-box-direction: normal;
				    -ms-flex-direction: row;
				    flex-direction: column-reverse;
				    -webkit-box-pack: start;
				    -ms-flex-pack: start;
				    justify-content: flex-start;
				    -webkit-box-align: center;
				    -ms-flex-align: center;
				    align-items: center;
			}
			.box5 .top{
				display: flex;
				-webkit-box-orient: vertical;
				-webkit-box-direction: normal;
				-ms-flex-direction: column;
				flex-direction: column-reverse;
				box-sizing: border-box;
				z-index: 2;
				margin-top: 0.07rem;				
				margin-right: -10.62rem;
				-webkit-box-pack: start;
				-ms-flex-pack: start;
				justify-content: flex-start;
				-webkit-box-align: start;
				-ms-flex-align: start;
				align-items: flex-start;
				position: relative;
				top: 30px;
				left: -150px;
			}
			.box5 .text1{
				font-size: 30px;
				color: white;
				    display: flex;
				    -webkit-box-orient: vertical;
				    -webkit-box-direction: normal;
				    -ms-flex-direction: column;
				    flex-direction: column;
				margin-bottom: 20px;
			}
			.box5 .text2{
			    font-size: 14px;
			    color: darkgray;
			display: flex;
			    -webkit-box-orient: vertical;
			    -webkit-box-direction: normal;
			    -ms-flex-direction: column;
			    flex-direction: column;
			    -webkit-box-pack: center;
			    -ms-flex-pack: center;
			    justify-content: center;
			    margin-bottom: 20px;
			}
			.box5 .text3{
				color: darkgray;
				font-size: 10px;
				position: relative;
				top: -100px;
			}
			.box5 .text4{
				font-size: 10px;
				color: darkgray;
			}
			.box5 .text5{
				color: darkgray;
				font-size: 10px;
				position: relative;
				top: 150px;
			}
			.box5 .spacer{
				webkit-box-flex: 1;
				-ms-flex: 1;
				flex: 1;
				margin-bottom: 50px;
			}
			.box5 .img{
				width: 1200px;
				height: 600px;
				z-index: 0;
				margin-left: 20px;
				margin-top: -400px;
			}
			.box5 .img2{
				width: 100px;
				height: 120px;
			    z-index: 1;
				margin-right: 100px;
			    margin-top: 50px;
			}
			.box6{
				display: flex;
				flex-direction: column-reverse;
				align-items: center;
			}
			.box6 .img{
				width: 1500px;
				height: 600px;
				z-index: 0;
				position: relative;
				top: -100px;
			}
			.box6 .top{
				z-index: 2;
				display: flex;
				flex-direction: column-reverse;
				align-items: center;
				position: relative;
			    top: 260px;
			    right: 150px;
			}
			.box6 .text1{
				font-size: 30px;
				color: white;
				margin-bottom: 80px;
				position: relative;
				right: 50px;
			}
			.box6 .text2{
				font-size: 15px;
				color: darkgray;
				margin-top: 50px;
				margin-right: 200px;
			}
			.box7 .img{
				width: 1500px;
				height: 600px;
				z-index: 0;
				position: relative;
				top: -100px;
			}
			.box7 .top{
			    z-index: 2;
			    display: flex;
			    flex-direction: column;
			    position: relative;
			    top: 260px;
				right: 350px;
				align-items: flex-end;
			}
			.box7 .text1{
				color: white;
				margin-left: 1120px;
			}
			.box7 .text2{
				color: darkgray;
				position: relative;
				top: 150px;
				right: -400px;
			}
			.box8{
				overflow: hidden;
				display: flex;
				flex-direction: column-reverse;
				align-items: center;
			}
			.box8 .img{
				width: 1500px;
				height: 500px;
				z-index: 0;
				position: relative;
				
			}
			.box8 .top{
				z-index: 2;
				display: flex;
				flex-direction: column-reverse;
				align-items: center;
				position: relative;
				top: 160px;
			    right: 150px;
			}
			.box8 .text1{
				font-size: 30px;
				color: white;
				margin-bottom: 30px;
				position: relative;
				right: 100px;
			}
			.box8 .text2{
				font-size: 12px;
				color: darkgray;
				z-index: 1;
				margin-right: 250px;
			}
			.box8 .img2{
				width: 200px;
				position: relative;
				top: 100px;
				right: 200px;
			}
			.box8 .text3{
				font-size: 15px;
				color: darkgray;
				z-index: 1;
				margin-right: 250px;
				position: relative;
				top: 120px;
				right: 50px;
			}
			.box8 .text3 span{
				color: skyblue;
			}
			.box8 .text4{
				font-size: 12px;
				color: darkgray;
				z-index: 1;
				margin-right: 150px;
				position: relative;
				top: 200px;
				right: 20px;
			}
			.box9{
				display: flex;
			    flex-direction: column-reverse;
			    align-items: center;
			}
			.box9 .img{
				width: 1500px;
				height: 800px;
				z-index: 0;
				position: relative;
				bottom: 260px;
			}
			.box9 .img2{
				width: 400px;
				height: 100px;
				z-index: 1;
				margin-left: 160px;
				margin-bottom: 25px;
			}
			.box9 .top{
				display: flex;
				flex-direction: column-reverse;
			    align-items: center;
				position: relative;
				top: 140px;
			}
			.box9 .text1{
				font-size: 30px;
				color: white;
				z-index: 1;
				margin-right: 500px;
			}
			.box9 .text2{
				font-size: 12px;
				color: darkgray;
				z-index: 1;
				margin-top: 20px;
				display: flex;
				flex-direction: row;
			}
			.box9 .text3{
				font-size: 12px;
				color: darkgray;
				z-index: 1;
				margin-right: 150px;
				position: relative;
				top: 240px;
			}
			.box10{
				margin-top: -400px;
				display: flex;
				flex-direction: column-reverse;
				
			}
			.box10 .img{
				width: 1500px;
				z-index: 0;
			}
			.box10 .top{
				display: flex;
				flex-direction: column;
				align-items: center;
				position: relative;
				top: 200px;
			}
			.box10 .text1{
				font-size: 30px;
				color: white;
				z-index: 1;
			}
			.box10 .text2{
				font-size: 15px;
				color: darkgray;
				z-index: 1;
				text-align: center;
			}
			.box10 .text3{
				font-size: 12px;
				color: darkgray;
				z-index: 1;
				position: relative;
				top: 540px;
				right: 80px;
			}
			.box11{
				margin-bottom: 100px;
			}
			.box11 .top{
				display: flex;
			    flex-direction: column-reverse;
			    align-items: center;
				position: relative;
			}
			.box11 .text1{
				font-size: 30px;
				color: white;
				z-index: 1;
				position: relative;
				top: 100px;
			}
			.box11 .img{
				width: 1500px;
				z-index: 0;
			}
			.box11 .text2{
				font-size: 12px;
				color: darkgray;
				z-index: 1;
				position: relative;
				top: 640px;
				right: 40px;
			}
			.box12 .img{
				width: 1200px;
				z-index: 0;
				position: relative;
				top: -400px;
			}
			.box12 .img2{
				width: 600px;
				z-index: 1;
				position: relative;
				top: 100px;
			}
			.box12 .top{
				display: flex;
			    flex-direction: column;
			    align-items: center;
			}
			.box12 .text1{
				font-size: 30px;
				color: white;
				text-align: center;
				z-index: 2;
				position: relative;
				top: -460px;
			}
			.box12 .text2{
				font-size: 12px;
				color: darkgray;
				z-index: 2;
				position: relative;
				top: 160px;
				right: 340px;
			}
			.box13{
				position: relative;
				top: -240px;
			}
			.box13 .top{
				display: flex;
				flex-direction: column-reverse;
			    align-items: center;
			}
			.box13 .text1{
				    background: -webkit-linear-gradient(130deg, #8594a3, #acb5c2 22%, #fff 50%, #b9c1cd 85%, #d9dfe3);
				    -webkit-background-clip: text;
				    -webkit-text-fill-color: rgba(0, 0, 0, 0);
				    margin-left: -.04rem;
				    color: #fff;
				    line-height: 40px;
				    letter-spacing: .02rem;
				    white-space: nowrap;
				    text-align: center;
				    font-family: MiSans-Medium;
				    font-size: 40px;
					z-index: 3;
			}
			.box13 .text2{
				font-size: 12px;
				color: darkgray;
				z-index: 2;
				text-align: center;
				margin-top: 20px;
			}
			.box13 .img{
				width: 763.56px;
				height: 191px;
			}
			.box13 .text3{
				font-size: 12px;
				color: darkgray;
				z-index: 2;
				position: relative;
				top: 260px;
				right: 160px;
			}
			.box13 .text1,.box14 .top .text1{
				margin: 0 auto;
			}
			.box14 .top{
				display: flex;
				flex-direction: column-reverse;
			    align-items: center;
			}
			.box14 .text1{
				    background: -webkit-linear-gradient(130deg, #8594a3, #acb5c2 22%, #fff 50%, #b9c1cd 85%, #d9dfe3);
				    -webkit-background-clip: text;
				    -webkit-text-fill-color: rgba(0, 0, 0, 0);
				    margin-left: -.04rem;
				    color: #fff;
				    line-height: 40px;
				    letter-spacing: .02rem;
				    white-space: nowrap;
				    text-align: center;
				    font-family: MiSans-Medium;
				    font-size: 40px;
					z-index: 3;
			}
			.box14 .text2{
				font-size: 12px;
				color: darkgray;
				z-index: 2;
				text-align: center;
				margin-top: 20px;
			}
			.box14 .img{
				width: 1500px;
				height: 600px;
				position: relative;
				top: -100px;
			}
			.box14 .text3{
				font-size: 12px;
				color: darkgray;
				z-index: 2;
				position: relative;
				top: 540px;
				right: 320px;
			}
			.box15{
				position: relative;
				top: -100px;
				display: flex;
				flex-direction: column-reverse;
				align-items: center;
				flex-wrap: wrap;
			}
			.box15 .top{
				z-index: 2;
				display: flex;
				flex-direction: column-reverse;
				align-items: center;
				flex-wrap: wrap;
				position: relative;
				top: 200px;
			}
			.box15 .img{
				width: 1500px;
				z-index: 0;
			}
			.box15 .img2{
				width: 500px;
				height: 40px;
				z-index: 1;
			}
			.box15 .text1{
				color: white;
				font-size: 50px;
				z-index: 2;
			}
			.box15 .text2{
				color: white;
				text-align: center;
				font-size: 12px;
				z-index: 2;
				position: relative;
				top: 10px;
			}
			.box15 .text3{
				display: flex;
			    flex-direction: column;
				position: relative;
				top: 580px;
			}
			.box15 .text3 p span{
				color: darkgray;
				padding-left: 10px;
			    padding-right: 120px;
				font-size: 10px;
				z-index: 2;
			}
			.box15 .text4{
				color: darkgray;
				font-size: 10px;
				z-index: 2;
				position: relative;
				top: 620px;
				right: 400px;
			}
			.box16 .top{
				display: flex;
				flex-direction: column;
			    align-items: center;
				padding: 50px;
			}
			.box16 .img{
				width: 800px;
				z-index: 0;
			}
			.box16 .text1{
				font-size: 45px;
				color: white;
				z-index: 2;
				position: relative;
				top: -40px;
			}
			.box16 .text2{
				font-size: 15px;
				color: darkgray;
				text-align: center;
				z-index: 2;
				margin-bottom: 40px;
			}
			.box16 .text3{
				font-size: 10px;
				color: darkgray;
				z-index: 2;
				position: relative;
				top: 10px;
				right: 210px;
			}
			.box17 .top{
				display: flex;
				flex-direction: column;
			    align-items: center;
				padding: 50px;
			}
			.box17 .img{
				width: 1200px;
				z-index: 0;
				position: relative;
				top: -100px;
			}
			.box17 .text1{
				font-size: 45px;
				color: white;
				z-index: 2;
				margin-bottom: 10px;
			}
			.box17 .text2{
				font-size: 15px;
				color: darkgray;
				text-align: center;
				z-index: 2;
			}
			.box17 .text3{
				font-size: 10px;
				color: darkgray;
				z-index: 2;
				position: relative;
				top: -60px;
			}
			.box18{
				position: relative;
				top: -200px;
				display: flex;
				flex-direction: column-reverse;
				align-items: center;
			}
			.box18 .img{
				width: 800px;
				z-index: 0;
			}
			.box18 .img2{
				width: 200px;
				z-index: 1;
			}
			.box18  .top{
				position: relative;
				top: 300px;
				left: 200px;
			}
			.box18 .text1{
				font-size: 40px;
				color: white;
				z-index: 2;
			}
			.box18 .text2{
				font-size: 15px;
				color: darkgray;
				z-index: 2;
				margin-top: 20px;
			}
			.box18 .text3{
				font-size: 10px;
				color: white;
				z-index: 2;
				padding: 10px;
			}
			.box18 .text3 img{
				width: 20px;
				position: relative;
				top: 5px;
			}
			.box18 .text4{
				font-size: 8px;
				color: darkgray;
				z-index: 2;
				position: relative;
				top: 420px;
				right: 340px;
			}
			.box19 .top{
				display: flex;
				flex-direction: column;
				align-items: center;
			}
			.box19  .img{
				width: 800px;
				margin-bottom: 60px;
			}
			.box19 .img2{
				width: 1520px;
				height: 650px;
				z-index: 0;
			}
			.box19 .qh{
				height: 30px;
				display: flex;
				flex-direction: row-reverse;
				position: relative;
				top: 10px;
				right: 100px;
			}
			.box19 .qh span{
				width: 30px;
				height: 2px;
				background: #b9c1cd;
				margin-right: 10px;
			}
			.box20{
				position: relative;
				top: -140px;
				overflow: hidden;
				display: flex;
				flex-direction: column-reverse;
				align-items: center;
			}
			.box20 .img{
				width: 1500px;
				z-index: 0;
				position: relative;
			}
			.box20 .top{
				z-index: 2;
				display: flex;
				flex-direction: column-reverse;
				align-items: center;
				position: relative;
				top: 160px;
			    right: 150px;
			}
			.box20 .text1{
				font-size: 30px;
				color: white;
				margin-bottom: 30px;
				position: relative;
				right: 152px;
				top: 160px;
			}
			.box20 .text2{
				font-size: 12px;
				color: darkgray;
				z-index: 1;
				margin-right: 250px;
				position: relative;
				top: 160px;
			}
			.box20 .img2{
				width: 200px;
				position: relative;
				right: 200px;
				top: 160px;
			}
			.box20 .text3{
				font-size: 15px;
				color: darkgray;
				z-index: 1;
				margin-right: 250px;
				position: relative;
				top: 320px;
				right: 50px;
			}
			.box20 .text3 span{
				color: skyblue;
			}
			.box21{
				display: flex;
			    flex-direction: row;
			}
			.box21 .img{
				width: 1226px;
				height: 622px;
				z-index: 0;
				position: relative;
				top: -100px;
			}
			.box21 .top{
				display: flex;
			    flex-direction: column;
			    align-items: center;
				z-index: 10;
				position: relative;
				left: 400px;
			}
			.box21 .color{
				background: -webkit-linear-gradient(-85deg, #cee6ff, #577799);
				-webkit-background-clip: text;
			    -webkit-text-fill-color: rgba(0, 0, 0, 0);
			    color: #fff;
			    white-space: nowrap;
			    font-family: MiSans-Medium;
			    font-size: 40px;
				z-index: 2;
			}
			.box21 .text2{
				font-size: 12px;
				color: darkgray;
				position: relative;
				right: 25px;
				line-height: 2;
			}
			.box21 .img2{
				width: 90px;
				z-index: 1;
				position: relative;
				top: 40px;
				right: 50px;
			}
			.box21 .text3{
				position: relative;
				top: -74px;
				left: 10px;
			}
			.box21 .text4{
				padding-right: 30px;
				padding-left: 10px;
			}
			.box22 .top{
				display: flex;
				flex-direction: column;
			    align-items: center;
			}
			.box22 .text1{
				font-size: 40px;
				color: white;
				text-align: center;
				margin-bottom: 20px;
			}
			.box22 .text2{
				font-size: 15px;
				color: darkgray;
				text-align: center;
				margin-bottom: 40px;
			}
			.box22 .img{
				width: 690px;
				height: 536px;
				z-index: 0;
			}
			.box23 .top{
				display: flex;
				flex-direction: column;
			    align-items: center;
			}
			.box23,.box22{
				margin-bottom: 100px;
			}
			.box23 .text1{
				font-size: 40px;
				color: white;
				text-align: center;
				margin-bottom: 20px;
			}
			.box23 .text2{
				font-size: 15px;
				color: darkgray;
				text-align: center;
				margin-bottom: 40px;
			}
			.box23 .img{
				width: 818px;
				height: 477px;
				z-index: 0;
			}
			.box24{
				display: flex;
			    flex-direction: column;
			}
			.box24 .top{
				display: flex;
			    flex-direction: column;
			    align-items: center;
			}
			.box24 .text1{
				font-size: 40px;
				color: white;
				position: relative;
				top: 500px;
				right: 200px;
				z-index: 2;
			}
			.box24 .text2{
				font-size: 20px;
				color: darkgray;
				position: relative;
				top: 512px;
			    right: 190px;
				z-index: 2;
			}
			.box24 .text3{
				font-size: 10px;
				color: darkgray;
				z-index: 2;
				position: relative;
				top: 800px;
				right: 380px;
			}
			.box24 .img{
				width: 1426px;
				height: 900px;
				z-index: 0;
			}
			.box24 .sp{
				width: 510px;
				z-index: 1;
				position: relative;
				top: 680px;
				right: 50px;
			}
			.box25 .img{
				position: relative;
				left: 100px ;
			}
			.box26{
				margin-top: 100px;
			}
			.box26 .top{
				display: flex;
			    flex-direction: column;
			    align-items: center;
			}
			.box26 .text1{
				font-size: 40px;
				color: white;
				margin-bottom: 20px;
			}
			.box26 .text2{
				font-size: 20px;
				color: darkgray;
				margin-bottom: 40px;
			}
			.box26 .text3{
				font-size: 10px;
				color: darkgray;
				position: relative;
				top: 20px;
				right: 200px;
			}
			.box27{
				margin-top: 100px;
			}
			.box27 .top{
				display: flex;
			    flex-direction: column;
			    align-items: center;
			}
			.box27 .text1{
				font-size: 40px;
				color: white;
				margin-bottom: 40px;
			}
			.box27 .text2{
				font-size: 10px;
				color: darkgray;
				position: relative;
				top: 20px;
				right: 140px;
			}
			.box27 .img{
				width: 1000px;
			}
			.box28{
				margin-top: 100px;
			}
			.box28 .img{
				width: 100%;
			}
			.box28 .top{
				display: flex;
				flex-direction: column;
			    align-items: center;
				margin-top: 40px;
				padding-bottom: 100px;
			}
			.box28 .text1{
				font-size: 15px;
				color: darkgray;
				position: relative;
				right: 310px;
				margin-bottom: 40px;
			}
			.box28 .text2{
				font-size: 10px;
				color: darkgray;
			}
			.title_nav{
				    position: relative;
				    height: 63px;
				    width: 100%;
				    margin-top: 0;
				    color: #616161;
					position: fixed;
					background: white;
					z-index: 100;
			}
			
			.box2,.box3,.box4,.box5,.box7,.box8,.box9,.box10,.box11,.box12,.box13,.box14,.box15,.box16,.box17,.box18,.box19,.box20,.box21,.box22,.box23,.box24,.box25,.box26,.box27,.box28{
				width: 1640px;
			}
			.box1{
				width: 1684px;
			}
		</style>
	</head>
	<body>
		<div class="title_nav"><div class="title">
			<ul id="left">
				<li class="big">Redmi K70</li>
				<li class="small">|</li>
				<li class="small">
					<a>Redmi K70E</a>
				</li>
				<li class="small">|</li>
				<li class="small">
					<a>Redmi K70 Pro</a>
				</li>
			</ul>
			<ul id="right">
				<li>
					<button class="ljgm">立即购买</button>
				</li>
				<li class="big">
					<a>用户评价</a>
				</li>
				<li class="big">
					<a>咨询客服</a>
				</li>
				<li class="big">
					<a>F码通道</a>
				</li>
				<li class="big">
					<a>参数页</a>
				</li>
				<li class="big">
					<a>概述页</a>
				</li>
			</ul>
		</div></div>
		
		<div class="big-box">
			<div class="box1">
				<img src="../img/resize,q_90,f_webp.webp" />
			</div>
			<div class="box2">
				<div class="img">
					<img src="../img/10000.webp" class="top" />
					<img src="../img/resize,q_90,f_webp (1).webp" class="bottom" />
				</div>
				<span class="text">
					* Antutu 综合性能跑分数据来自小米实验室，基于 Antutu V10 版本；实际情况会因具体测试环境、具体软件版本不同而略有差异，以实际情况为准。
					<br/>
					* 4000nit峰值亮度，需系统升级至 1.0.5.0.UNKCNXM 及以上版本。
					<br />
					* 小米青山护眼为小米青山护眼解决方案。
				</span>
			</div>
			<div class="box3">
				<video src="../img/1920.mp4" autoplay muted  loop></video>
			</div>
			<div class="box4">
				<div class="top">
					<div class="tp">
						<img src="../img/8557.webp" class="img" />
						<img src="../img/8552.webp" class="small" />
						
					</div>
					
					<div class="bottom">
						<span class="text1">
							第二代骁龙® 8
							<br />
							旗舰芯片，性能新升级
						</span>
						<span class="text2">
							台积电4nm工艺，创新的高能效 1+4+3 CPU架构，
							<br/>
							AI从芯片底层深度赋能，实现性能实力爆发，
							<br/>
							轻松应对游戏中高负载场景，多任务处理更流畅、
							<br/>
							功耗表现更优秀。
						</span>
					</div>
				</div>
				<span class="text">
					*Antutu综合性能跑分数据来自小米实验室，基于Antutu V10版本；实际情况会因具体测试环境、具体软件版本不同而略有差异，以实际情况为准；
					<br />

				</span>
				<span class="text">
					*CPU性能、GPU性能数据来源小米实验室，AI 性能数据源自高通官方数据，对比对象为第一代骁龙8。
				</span>
			</div>
			<div class="box5">
				<img src="../img/6931.webp" class="img" />
				<div class="top">
					<div class="text5">
						液冷导热能力提升对比传统VC，石墨导热能力提升对比 K60，数据源自小米实验室环境测试所得，环境温度 25℃±1℃，具体可能会因使用状况和环境因素而变化。
					</div>
					<div class="spacer"></div>
					<br />
					<div class="text3">石墨导热能力提升*</div>
					<div class="text4">液冷导热能力*</div>
					<img src="../img/resize,q_90,f_webp (2).webp" class="img2" />
					<div class="text2">
						全新冰封循环冷泵，采用先进的气液分离设计和定向循环结构，搭配高导热石墨、人因导热架构，
						<br />
						结合 AI 智能温控算法，构建创新一代冰封散热™系统！
					</div>
					<div class="text1">
						创新一代冰封散热™系统
						<br/>
						ICELOOP 冰封循环冷泵
					</div>
				</div>
			</div>
			<div class="box6">
				<img src="../img/8575.webp" class="img"/>
				<div class="top">
					<div class="text2">
						以人为中心，打造「人车家全生态」操作系统
					</div>
					<img src="../img/resize,q_90,f_webp (3).webp" class="img2" />
					<div class="text1">
						出厂搭载小米澎湃OS 
						<br />
						底层架构支撑，AI 子系统赋能
					</div>
				</div>
			</div>
			<div class="box7">
				<div class="top">
					<div class="text1">
						深入小米澎湃OS 内核，「AI子系统」深度赋能，催化AI
						<br />
						能力跃升。「狂暴引擎 3.0」，实现 AI 性能调度、AI 操
						<br />
						控、AI 渲染三大能力跃迁。
					</div>
					<div class="text2">
						*对比对象为未搭载狂暴引擎3.0的自有产品
					</div>
				</div>
				<img src="../img/8580.webp" class="img" />
			</div>
			<div class="box8">
				<img src="../img/8589.webp" class="img"/>
				<div class="top">
					<div class="text4">
						*数据来自小米实验室，基于16GB内存版本实测，测试室温约为25°，
						<br />
						屏幕起始亮度为350nit，测试时长60分钟。使用高品质手游 《王者荣耀》 实测，
						<br />
						实际情况会因测试环境，测试条件等不同略有差异。
					</div>
					<div class="text3">
						<span>
								《王者荣耀》
						</span>
						<br />
						高画质丨高分辨率丨室温25℃｜60分钟
					</div>
					<img src="../img/8591.webp" class="img2" />
					<div class="text2">
						通过 AI 实现精准调频、线程管理及实时稳帧，同场景功耗更低.
					</div>
					<div class="text1">
						「AI 性能调度」能效提升
						<br />
						重载场景下，依旧满血满帧！
					</div>
				</div>
			</div>
			<div class="box9">
				<img src="../img/8349.webp" class="img" />
				<div class="top">
					<div class="text3">
						*响应、渲染均匀性、平滑度、跟随性提升数据，绘制堆积、抖动率降低数据，对比对象为未搭载狂暴引擎3.0的自有产品，数据来自小米实验室，
						<br />
						实际情况会因测试环境，测试条件等不同略有差异，请以实际使用为准。
					</div>
					<div class="text2">
						AI 响应提速，提升游戏跟手性。AI 机器学习触控规律，精准剔除
						<br />
						干扰信号，触控体验更顺手。
						<img src="../img/8353.webp" class="img2" />
					</div>
					<div class="text1">
						「AI操控」多链路响应更快
						<br />
						游戏出招，更快、更准、更稳！
					</div>
				</div>
				
			</div>
			<div class="box10">
				<img src="../img/6948.webp" class="img" />
				<div class="top">
					<div class="text1">
						「AI 渲染」画质更清晰
						<br />
						呈现大片级2K游戏视效
					</div>
					<div class="text2">
						AI 自研图形算法，重构渲染模型，点对点渲染画面，突破游戏原生分辨率限制，
						<br />
						实现大型开放世界手游 2K 超分显示*！
					</div>
					<div class="text3">
						此功能需系统升级至 1.0.5.0.UNKCNXM 及以上版本。
						<br />
						*图片为 AI 生成，仅作示意，请以实际使用为准。
						<br />
						*数据来自小米实验室，实际情况会因测试环境，测试条件等不同略有差异，请以实际使用为准
					</div>
				</div>
			</div>
			<div class="box11">
				<div class="top">
					<img src="../img/8601.webp" class="img" />
					<div class="text1">
						大型开放世界手游重载实测,极近满帧
					</div>
					<div class="text2">
						*图片为 AI 生成，仅作示意，请以实际使用为准。
						<br/>
						*数据来自小米实验室，实际情况会因测试环境，测试条件等不同略有差异，请以实际使用为准。
					</div>
				</div>
			</div>
			<div class="box12">
				<div class="top">
					<img src="../img/1797.webp"  class="img2" />
					<div class="text1">
						第二代高端2K中国屏
						<br />
						「小米青山护眼」创新护眼方案*
					</div>
					<div class="text2">
						 *小米青山护眼为小米青山护眼解决方案。
					</div>
					<img src="../img/8361.webp"  class="img" />
					
				</div>
			</div>
			<div class="box13">
				<div class="top">
					<img src="../img/8609.webp" class="img" />
					<div class="text3">
						*发光效率提升对比对象为 K60。
						<br />
						*4000nit 峰值亮度，需系统升级至 1.0.5.0.UNKCNXM 及以上版本。
					</div>
					<div class="text2">
						Redmi与TCL华星 联合研发，全新C8低功耗发光材料，发光效率提升15.9%* ，
						<br />
						峰值亮度*更是达到 Redmi 前所未有的 4000nit*！
					</div>
					<div class="text1">2K超动态</div>
					
				</div>
			</div>
			<div class="box14">
				<div class="top">
					<img src="../img/8614.webp" class="img" />
					<div class="text3">
						 *多屏同色功能仅支持小米、Redmi 自有产品。
					</div>
					<div class="text2">
						R每一块屏幕出厂前，都经过逐片校准，还原真实色彩。12bit色深、
						<br />
						100% P3广色域，为你带来专业级的色彩显示。，
					</div>
					<div class="text1">2K超色彩</div>
				</div>
			</div>
			<div class="box15">
				<img src="../img/8620.webp" class="img" />
				<div class="top">
					<div class="text4">
						* 指触控分辨率提升至物理显示分辨率的 16 倍，提高触控精度。
					</div>
					<div class="text3">
						<img src="../img/resize,q_90,f_webp (4).webp" class="img2" />
						<p>
							<span>瞬时触控采样率</span>
							<span>超分触控</span>
							<span>精确识别触控操作</span>										
						</p>
					</div>
					<div class="text2">
						2160Hz瞬时触控+ 16倍超分触控*，让你实现精准打击、不失毫厘！
						<br />
						更有湿手触控，日常使用也游刃有余。
					</div>
					<div class="text1">
						2K超精准
					</div>
				</div>
				
			</div>
			<div class="box16">
				<div class="top">
					<div class="text1">
						小米青山护眼
					</div>
					<div class="text2">
						Redmi 通过 「中国信通院」 联合 「中山大学中山眼科中心」制定的医工融合标准*，结合显示光学和视觉健康维度，
						<br />
						从眼脑身心人因维度，打造更专业的2K护眼屏。
					</div>
					<img src="../img/8622.webp" class="img" />
					<div class="text3">
						 *小米青山护眼为小米青山护眼解决方案。
						 <br />
						* 测评根据中国信通院和中山大学中山眼科中心制定的CQC/PV12001.1-2023标准
					</div>
				</div>
			</div>
			<div class="box17">
				<div class="top">
					<div class="text1">
						AI 超级影院
					</div>
					<div class="text2">
						全新「影院模式」基于 AI 模型，3D LUT 算法逐帧优化，实现画质智能增强。
						<br />
						小米音频实验室专业调校，给你影院级视听体验。
					</div>
					<img src="../img/8628.webp" class="img" />
					<div class="text3">
						* 此功能需系统升级至 1.0.5.0.UNKCNXM 及以上版本
					</div>
				</div>
			</div>
			<div class="box18">
				<img src="../img/451.webp" class="img" />
				<div class="top">
					<img src="../img/8552.webp" class="img2" />
					<div class="text1">
						「性能美学」
						<br />
						优雅性能旗舰，质感新境界
					</div>
					<div class="text2">
						这是 Redmi K 系列「性能美学」新力作！灵感来源于月球上古老的
						<br />
						岩石 — 月岩，在光影下展现能量暗纹，蓄势待发，张力十足。
					</div>
					<div class="text3">
						<img src="../img/resize,q_90,f_webp (6).webp" />墨羽
						<img src="../img/resize,q_90,f_webp (5).webp" />晴雪
					</div>
					<div class="text4">
						*墨羽及晴雪配色为丝绒质感玻璃，竹月蓝与浅茄紫配色为陶瓷质感玻璃。
					</div>
				</div>
			</div>
			<div class="box19">
				<div class="top">
					<img src="../img/10001.webp" class="img" />
					<img src="../img/8888.webp" class="img2" />
				</div>
				<div class="qh">
					<span class="link"></span>
					<span class="green"></span>
				</div>
			</div>
			<div class="box20">
				<img src="../img/8645.webp" class="img"/>
				<div class="top">
					<div class="text3">
						*传感器感光面积增加对比对象为 K60。
					</div>
					<div class="text2">
						专业定制「光影猎人™ 800」高动态影像传感器，1/1.55" 大底、
						<br/>
						f/1.6 大光圈、OIS 光学防抖，感光面积增加62%*。小米影像
						<br />
						大脑算力加持，专业快拍，成像更清晰。
					</div>
					<div class="text1">
						光影猎人™ 800传感器
						<br/>
						5000万像素 闪电快拍
					</div>
					<img src="../img/8552.webp" class="img2" />
				</div>
			</div>
			<div class="box21">
				<div class="top">
					<span class="text1 color">
						50MP主摄
					</span>
					<span class="text2">
						光影猎人™ 800
						<br/>
						1/1.55" 定制大底
						<br/>
						f/1.6大光圈
						<br/>
						2.0m 融合大像素
						<br/>
						双原生 ISO Fusion Max
						<br/>
						6P 镜头
						<br/>
						OIS 光学防抖
					</span>
					<img src="../img/resize,q_90,f_webp (7).webp" class="img2" />
					<span class="text3 color">
						8MP  超广角
					</span>
					<span class="text4 color">
						<span>
							2MP
						</span>
						微距
					</span>
				</div>
				<img src="../img/8653.webp" class="img"/>
			</div>
			<div class="box22">
				<div class="top">
					<div class="text1">
						1秒30张 高画质闪电快拍
						<br />
						轻松捕捉“神奇”一刻
					</div>
					<div class="text2">
						小米影像大脑「加速引擎」，从底层提升拍摄流畅度，轻松挑战1秒连拍30张。得益于光影猎人™ 800
						<br />
						「单帧高动态抓拍」，帧帧都是高画质，留住生活中的神奇瞬间。
					</div>
					<img src="../img/8655.webp" class="img" />
				</div>
			</div>
			<div class="box23">
				<div class="top">
					<div class="text1">
						RAW 域 「小米夜枭算法」
						<br />
						夜的生动，一次就拍全
					</div>
					<div class="text2">
						应用 AI 去噪算法，即使在极暗拍摄场景下，也能实现精准的色彩还原，一次成像，
						<br />
						即刻记录清晰、明亮的夜景细节。
					</div>
					<img src="../img/8661.webp" class="img" />
				</div>
			</div>
			<div class="box24">
				<div class="top">
					<div class="text1">
						创新「胶片风格」视频滤镜
						<br />
						让你的日常记录，更有氛围感
					</div>
					<div class="text2">
						这一次将Redmi特有的胶片风格滤镜，首次应用到视频场景。
						<br />
						精心挑选2款经典胶片，从底层为你展现真实胶片质感，
						<br />
						日常生活视频也能拍出电影氛围感。
					</div>
					<video src="../img/8889.mp4" class="sp" autoplay muted loop></video>
					<div class="text3">
						* 画面仅作示意，请以实际使用为准。
					</div>
				</div>
				<img src="../img/8683.webp" class="img" />
			</div>
			<div class="box25">
				<img src="../img/QQ截图20240322154035.png" class="img" />
			</div>
			<div class="box26">
				<div class="top">
					<div class="text1">
						「智慧充电引擎」
						<br />
						小米澎湃电池管理系统
					</div>
					<div class="text2">
						智慧充电引擎 + 小米澎湃电池管理系统，提升充电效率和电池安全有效提升续航，避免日常续航焦虑。
					</div>
					<img src="../img/QQ截图20240322150722.png" class="img" />
					<div class="text3">
						*数据来自小米实验室，使用仅支持DCP类型共享充电宝在25度环温下，触发户外充电，息屏充电速度最高提升20%，20%为优化前后的对比数据。
					</div>
				</div>
			</div>
			<div class="box27">
				<div class="top">
					<div class="text1">
						旗舰体验再进化
					</div>
					<img src="../img/resize,q_90,f_webp (8).webp" class="img" />
					<div class="text2">
						*通讯信号数据来源于小米实验室，与上一代K60对比，双翼天线辐射面积增加170%，信号最大提升39%，不同机器可能存在差异，请以实际体验为准。
						<br />
						*AI 体验进化相关功能需在小米社区获得“Xiaomi HyperOS AI内测”资格后使用。具体内测规则请见“Xiaomi HyperOS AI内测公告”；
						<br />
						AI 内测包将从 12 月下旬开始推送，并逐步增加相关的功能模块内测，具体以推送时间为准。
					</div>
				</div>
			</div>
			<div class="box28">
				<img  src="../img/8697 (1).webp" class="img" />
				<div class="top">
					<div class="text1">
						备注：
					</div>
					<div class="text2">
						*全站所展示结构图片，均为功能示意图；产品图片和显示内容仅供参考，实际产品功能和规格（包括但不限于外观，颜色和尺寸）以及实际显示内容
						<br />
						可能有所不同，最终以实物为准。*内存与容量方面，实际可用容量会由于诸多因素而减少并有所差异：由于操作系统运行占据了部分内存（RAM），
						<br />
						实际可用空间小于标识内存容量；由于安装操作系统和预装的程序占据部分闪存（ROM），实际可用存储空间小于标识闪存容量。*产品图片以及型号、
						<br />
						数据、功能、性能、规格参数、用户界面和其他产品信息等仅供参考，小米有可能对上述内容进行改进，具体信息请参照产品实物、产品说明书。除非
						<br/>
						经特殊说明，本网站中所涉及的数据均为小米内部测试结果。*产品图片、型号、数据、功能、性能、规格参数、用户界面和其他产品信息可能因产品批次
					</div>
				</div>
			</div>
			
		</div>
		<script>
			
		</script>
	</body>
</html>