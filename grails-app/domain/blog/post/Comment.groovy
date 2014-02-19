package blog.post

class Comment implements Comparable {
	
	static belongsTo = Post
	
	String author
	String email
	String url
	Post post
	String comment
	Date dateCreated
	
	public int compareTo(Object o) {
		return o.dateCreated.compareTo(dateCreated)
	}

    static constraints = {
		
		comment(nullable:false, blank:false, maxSize:4096)
		author(nullable:false, blank:false)
		email(nullable:true, email:true, blank:true)
		url(nullable:true, url:true, blank:true)
		
    }
}
