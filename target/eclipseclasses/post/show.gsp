
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

			<span class="property-value" aria-labelledby="author-label"><g:fieldValue
					bean="${postInstance}" field="author" /></span>

		</g:if>

		<g:if test="${postInstance?.subject}">

			<span class="property-value" aria-labelledby="subject-label"><g:fieldValue
					bean="${postInstance}" field="subject" /></span>

		</g:if>

		<g:if test="${postInstance?.content}">

			<p>
				<g:fieldValue bean="${postInstance}" field="content" />
			</p>

		</g:if>

		<g:if test="${postInstance?.lastUpdated}">

			<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate
					date="${postInstance?.lastUpdated}" type="datetime" format="SHORT"/></span>

		</g:if>

		<g:if test="${postInstance?.published}">

			<span class="property-value" aria-labelledby="published-label"><g:formatBoolean
					boolean="${postInstance?.published}" /></span>

		</g:if>

		<g:formRemote name="Comments"
			url="[controller:'comment', action: 'newComment']"
			update="comments">
			<input type="hidden" name="id" value="${postInstance?.id}"/>
			<input type="hidden" name="url" value=""/>
			<input type="hidden" name="email" value=""/>
			<label>Author: </label>
			<input type='text' name='author' value="${author}" /><br>
			<label>Comment: </label>
			<textarea name='comment' rows="2" value="${comment}">
			</textarea><br>
			<g:submitButton name="Submit" />
		</g:formRemote>

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
