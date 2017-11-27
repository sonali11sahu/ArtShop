<%@ include file="header.jsp" %>

<script>
function checkFname() {
	var fname = document.getElementById("fname");
	if (fname.value == '')
		fname.setCustomValidity("Please enter a password of minimum lenght 8");
}

function checkLname() {
	var lname = document.getElementById("lname");
	if (lname.value == '')
		lname.setCustomValidity("Please enter a password of minimum lenght 8");
}

function checkForm() {

	 //form.preventDefault();
	alert("ON SUBMIT");
	  var fname = document.getElementById("fname");
	  var lname = document.getElementById("lname");
	  var email = document.getElementById("email");
	  var password = document.getElementById("password");
	  var repassword = document.getElementById("repassword");
	  var phone = document.getElementById("phone");
	  var c =0;
	  var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	  var nform = /^\d{10}$/;
	  var str='0123456789';
	  console.log(/^\d{10}$/.test(str));
	  console.log(password.value.length);
		  ///^(\+0?1\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}$/;
	  /*var files = FS.files;

	  // If there is (at least) one file selected
	  if (files.length > 0) {
	     if (files[0].size > 75 * 1024) { // Check the constraint
	       FS.setCustomValidity("The selected file must not be larger than 75 kB");
	       return;
	     }
	  }*/
	  // No custom constraint violation
	  
	  if (fname.value == '' || lname.value == '' || email.value == '' || password.value == '')
		alert("Please fill all fields...!!!!!!");

	  if (password.value.length < 8)
		  {
		  password.setCustomValidity("Please enter a password of minimum lenght 8");
		  console.log(password.value.length);
		  c++;
		  }
	  if(!(password.value).match(repassword.value))
		  {
			  repassword.setCustomValidity("Your passwords don't match. Try again?");
			  c++;
		  }
	  if (!email.value.match(mailformat))
		  {
		  email.setCustomValidity("Please enter a valid email address");
		  c++;
		  }
		if (!phone.value.match(nform))
		  {
			phone.setCustomValidity("Please enter a valid phone number");
		  c++;
		  }
		if(c==0)  
	  {
			alert("SHOULD SUBMIT")
			document.getElementById("reg").submit();
			return true;
	  }
		else 
			return false;
	}
</script>

<!--banner-->
<div class="banner-top">
	<div class="container">
		<h2 class="animated wow fadeInLeft" data-wow-delay=".5s">Register</h2>
		<h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="index.html">Home</a><label>/</label>Register</h3>
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
		
		<form action="register" name="reg" method="post" onsubmit="return checkForm();">
			<div class="col-md-12 login-do1 animated wow fadeInLeft" data-wow-delay=".5s">
			
			
				<div class="login-mail">
					<input type="text" id="fname" id="fname" name="fname" placeholder="First Name" required onblur="checkFname();">
					
				</div>
				<div class="login-mail">
					<input type="text" id="lname" name="lname" placeholder="Last Name" required onblur="checkLname();">
				</div>
				<div class="login-mail">
					<input type="text" id="phone" name="phone" placeholder="Phone Number" required="">
					<i class="glyphicon glyphicon-phone"></i>
				</div>
				<div class="login-mail">
					<input type="text" id="email" name="email" placeholder="Email" required="">
					<i class="glyphicon glyphicon-envelope"></i>
				</div>
				<div class="login-mail">
					<input type="password" id="password" name="password" placeholder="Password" required="">
					<i class="glyphicon glyphicon-lock"></i>
				</div>
				<div class="login-mail">
					<input type="password" id="repassword" name="repassword" placeholder="Repeated password" required="">
					<i class="glyphicon glyphicon-lock"></i>
				</div>
				  <a class="news-letter" href="#">
						 <label class="checkbox1"><input type="checkbox" name="checkbox" required="required"><i> </i>I agree with the terms</label>
					   </a>
	
			</div>
			<div class="col-md-12 login-do animated wow fadeInRight" data-wow-delay=".5s">
				<label class="hvr-sweep-to-top login-sub">
					<input type="submit" value="Submit">
				</label>
					<p>Already register</p>
				<a href="login" class="hvr-sweep-to-top">Login</a>
			</div>
			<div class="clearfix"> </div>
			</form>
		</div>


	</div>
<div class="clearfix"> </div>
<%@ include file="footer.jsp" %>