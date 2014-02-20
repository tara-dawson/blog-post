<%@ page import="blog.post.Post" %>



<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="post.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${postInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="post.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="author" required="" value="${postInstance?.author}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'subject', 'error')} ">
	<label for="subject">
		<g:message code="post.subject.label" default="Subject" />
		
	</label>
	<g:textField name="subject" value="${postInstance?.subject}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'content', 'error')} required">
	<label for="content">
		<g:message code="post.content.label" default="Content" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="content" cols="40" rows="5" maxlength="5000" required="" value="${postInstance?.content}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'published', 'error')} ">
	<label for="published">
		<g:message code="post.published.label" default="Published" />
		
	</label>
	<g:checkBox name="published" value="${postInstance?.published}" />
</div>
