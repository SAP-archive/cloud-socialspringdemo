<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
	
<section id="connect">
<h1 class="page-header">Connect to Twitter</h1>

<form action="<c:url value="/connect/twitter" />" method="POST">
	<div class="formInfo">
		<p>
			You haven't created any connections with Twitter yet. Click the button to connect this app with your Twitter account. 
			(You'll be redirected to Twitter where you'll be asked to authorize the connection.)
		</p>
	</div>
	<p><button type="submit" class="btn">Connect</button></p>
</form>
</section>


      
      


