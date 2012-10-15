<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>

<section id="profile">
<h1 class="page-header">Profile</h1>

<div class="float: left; margin-right: 10px;">
<img class="thumbnail" src="<c:out value="${profile.profileImageUrl}"/>"/>
</div>
<dl class="dl-horizontal">
	<dt>Name:</dt>
	<dd><c:out value="${profile.name}"/></dd>
	<dt>Twitter ID:</dt>
	<dd><c:out value="${profile.id}"/></dd>
	<dt>Screen name:</dt>
	<dd><a href="<c:out value="${profile.profileUrl}"/>" target="_blank"><c:out value="${profile.screenName}"/></a></dd>
	<dt>Description:</dt>
	<dd><c:out value="${profile.description}"/></dd>
	<dt>Location:</dt>
	<dd><c:out value="${profile.location}"/></dd>
	<dt>URL:</dt>
	<dd><a href="<c:out value="${profile.url}"/>"><c:out value="${profile.url}"/></a></dd>
</dl>
</section>
