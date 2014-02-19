package blog.post

class Commentator {
	
	static belongsTo = Comment
	
	String name
	String url
	String email
	Comment comment

    static constraints = {
		name(blank:false, nullable:false)
		url(blank:true, nullable:true, url:true)
		email(blank:true, nullable:true, email:true)
    }
}
