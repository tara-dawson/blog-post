<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
 <meta name="layout" content="main" />
 <title>Blog Post Find</title>
 </head>
 <body>
 
 <br/><br/>
 <h2>Post Search</h2>
 
 <g:form controller="post" method="post" >
 <input type='text' name='value' value="${value}" />
 <g:actionSubmit value="Search" />
 </g:form>
 
 Results:
 
 <ol>
 <g:each var="post" in="${posts}">
 <li>${post?.author} 
 <g:if test="${post.content}">- </g:if>
 ${post?.content}
 </li>
 </g:each>
 </ol>
 </body>
</html>