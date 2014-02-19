<%@ page import="blog.post.Comment" %>



<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'comment', 'error')} ">
	<label for="comment">
		<g:message code="comment.comment.label" default="Comment" />
		
	</label>
	<g:textField name="comment" value="${commentInstance?.comment}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'post', 'error')} required">
	<label for="post">
		<g:message code="comment.post.label" default="Post" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="post" name="post.id" from="${blog.post.Post.list()}" optionKey="id" required="" value="${commentInstance?.post?.id}" class="many-to-one"/>
</div>

