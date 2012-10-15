<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
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

<tiles:insertAttribute name="content" />


<tiles:insertAttribute name="footer" />

	</div>
	<!-- /container -->

<tiles:insertAttribute name="js" />

</body>
</html>
