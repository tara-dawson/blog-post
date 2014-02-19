package blog.post

class Post {

	String title
	String subject
	String content
	String author
	Date lastUpdated
	Boolean published = false
	SortedSet comments
	
	static hasMany = [comments:Comment]

	static mapping = {
		sort "lastUpdated":"desc"
	}
	
	static constraints = {
		title(blank:false, nullable:false, length:1..50)
		author(blank:false, nullable:false, length:1..50)
		subject(length:0..100)
		content(maxSize:5000, blank:false, nullable:false)
		lastUpdated(nullable:true)
		published(nullable:false)
		
    }
}
