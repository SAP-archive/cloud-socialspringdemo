<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

  <div class="well sidebar-nav">
    <ul class="nav nav-list">
      <li class="nav-header">Connection Status</li>
	  <c:set var="providerId" value="twitter" />     
	  <c:set var="providerDisplayName" value="${twitter.displayName}" /> 
      <c:set var="connection" value="${connections[0]}" />
      <c:if test="${not empty connections}">
			<li>
				<div class="alert alert-success">
					<i class="icon-ok-circle"></i> <strong>Connected</strong>
				</div>
			</li>
		</c:if>
		<c:if test="${empty connections}">
			
			<li>
				<div class="alert alert-error">
					<i class="icon-ban-circle"></i> <strong>Not connected</strong>
				</div>
			</li>
		</c:if>
    </ul>
  </div><!--/.well -->
     