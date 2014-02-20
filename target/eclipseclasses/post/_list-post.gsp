<g:each in="${postInstanceList}" status="i" var="postInstance">
	<g:link action="show" id="${postInstance.id}" params="[year:postInstance.lastUpdated.format('yyyy'), month:postInstance.lastUpdated.format('MM'), title:postInstance.title]">
		${fieldValue(bean: postInstance, field: "title")}
	</g:link>
	<br />
					
	Author: ${fieldValue(bean: postInstance, field: "author")}<br />

	${fieldValue(bean: postInstance, field: "subject")}<br />

	${fieldValue(bean: postInstance, field: "content")}<br />

	Last Updated: <g:formatDate date="${postInstance.lastUpdated}" />
	<br />
					
	Published: <g:formatBoolean boolean="${postInstance.published}" />
	<br />

	<g:link controller="post" action="edit" id="${postInstance.id}">
  	Edit this post<br />
	</g:link>
	<br />

</g:each>
</table>
<div class="pagination">
	<g:paginate total="${postInstanceCount ?: 0}" />
</div>