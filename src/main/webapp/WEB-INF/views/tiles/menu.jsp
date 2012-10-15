<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="navbar" id="menu">
  <div class="navbar-inner">
    <ul class="nav">
      <li id="menuConnect"><a href="<c:url value="/connect/twitter"/>">Connect</a></li>
      <c:if test="${not empty connections}">
      <li id="menuProfile"><a href="<c:url value="/twitter" />">Profile</a></li>
      <li id="menuTimeline"><a href="<c:url value="/twitter/timeline" />">Timeline</a></li>
      <li id="menuTweet"><a href="<c:url value="/twitter/initTweet" />">Tweet</a></li>
      </c:if>
      <!-- 
      <c:if test="${empty connections}">
      <li id="menuProfile" class="disabled"><a href="#">Profile</a></li>
      <li id="menuTimeline" class="disabled"><a href="#">Timeline</a></li>
      <li id="menuTweet" class="disabled"><a href="#">Tweet</a></li>
      </c:if>
       -->
    </ul>
  </div>
</div>