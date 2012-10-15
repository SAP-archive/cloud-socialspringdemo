<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title><tiles:getAsString name="title" ignore="true" /></title>
<tiles:insertAttribute name="meta" />

<tiles:insertAttribute name="stylesheets" />
</head>

<body>

<tiles:insertAttribute name="navbar" />

	<div class="container">
      <div class="row-fluid">
        <div class="span9">
			<tiles:insertAttribute name="menu" />
			
			<tiles:insertAttribute name="content" />
		</div> <!-- span -->
		<div class="span3">
			<tiles:insertAttribute name="sidebar" />
		</div> <!-- span -->
	  </div> <!-- row -->

<tiles:insertAttribute name="footer" />




	</div>
	<!-- /container -->

<tiles:insertAttribute name="js" />

	<script type="text/javascript">
	  $("#<tiles:getAsString name="activeMenu" ignore="true" />").addClass("active");
	</script>

</body>
</html>
