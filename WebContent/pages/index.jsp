<%@ include file="header.jsp" %>

<!-- banner -->
	<div class="banner">
	
	<div class="banner-right">
					<ul id="flexiselDemo2">			
						<li><div class="banner-grid">
						<h2>Featured Products</h2>
						<div class="wome">
								<a href="single.html" class=""> <img class="img-responsive " src="images/bi1.jpg" alt="" />
								</a>
								<div class="women simpleCart_shelfItem">
									<h6 ><a href="#" class="item_name">Anamorphosis</a></h6>
									<span class="item_pid" style="display: none;">1</span>
									<span class="item_loc" style="display: none;"><c:out value="images/bi1.jpg"></c:out></span>
									<span class="item_cid" style="display: none;">painting</span>
									<p class="ba-price"><del>$1700.00</del><em class="item_price">$1,640</em></p>
									<a href="javascript: logItem()" data-text="Add To Cart" class="but-hover1 item_add">Add To Cart</a>
								</div>							
								</div>							
							</div></li>
						<li><div class="banner-grid">
						<h2>Featured Products</h2>
						<div class="wome">
								<a href="#" ><img class="img-responsive" src="images/bi.jpg" alt="" />
								</a>	
								<div class="women simpleCart_shelfItem">
									<h6 ><a href="#" class="item_name">Anamorphosisss</a></h6>
									<span class="item_pid" style="display: none;">2</span>
									<span class="item_cid" style="display: none;">painting</span>
									<p class="ba-price"><del>$800.00</del><em class="item_price">$700.00</em></p>
									<a href="javascript: logItem();" data-text="Add To Cart" class="but-hover1 item_add">Add To Cart</a>
								</div>						
								</div>						
							</div></li>
						<li><div class="banner-grid">
						<h2>Featured Products</h2>
						<div class="wome">
								<a href="#" ><img class="img-responsive" src="images/bi2.jpg" alt="" />
								</a>	
								<div class="women simpleCart_shelfItem">
									<h6 ><a href="single.html" class="item_name">Sed ut perspiciatis unde</a></h6>
									<span class="item_pid" style="display: none;">3</span>
									<span class="item_cid" style="display: none;">painting</span>
									<p class="ba-price"><del>$100.00</del><em class="item_price">$70.00</em></p>
									<a href="javascript: logItem();" data-text="Add To Cart" class="but-hover1 item_add">Add To Cart</a>
								</div>						
								</div>						
							</div></li>
						
					
					</ul>
					<script type="text/javascript">
					function logItem()
					{
						alert("HELLO");
						simpleCart.each(function(item){
							  console.log( item.get('name') );
							  console.log( item.get('price') );
							  console.log( item.get('quantity') );
							  console.log( item.get('loc') );
							});
					}
					</script>
					<script type="text/javascript">
		$(window).load(function() {
			$("#flexiselDemo2").flexisel({
				visibleItems: 1,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 5000,    		
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
		    	responsiveBreakpoints: { 
		    		portrait: { 
		    			changePoint:480,
		    			visibleItems: 1
		    		}, 
		    		landscape: { 
		    			changePoint:640,
		    			visibleItems: 1
		    		},
		    		tablet: { 
		    			changePoint:768,
		    			visibleItems: 1
		    		}
		    	}
		    });
		    
		});
	</script>
		<script type="text/javascript" src="js/jquery.flexisel.js"></script>

					</div>

				
				</div>

	</div>
<!-- //banner -->
<!--content-->
		<div class="content">
		<div class="content-head">
					
					<div class="col-md-6 col-m1 animated wow fadeInLeft" data-wow-delay=".1s">
						<div class="col-1">
						<div class="col-md-6 col-2">
							<a href="single.html"><img src="images/pi3.jpg" class="img-responsive" alt="">
							</a></div>
							<div class="col-md-6 col-p">
								<h5>For All Paintings</h5>
								<p>Paintings both reflect the artist's point-of-view and possess an independent voice which speaks a unique message to each beholder.</p>
								<a href="single.html" class="shop" data-hover="Shop Now">Shop Now</a>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="col-1">
						<div class="col-md-6 col-p">
								<h5>For All Drawings</h5>
								<p>With the range of drawing media available, artists can produce a wide variety of multicolored and monochromatic art drawings.</p>
								<a href="single.html" class="shop" data-hover="Shop Now">Shop Now</a>
							</div>
						<div class="col-md-6 col-2">
							<a href="single.html"><img src="images/pi1.jpg" class="img-responsive" alt="">
							</a></div>
							<div class="clearfix"> </div>
						</div>
						</div>
					
					<div class="col-md-6 col-m2 animated wow fadeInRight" data-wow-delay=".1s">
					
						<!---->
						 <!-- requried-jsfiles-for owl -->
							<link href="css/owl.carousel.css" rel="stylesheet">
							    <script src="js/owl.carousel.js"></script>
							        <script>
									    $(document).ready(function() {
									      $("#owl-demo").owlCarousel({
									        items : 2,
									        lazyLoad : false,
									        autoPlay : true,
									        navigation : true,
									        navigationText :  true,
									        pagination : false,
									      });
									    });
									  </script>
							 <!-- //requried-jsfiles-for owl -->
							 <!-- start content_slider -->
						       <div id="owl-demo" class="owl-carousel">
					                <div class="item">					                	 
										  
											<a href="single.html"><img class="img-responsive" src="images/bb.jpg" alt="" /></a>  
											<a href="single.html" class="shop-2" >Shop Now</a>
								
					                </div>
									<div class="item">					                	  
										
											<a href="single.html"><img class="img-responsive" src="images/bb1.jpg" alt="" /></a>  
											<a href="single.html" class="shop-2">Shop Now</a>									
																		
					                </div>
									
									<div class="item">					                	 
									
											<a href="single.html"><img class="img-responsive" src="images/bb2.jpg" alt="" /> </a> 
											<a href="single.html" class="shop-2">Shop Now</a>									
																			
					                </div>
									<div class="item">					                	  
										
											<a href="single.html"><img class="img-responsive" src="images/bb3.jpg" alt="" /></a>  
											<a href="single.html" class="shop-2">Shop Now</a>									
																		
					                </div>
							</div>
						<div class="owl-wrapper-outer" style="padding: 4.5px">
						
						<h3>Discover new original artwork from around the world!</h3>
						<br>
						<h5>For a bit more help finding the perfect artwork from our selection of original paintings for sale, we also invite you to take advantage of our mind-blowing collections. As Vincent Van Gogh once said, "Paintings have a life of their own that derives from the painter's soul."</h5>
						<br>
						<h5> If you enjoy drawing and would like to own original works to inspire you, or if you're an art lover who'd like to feature one or a collection of drawings in a room, we're confident that you'll find works you love within our vast selection of original fine art drawings for sale from around the world. </h5>
						<h5>If you love sculpture, we encourage you to browse our selection of original sculptures for sale by artists from around the globe--many of whom are beginning to make waves in the art world.</h5>
						</div>
					   </div>
					   <div class="clearfix"></div>
			</div>	
					</div>
				
			<!---->
			
				<div class="content-top">
					<div class="col-md-5 col-md1 animated wow fadeInLeft" data-wow-delay=".1s">
						<div class="col-3">
							<a href="single.html"><img src="images/bb1.jpg" class="img-responsive " alt="">
							<div class="col-pic">	
								<h5>Paintings</h5>
								<p>Relish your senses</p>
							</div></a>
						</div>
						
					</div>
					<div class="col-md-7 col-md2 animated wow fadeInRight" data-wow-delay=".1s">
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="product?category=1">
											<div class="grid-img">
												<img  src="images/pi.jpg" class="img-responsive" alt="">
												<span style="display:none;" class="item_loc"><c:out value="${image}"></c:out></span>
											</div>		
										</a>		
									</figure>	
								</div>
								<div class="women">
									<h6><a href="product?category=1 item_name">Sed ut perspiciatis unde</a></h6>
									<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
									<a href="#" data-text="Add To Cart" class="but-hover1 item_add">Add To Cart</a>
								</div>
							</div>
						</div>
				
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="single.html">
											<div class="grid-img">
												<img  src="images/pr3.jpg" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="images/pr2.jpg" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="images/ll.png" alt=""></a>
									<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
									<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
									<a href="#" data-text="Add To Cart" class="but-hover1 item_add">Add To Cart</a>
								</div>
							</div>
						</div>
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
						<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="single.html">
											<div class="grid-img">
												<img  src="images/pr5.jpg" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="images/pr4.jpg" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="images/ll.png" alt=""></a>
									<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
									<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
									<a href="#" data-text="Add To Cart" class="but-hover1 item_add">Add To Cart</a>
								</div>
							</div>
						</div>
					<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
				<!----->
				<!---->
				<div class="content-top">
					
					<div class="col-md-7 col-md2 animated wow fadeInLeft" data-wow-delay=".1s">
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="single.html">
											<div class="grid-img">
												<img  src="images/pr6.jpg" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="images/pr7.jpg" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="images/ll.png" alt=""></a>
									<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
									<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
									<a href="#" data-text="Add To Cart" class="but-hover1 item_add">Add To Cart</a>
								</div>
							</div>
							
						</div>
				
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="single.html">
											<div class="grid-img">
												<img  src="images/pr9.jpg" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="images/pr8.jpg" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="images/ll.png" alt=""></a>
									<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
									<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
									<a href="#" data-text="Add To Cart" class="but-hover1 item_add">Add To Cart</a>
								</div>
							</div>
						</div>
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
						<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="single.html">
											<div class="grid-img">
												<img  src="images/pr10.jpg" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="images/pr11.jpg" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="images/ll.png" alt=""></a>
									<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
									<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
									<a href="#" data-text="Add To Cart" class="but-hover1 item_add">Add To Cart</a>
								</div>
							</div>
						</div>
					<div class="clearfix"></div>
					</div>
					<div class="col-md-5 col-md1 animated wow fadeInRight" data-wow-delay=".1s">
						<div class="col-3">
							<a href="single.html"><img src="images/pi2.jpg" class="img-responsive " alt="">
							<div class="col-pic">
								<h5> Sculptures</h5>
								<p>An object to behold</p>
							</div></a>
						</div>
						
					</div>
					<div class="clearfix"></div>
				</div>
			
			
				<!--products-->
				
<%@ include file="footer.jsp" %>

