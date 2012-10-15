<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>

<script src="http://platform.twitter.com/anywhere.js?id=7yWLgCOuQhIpPyffm0o2Vg&v=1" type="text/javascript"></script>
<script type="text/javascript">
  twttr.anywhere(function (T) {
    T(".feed").linkifyUsers();
  });    
</script>
      
<section id="timeline">
	<h1 class="page-header"><c:out value="${timelineName}"/> Timeline</h1>
	      
	<c:url var="timelineBaseUrl" value="/twitter/timeline" />
	
	<ul class="nav nav-tabs">
	<li <c:if test="${timelineName == 'Home'}"> class="active"</c:if>><a href="<c:out value="${timelineBaseUrl}"/>/Home"><i class="icon-home"></i> Home Timeline</a></li>
	<li <c:if test="${timelineName == 'User'}"> class="active"</c:if>><a href="<c:out value="${timelineBaseUrl}"/>/User"><i class="icon-share"></i> User Timeline</a></li>
	<li <c:if test="${timelineName == 'Public'}"> class="active"</c:if>><a href="<c:out value="${timelineBaseUrl}"/>/Public"><i class="icon-globe"></i> Public Timeline</a></li>
	<li <c:if test="${timelineName == 'Mentions'}"> class="active"</c:if>><a href="<c:out value="${timelineBaseUrl}"/>/Mentions"><i class="icon-user"></i> Mentions</a></li>
	<li <c:if test="${timelineName == 'Favorites'}"> class="active"</c:if>><a href="<c:out value="${timelineBaseUrl}"/>/Favorites"><i class="icon-heart"></i> Favorites</a></li>
	</ul>
	
	<div class="feed">
		<ul class="unstyled">
		<c:forEach items="${timeline}" var="tweet">
			<li>
				<div class="float: left; margin-right: 10px; margin-left: 10px;">
					<c:if test="${not empty tweet.profileImageUrl}"><img class="thumbnail" src="<c:out value="${tweet.profileImageUrl}"/>" align="left"/></c:if>
				</div>
				<div class="content" style="display: block; margin-left: 80px; min-height: 60px">
					<blockquote>
					  <c:out value="${tweet.text}" />
					  <small><a href="http://twitter.com/<c:out value="${tweet.fromUser}" />"><c:out value="${tweet.fromUser}" /></a> | <span class="postTime"><c:out value="${tweet.createdAt}"/></span></small>
					</blockquote>
				</div>
			</li>
		</c:forEach>
		</ul>
	</div>
</section>