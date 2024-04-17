 
function Dizhi() {
	  	    var element1 = document.getElementById("dizhi1");
	  	    var element2 = document.getElementById("dizhi2");
	  		
	  	    if (element1.style.display === "none") {
	  	      element1.style.display = "block";
	  		  element2.style.display = "none";
	  	    } else {
	  	      element1.style.display = "none";
	  	      element2.style.display = "block";
	  	    }
	  		
	  	  }
function Yanzhen(){
	
	 var numericInput = document.getElementById("numericInput");
	 var sas = numericInput.value;
		if (sas.length < 11) {
                // 如果超过11位，则截断为前11位
                alert('电话不符合格式');
    		    event.preventDefault(); // 阻止表单提交
            }
}