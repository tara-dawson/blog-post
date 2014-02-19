package blog.post

class CommentController {
	
	def newComment = {
		log.debug "Sending new comment form via Ajax"
	
	//	[ entryId: params.id, author: session.account ? session.account.fullName : "" ]
			// displays a new comment form
	}
	
	def preview = { 

		if (comment.hasErrors())  {
			log.debug "Missing stuff in comment..."
		}
		
		render(template: "/blog/comment", model: [comment: comment ])
				
	}

    def save = {
        def comment = new Comment(params)
        comment.dateCreated = new Date();
        comment.post = Post.get(params.postId)
		log.debug "Rendering new comment"
        if(comment.save()) {
            redirect(
                    controller:'post',
                    action:'view',
                    id:params.postId)
        } else {
            render(view:'edit',
                    model:[comment:comment,
                            postId:params.postId])
        }
    }
}
