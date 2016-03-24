class UrlMappings {

    static mappings = {


        "/"(view:"/index")
        "500"(view:'/error')
        "/login/$action?"(controller: "login")
        "/logout/$action?"(controller: "logout")

        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
    }
}
