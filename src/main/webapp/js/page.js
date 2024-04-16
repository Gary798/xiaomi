function showPage(index) {
  var iframe = document.getElementById("iframeContent");
  switch(index) {
    case 0:
      iframe.src = "首页.jsp";
      break;
    case 1:
      iframe.src = "user.jsp";
      break;
    case 2:
      // 默认显示商品新增页面
      iframe.src = "product.jsp";
      break;
    case 3:
      iframe.src = "../jsp/商品新增.jsp";
      break;
    case 4:
      iframe.src = "../jsp/规格管理.jsp";
      break;
    case 5:
      iframe.src = "../jsp/价格组合.jsp";
      break;
    case 6:
      iframe.src = "../jsp/订单管理.jsp";
      break;
    case 7:
      iframe.src = "../jsp/评论审核.jsp";
      break;
    default:
      break;
  }
}
