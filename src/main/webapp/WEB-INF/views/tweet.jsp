<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>

<script src="http://platform.twitter.com/anywhere.js?id=7yWLgCOuQhIpPyffm0o2Vg&v=1" type="text/javascript"></script>
<script type="text/javascript">
  twttr.anywhere(function (T) {
    T(".feed").linkifyUsers();
  });    
</script>
      
<section id="tweet">
<h1 class="page-header">Tweet</h1>

<c:url var="tweetUrl" value="/twitter/tweet" />
<form action="${tweetUrl}" method="post">
	<textarea name="message" rows="2" cols="80"></textarea><br/>
	<div class="input-prepend">
	    <span class="add-on"><i class="icon-twitter"></i></span>
		<input type="submit" class="btn" value="Tweet"/>
	</div>
</form>
</section>
