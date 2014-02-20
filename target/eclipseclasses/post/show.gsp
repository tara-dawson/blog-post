
<%@ page import="blog.post.Post"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'post.label', default: 'Post')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
<g:javascript library="jquery" />
</head>
<body>

	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></li>
			<li><g:link class="list" action="index">
					<g:message code="default.list.label" args="[entityName]" />
				</g:link></li>
			<li><g:link class="create" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link></li>
		</ul>
	</div>
	<div id="show-post" class="content scaffold-show" role="main">
		<g:if test="${postInstance?.title}">

			<h2>
				<g:fieldValue bean="${postInstance}" field="title" />
			</h2>
		</g:if>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		

		<g:if test="${postInstance?.author}">
		<label>Author: </label>
			<span class="property-value" aria-labelledby="author-label"><g:fieldValue
			
					bean="${postInstance}" field="author" /></span><br>

		</g:if>

		<g:if test="${postInstance?.subject}">
		<label>Subject: </label>
			<span class="property-value" aria-labelledby="subject-label"><g:fieldValue
					bean="${postInstance}" field="subject" /></span><br>

		</g:if>

		<g:if test="${postInstance?.content}">

			<p>
				<g:fieldValue bean="${postInstance}" field="content" />
			</p>

		</g:if>

		<g:if test="${postInstance?.lastUpdated}">
		<label>Last Updated: </label>
			<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate
					date="${postInstance?.lastUpdated}" type="datetime" format="SHORT"/></span><br>

		</g:if>

		<g:if test="${postInstance?.published}">
		<label>Published?: </label>
			<span class="property-value" aria-labelledby="published-label"><g:formatBoolean
					boolean="${postInstance?.published}" /></span><br><br>

		</g:if>
		<h3>
		<label>Leave A Comment: </label><br><br>
		</h3>
		<g:formRemote name="Comments"
			url="[controller:'comment', action: 'newComment']"
			update="comments">
			<input type="hidden" name="id" value="${postInstance?.id}"/>
			<input type="hidden" name="url" value=""/>
			<input type="hidden" name="email" value=""/>
			<label>Author: </label>
			<input type='text' name='author' value="${author}" /><br><br>
			<label>Comment: </label>
			<textarea name='comment' rows="2" value="${comment}">
			</textarea><br>
			<g:submitButton name="Submit" />
		</g:formRemote><br><br>

	<div id="comments"><g:render template="/comment/comments" model="['comments':postInstance?.comments]"/>
	</div>


		<g:form url="[resource:postInstance, action:'delete']" method="DELETE">
			<fieldset class="buttons">
				<g:link class="edit" action="edit" resource="${postInstance}">
					<g:message code="default.button.edit.label" default="Edit" />
				</g:link>
				<g:actionSubmit class="delete" action="delete"
					value="${message(code: 'default.button.delete.label', default: 'Delete')}"
					onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</fieldset>
		</g:form>
	</div>
</body>
</html>
