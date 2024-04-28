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
      iframe.src = "product.jsp";
      break;
    case 3:
      iframe.src = "speci.jsp";
      break;
    case 4:
      iframe.src = "order.jsp";
      break;
    case 5:
      iframe.src = "admingeren.jsp";
      break;
    case 6:
      iframe.src = "hp.jsp";
      break;
    default:
      break;
  }
}
