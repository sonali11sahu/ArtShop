<%@ include file="header.jsp" %>

<!-- contact -->
	<div class="login">
		<div class="container">
		<c:if test="${!empty error}">
		<div class="error has-error help-block form-control"><c:out value="${error}"></c:out></div>
		 <c:remove var="error" scope="session" />	
		</c:if>
		<form method="post">
			<div class="col-md-6 login-do1 animated wow fadeInLeft" data-wow-delay=".5s">
				<div class="login-mail">
					<input type="text" placeholder="Email" name="email" required>
					<i class="glyphicon glyphicon-envelope"></i>
				</div>
				<div class="login-mail">
					<input type="password" placeholder="Password" name="password" required>
					<i class="glyphicon glyphicon-lock"></i>
				</div>
				   <a class="news-letter " href="#">
						 <label class="checkbox1"><input type="checkbox" name="checkbox" ><i> </i>Forgot Password</label>
					   </a>
			
			</div>
			<div class="col-md-6 login-do animated wow fadeInRight" data-wow-delay=".5s">
				<label class="hvr-sweep-to-top login-sub">
					<input type="submit" value="login">
					</label>
					<p>Do not have an account?</p>
				<a href="register" class="hvr-sweep-to-top">Signup</a>
			</div>
			
			<div class="clearfix"> </div>
			</form>

	</div>
	</div>

<%@ include file="footer.jsp" %>