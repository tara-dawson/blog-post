import blog.post.Post

class BootStrap {

    def init = { servletContext ->
		
	new Post(title:"Testing A Post Title",
			subject:"blogging",
			content:"This is a blog post created by me.",
			published:true).save()
 
 
	new Post(title:"Making A New Post",
			subject:"blogging some more",
			content:"This is another blog post created by me.",
			published:false).save()
    }
    def destroy = {
    }
}
