class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
		
		"/$year/$month/$title"(controller:"post",action:"show"){
			constraints {
				year(matches:/\d{4}/)
				month(matches:/\d{2}/)
			}
		}

        "/"(view:"/index")
        "500"(view:'/error')
	}
}
