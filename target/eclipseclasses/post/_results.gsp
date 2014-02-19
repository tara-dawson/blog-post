<ol>
 <g:each var="post" in="${posts}">
 <li>${post?.author} 
 <g:if test="${post.content}">- </g:if>
 ${post?.content}
 </li>
 </g:each>
</ol>