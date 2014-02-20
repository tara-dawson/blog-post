<g:each in="${comments}" var="comment">
<h3>
Author:
${comment.author}
</h3>
<p>
Comment:
${comment.comment}
</p>
Posted: 
<g:formatDate date="${comment.dateCreated}" type="datetime" format="MEDIUM"/><br><br>
</g:each>
