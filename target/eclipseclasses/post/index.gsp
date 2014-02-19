
<%@ page import="blog.post.Post" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<g:javascript library="jquery"/>
	</head>
	<body>
	  <h1 style="font-size:30px; font-weight:bold">Posts</h1>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div class="search">
		<g:formRemote name="search"
		url="[controller:'post',action:'search']"
		update="list-post">
		<div class="form-group">
		<input type="text" name="value" value="${value}"/>
		<g:submitButton name="Search"/>
		</div>
		</g:formRemote>
		</div>
		<div id="list-post" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:render template="/post/list-post" model="['postInstanceList':postInstanceList]"/>
		</div>
	</body>
</html>
