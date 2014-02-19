<g:each in="${comments}" var="comment">
<h3>
${comment.author}:
</h3>
<p>
${comment.comment}:
</p>
<g:formatDate date="${comment.dateCreated}" type="datetime" format="MEDIUM"/>
</g:each>
