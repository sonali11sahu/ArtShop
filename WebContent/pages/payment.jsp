<%@ include file="header.jsp" %>


<!--banner-->
<div class="banner-top">
	<div class="container">
		<h2 class="animated wow fadeInLeft" data-wow-delay=".5s">Payment</h2>
		<h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="index.html">Home</a><label>/</label>Payment</h3>
		<div class="clearfix"> </div>
	</div>
</div>
<!-- contact -->

<div class="login" style="padding-bottom: 20px;">
		<div class="container" >
		
		<c:if test="${!empty error}">
		<div class="error has-error help-block form-control"><c:out value="${error}"></c:out></div>
		 <c:remove var="error" scope="session" />	
		</c:if>
		
		<form action="payment" name="payment" method="post" >
			<div class="col-md-12 login-do1 animated wow fadeInLeft" data-wow-delay=".5s">
			
			<p>Shipping Details</p><br>
				<div class="login-mail">
					<input type="text" id="fname" id="fname" name="fname" placeholder="First Name" required onblur="checkFname();">
					
				</div>
				<div class="login-mail">
					<input type="text" id="lname" name="lname" placeholder="Last Name" required onblur="checkLname();">
				</div>
				<div class="login-mail">
					<input type="text" id="phone" name="phone" placeholder="Phone Number" required="">
				</div>
				<div class="login-mail">
					<input type="text" id="email" name="email" placeholder="Email" required="">
				</div>
				<div class="login-mail">
					<input type="text" id="address" name="address" placeholder="Address" required="">
				</div>
				<div class="login-mail">
					<input type="text" id="city" name="city" placeholder="City" required="">
				</div>
				<div class="login-mail">
					<input type="text" id="zip" name="zip" placeholder="Zip" required="">
				</div>
				<div class="login-mail">
					<input type="text" id="state" name="state" placeholder="State" required="">
				</div>
	
				<p>Payment Details</p><br>
					<div class="col-md-6"><div class="login-mail"><input type="text" id="card" name="card" placeholder="16 digit Card No" required=""></div></div>
					<div class="col-md-4"><div class="login-mail"><input type="text" id="expiry" name="expiry" placeholder="MM/YY" required=""></div></div>
					<div class="col-md-2"><div class="login-mail"><input type="text" id="cvv" name="cvv" placeholder="CVV" required=""></div></div>
				 
			<div class="col-md-8 login-do animated wow fadeInRight" data-wow-delay=".5s">
				<label class="hvr-sweep-to-top login-sub">
					<input type="submit" value="Submit">
				</label>
			</div>
			<div class="clearfix"> </div>
			</form>
			<br>
		</div>


	</div>
<div class="clearfix"> </div>
<%@ include file="footer.jsp" %>