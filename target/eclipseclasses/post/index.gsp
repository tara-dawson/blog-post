
<%@ page import="blog.post.Post" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	  <h1>Blog Posts</h1>
		<a href="#list-post" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-post" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
				
				<g:each in="${postInstanceList}" status="i" var="postInstance">
					<g:link action="show" id="${postInstance.id}">${fieldValue(bean: postInstance, field: "title")}</g:link><br/>
					
						Author: ${fieldValue(bean: postInstance, field: "author")}<br/>
					
						${fieldValue(bean: postInstance, field: "subject")}<br/>
											
						${fieldValue(bean: postInstance, field: "content")}<br/>

						Last Updated: <g:formatDate date="${postInstance.lastUpdated}" /><br/>
					
						Published: <g:formatBoolean boolean="${postInstance.published}" /><br/>
						
						<g:link controller="post" action="edit" id="${postInstance.id}">
  							Edit this post<br/>
						</g:link><br/>
					
				</g:each>
			</table>
			<div class="pagination">
				<g:paginate total="${postInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
