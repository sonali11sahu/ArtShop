 <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<html>
<head>
<title>Art Shop</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Classic Style Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->

	
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="js/jquery.min.js"></script>
<script src="js/json2.js"></script>
<!-- //js -->
<!-- cart -->
<script src="js/simpleCart.js"></script>
<!-- cart -->
<!-- for bootstrap working -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<!-- animation-effect -->
<link href="css/animate.min.css" rel="stylesheet"> 
<script src="js/wow.min.js"></script>
<script>
 new WOW().init();
 
 function checkout()
 {
 	alert("CHECKOUT");
 	var iti = JSON.stringify(simpleCart.items);
 	var list =[] ;
 	//console.log(iti);
 	//console.log( "ITEMS  : "+sc_items);
 	
 	simpleCart.each(function(item){
 		let i = {
 				name: item.get('name'),
 				price: item.get('price'),
 				quantity: item.get('quantity'),
 				pid: item.get('pid'),
 				cid: item.get('cid'),
 				id : item.get('id'),
 				loc : item.get('loc')
 				//id: item.get('id')
 		};
		  console.log( JSON.stringify(item));
		  list.push(i);
		});
 	console.log( "ITEMS  : "+JSON.stringify(list ));
 	
 	/*simpleCart({
 	    checkout: { 
 	        type: "SendForm" , 
 	        url: "checkout" ,

 	        // http method for form, "POST" or "GET", default is "POST"
 	        method: "POST"
 	    } 
 	});*/

 	var total = simpleCart.total();
 	var grandtotal = simpleCart.grandTotal();
 	var tax = simpleCart.tax();
 	var shipping = simpleCart.shipping();
 	console.log("total : "+total+" tax : "+tax+" shipping : "+shipping+" Gtotal : "+grandtotal);
 	
 	document.getElementById("f_itemstr").value = JSON.stringify(list );
 	document.getElementById("f_total").value = total;
 	document.getElementById("f_tax").value = tax;
 	document.getElementById("f_shipping").value = shipping;
 	document.getElementById("f_grandtotal").value = grandtotal;

 	document.checkout.submit();
 	
 }
</script>
<!-- //animation-effect -->
<link href='//fonts.googleapis.com/css?family=Cabin:400,500,600,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>
</head>
	
<body>
<form action="checkout" method="post" name="checkout">

<input type="hidden" id="f_itemstr" name="itemstr">
<input type="hidden" id="f_total" name="total">
<input type="hidden" id="f_tax" name="tax">
<input type="hidden" id="f_shipping" name="shipping">
<input type="hidden" id="f_grandtotal" name="grandtotal">

</form>
<!-- header -->
	<div class="header">
			<div class="header-grid">
					<div class="container">
				<div class="header-left animated wow fadeInLeft" data-wow-delay=".5s">
					<ul>
					<li><i class="glyphicon glyphicon-headphones"></i><a href="#">24x7 live support</a></li>
						<li><i class="glyphicon glyphicon-envelope" ></i><a href="mailto:info@artshop.com">info@artshop.com</a></li>
						<li><i class="glyphicon glyphicon-earphone" ></i>+1234 567 892</li>
						<c:if test="${!empty sessionScope.id }"><li>Welcome ${user.fname} </li></c:if>
					</ul>
				</div>
				<div class="header-right animated wow fadeInRight" data-wow-delay=".5s">
				<div class="header-right1 ">
					<c:choose> 
					<c:when test="${empty sessionScope.id}">
					<ul>
						
    						<li><i class="glyphicon glyphicon-log-in" ></i><a href="login">Login</a></li>
							<li><i class="glyphicon glyphicon-book" ></i><a href="register">Register</a></li>	
					</ul>
					</c:when>
					<c:otherwise>
					<ul>
					<li><i class="glyphicon glyphicon-log-out" ></i><a href="logout">Logout</a></li>
					<li><i class="glyphicon glyphicon-user" ></i><a href="register">Account</a></li>
					</ul>
					</c:otherwise>
					</c:choose>
				</div>
				<div class="header-right2">
					<div class="cart box_1">
						<a href="javascript:checkout()">
							<h3> <div class="total">
								<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</div>
								<img src="images/cart.png" alt="" />
							</h3>
						</a>
						<p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
						<div class="clearfix"> </div>
					</div>	
				</div>
				<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
			</div>
			<div class="container">
			<div class="logo-nav">
				
					<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header nav_2">
						<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						 <div class="navbar-brand logo-nav-left ">
							<h1 class="animated wow pulse" data-wow-delay=".5s"><a href="home">Art<span>Shop</span></a></h1>
						</div>

					</div> 
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav">
							<li class="active"><a href="home" class="act">Home</a></li>	
							<!-- Mega Menu -->
							<li ><a href="product?category=1">Paintings</a></li>
							<li ><a href="product?category=2">Drawings</a></li>
							<li><a href="product?category=3"> Sculptures</a></li>
							<li><a href="#">Contact Us</a></li>
						</ul>
					</div>
					</nav>
				</div>
				
		</div>
	</div>
	
<!-- //header -->

<!-- MODAL -->
<c:if test="${!empty modal }">
<c:out value="${modal}"></c:out>
<div id="myModal" class="modal">
  <!-- Modal content -->

  <div class="modal-content">
    <span class="mclose">&times;</span>
    <p><c:out value="${modal}"></c:out></p>
  </div>

</div>

<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
//var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
/*btn.onclick = function() {
    modal.style.display = "block";
}*/

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
</c:if>