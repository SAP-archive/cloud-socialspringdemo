<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="connections" value="${connections}" scope="session" />

<section id="connect">
<h1 class="page-header">Connected to Twitter</h1>

<form id="disconnect" method="post">
	<div class="formInfo">
		<p>You are already connected to your Twitter account. Click the button below if you wish to disconnect.			
	</div>

	<button class="btn" type="submit">Disconnect</button>	
	<input type="hidden" name="_method" value="delete" />
</form>
</section>
