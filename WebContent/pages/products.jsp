<%@ include file="header.jsp" %>
<!--banner-->
<div class="banner-top">
	<div class="container">
		<h2 class="animated wow fadeInLeft" data-wow-delay=".5s">${categoryName}</h2>
		<h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="index.html">Home</a><label>/</label>Products<label>/</label>Women's</h3>
		<div class="clearfix"> </div>
	</div>
</div>
	<!--content-->
		<div class="product">
			<div class="container">
			<div class="col-md-12 animated wow fadeInRight" data-wow-delay=".5s">
				
			<div class="mid-popular">
			<c:forEach var="prod" items="${products }" varStatus="index" >
				<div class="col-sm-4 item-grid item-gr  simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="#">
											<div class="grid-img">
												<img  src="<c:out value='${prod.loc }'></c:out>" class="img-responsive" alt="">
											</div>		
										</a>		
									</figure>	
									<span class="item_pid" style="display: none;">${prod.pid }</span>
									<span class="item_loc" style="display: none;"><c:out value="${prod.loc }"></c:out></span>
									<span class="item_cid" style="display: none;">${prod.cid}</span>
								</div>
								<div class="women">
				
									<h6><a href="#" class="item_name">${prod.name}</a></h6>
									<p>${prod.desc}</p>
									<p ><del>$${prod.price * 1.2 }</del><em class="item_price">$${prod.price}</em></p>
									<a href="javascript: logItem();" data-text="Add To Cart" class="but-hover1 item_add">Add To Cart</a>
								</div>
							</div>
						</div>
						</c:forEach>
					<div class="clearfix"></div>
				</div>
			</div>

		</div>
							
		</div>
				<!--//products-->

<%@ include file="footer.jsp" %>