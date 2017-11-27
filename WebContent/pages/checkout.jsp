<%@ include file="header.jsp" %>

<!--banner-->
<div class="banner-top">
	<div class="container">
		<h2 class="animated wow fadeInLeft" data-wow-delay=".5s">Checkout</h2>
		<h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="home">Home</a><label>/</label>Checkout</h3>
		<div class="clearfix"> </div>
	</div>
</div>
<!-- contact -->
		<div class="check-out">	 
		<div class="container">	 
	 
<!-- 	 		<script type="text/javascript"> 
 				function updateQuan(id){
 					alert(id);	
				}
 			</script> 

 			<script>$(document).ready(function(c) { 
					$('.close2').on('click', function(c){
 						$('.cross1').fadeOut('slow', function(c){
 							$('.cross1').remove();
 						});
						});	  
				});
		   </script>	 
 			   <script>$(document).ready(function(c) { 
 					$('.close3').on('click', function(c){
						$('.cross2').fadeOut('slow', function(c){
							$('.cross2').remove();
						});
						});	  
 					});
 			   </script>	 -->
 			   
 <table class="table animated wow fadeInLeft" data-wow-delay=".5s">
		  <tr>
			<th class="t-head head-it ">Item</th>
			<th class="t-head">Price</th>
			<th class="t-head">Quantity</th>
			<th class="t-head">Total</th>
		  </tr>
		  
			<c:forEach var="item" items="${cart.items}" varStatus="loop">

				<tr class="cross${loop.index} simpleCart_shelfItem itemRow" id="${item.id}">
					<td class="ring-in t-data"><a href="single.html" class="at-in">
							<img src="<c:out value='${item.loc }'></c:out>" class="img-responsive" style="max-width: 120px;min-height: 164px;" alt="">
					</a>
						<div class="sed">
							<h5 class="item_name"><c:out value="${item.name }"></c:out></h5>
						</div>
						<div class="clearfix"></div>
						<div class="close${loop.index} "><a href="javascript:;" class="item_remove"></a></div></td>
					<td class="t-data item_price">$${item.price }</td>
					<td class="t-data"><div class="quantity">
							<div class="quantity-select">
<!-- 								<div class="entry value-minus "><a href="javascript:;" class="">&nbsp;</a></div> -->
								<div class="entry value ">
									<span class="span-1 item_quantity" onchange="updateQuan('${item.id}');">${item.quantity}</span>
								</div>
<!-- 								<div class="entry value-plus active"><a href="javascript:;" class="">&nbsp;</a></div> -->
							</div>
						</div></td>
					<td class="t-data ">$${item.quantity * item.price }</td>

				</tr>

<%-- 				<tr class="cross${index} simpleCart_shelfItem itemRow" id="${item.id}"> --%>
<!-- 					<td class="ring-in t-data"><a href="single.html" class="at-in"> -->
<%-- 							<img src="${item.loc }" class="img-responsive" alt=""> --%>
<!-- 					</a> -->
<!-- 						<div class="sed"> -->
<%-- 							<h5 class="item_name"><c:out value="${item.name }"></c:out></h5> --%>
<!-- 						</div> -->
<!-- 						<div class="clearfix"></div> -->
<%-- 						<div class="close${index} "><a href="javascript:;" class="simpleCart_remove"></a></div></td> --%>
<!-- 					<td class="t-data item_price">$${item.price }</td> -->
<!-- 					<td class="t-data"><div class="quantity"> -->
<!-- 							<div class="quantity-select"> -->
<!-- 								<div class="entry value-minus "><a href="javascript:;" class="simpleCart_decrement">&nbsp;</a></div> -->
<!-- 								<div class="entry value "> -->
<%-- 									<span class="span-1 item_quantity">${item.quantity}</span> --%>
<!-- 								</div> -->
<!-- 								<div class="entry value-plus active simpleCart_increment"><a href="javascript:;" class="simpleCart_increment">&nbsp;</a></div> -->
<!-- 							</div> -->
<!-- 						</div></td> -->
<!-- 					<td class="t-data ">$${item.quantity * item.price }</td> -->

<!-- 				</tr> -->

			</c:forEach>
	</table>
				<div class=" cart-total">
			
			 <h5 class="continue " >Cart Total</h5>
			 <div class="price-details">
				 <h3>Price Details</h3>
				 <span>Total</span>
				 <span class="total1 simpleCart_total"></span>
				 <span>Tax</span>
				 <span class="total1 simpleCart_tax"></span>
				 <span>Delivery Charges</span>
				 <span class="total1 simpleCart_shipping"></span>
				 <div class="clearfix"></div>				 
			 </div>	
			 <ul class="total_price">
			   <li class="last_price"> <h4>TOTAL</h4></li>	
			   <li class="last_price simpleCart_grandTotal"></li>
			   <div class="clearfix"> </div>
			 </ul>
			
			 <a href="payment">Proceed to pay</a>
			 
			</div>
			
		
		 </div>
		 </div>
		 				<!--quantity-->
			<script>
			$('.value-plus').on('click', function(){
				var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)+1;
				divUpd.text(newVal);
			});

			$('.value-minus').on('click', function(){
				var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)-1;
				if(newVal>=1) divUpd.text(newVal);
			});
			</script>
			<!--quantity-->
			
<%@ include file="footer.jsp" %>