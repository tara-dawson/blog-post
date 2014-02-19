package blog.post

class PostController {
	
	def edit = {
		def post = Post.get(params.id)
		if(!post) {
			post = new Post()
		}
		render(view:'edit', model:[post:post])
	}
	
	def view = {
		render(view:'view', model:[post:Post.get(params.id)])
	}
	
	def save = {
		def post = loadPost(params.id)
		post.properties = params
		if(post.save()) {
			flash.message = "Successfully Updated Entry."
			redirect(action:'index')
		} else {
			render(view:'edit', model:[post:post])
		}
	}	
	private loadPost(id) {
		def post = new Post();
		if(id) {
			post = Post.get(id)
		}
		return post
	}
	
	def remoteSearch = {
		def posts = Post.findAllByTitleLike("${params.value}%")
		render(template:'results', model: [value: params.value, posts: posts])
	}
	
	def search = {
		render(view:'search')
	}

    def scaffold = true
}
