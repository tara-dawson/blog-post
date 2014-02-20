package blog.post

class CommentController {
	
	def newComment = {
		def comment = new Comment(params)
		def post = Post.get(params.id)
		comment.setPost(post)
		comment.save()
		
		def comments = Comment.findAllByPost(post).reverse()
		render(template:'comments', model:['comments':comments])
	}

}
