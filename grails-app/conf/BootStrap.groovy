import blog.post.Post

class BootStrap {

    def init = { servletContext ->
		
	new Post(title:"Testing A Post Title",
			subject:"blogging",
			content:"This is a blog post created by me.",
			author:"Me",
			published:true).save()
 
	new Post(title:"Making A New Post",
			subject:"blogging some more",
			content:"This is another blog post created by me.",
			author:"You",
			published:false).save()
	
	new Post(title:"The Last Post Created",
			subject:"this is the most recent",
			content:"This post is the most recent and should be at the top of the list.",
			author:"Tara",
			published:true).save()
		
	}
    def destroy = {
    }
}
