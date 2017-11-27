<%@ include file="header.jsp" %>

<div class="banner-top">
	<div class="container">
		<h2 class="animated wow fadeInLeft" data-wow-delay=".5s">Orders</h2>
		<h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="index.html">Home</a><label>/</label>Orders</h3>
		<div class="clearfix"> </div>
	</div>
</div>
<div class="container">
<c:forEach items="${transactions }" varStatus="i" var="order">
<p>CARD NO :: ${order.cardNo }<p>
<p>Date :: ${order.orderTime }<p>
<c:forEach items="${order.itemList.items}" var="item" varStatus="cout">
<b>${cout.index}</b><p>ITEM NAME :: ${item.name}</p> 
</c:forEach>
</c:forEach>
</div>
<%@ include file="footer.jsp" %>